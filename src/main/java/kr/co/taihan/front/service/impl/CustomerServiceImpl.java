package kr.co.taihan.front.service.impl;

import kr.co.taihan.front.common.exception.BizException;
import kr.co.taihan.front.common.mail.MailDto;
import kr.co.taihan.front.common.util.CommonUtils;
import kr.co.taihan.front.common.util.MessageUtils;
import kr.co.taihan.front.common.util.RequestUtils;
import kr.co.taihan.front.common.util.file.FileMeta;
import kr.co.taihan.front.common.util.file.FileUpload;
import kr.co.taihan.front.common.util.page.PageNavigatorDefault;
import kr.co.taihan.front.dao.CustomerMapper;
import kr.co.taihan.front.model.*;
import kr.co.taihan.front.model.enums.CatalogCodeType;
import kr.co.taihan.front.model.enums.EmailAdmin;
import kr.co.taihan.front.model.enums.ReportType;
import kr.co.taihan.front.service.CustomerService;
import lombok.RequiredArgsConstructor;
import lombok.extern.slf4j.Slf4j;
import org.apache.commons.lang3.ArrayUtils;
import org.apache.commons.lang3.StringUtils;
import org.springframework.beans.factory.annotation.Value;
import org.springframework.context.ApplicationEventPublisher;
import org.springframework.context.support.MessageSourceAccessor;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import java.io.UnsupportedEncodingException;
import java.lang.reflect.Array;
import java.net.URLEncoder;
import java.time.LocalDateTime;
import java.time.format.DateTimeFormatter;
import java.util.*;
import java.util.stream.Collectors;

@Service
@Slf4j
@RequiredArgsConstructor
public class CustomerServiceImpl implements CustomerService {

    private final CustomerMapper customerMapper;
    private final ApplicationEventPublisher applicationEventPublisher;
    private final MessageSourceAccessor messageSourceAccessor;

    @Value("${app.upload-path}")
    private String uploadPath;


    @Value("${spring.config.activate.on-profile}")
    private String serverType;

    @Override
    public List<Qna> getCategoryList(Qna param) {
        return customerMapper.selectQnaCategoryList(param);
    }


    @Override
    @Transactional(rollbackFor = Exception.class)
    public void saveQna(Qna param) {

        String savePath = MessageUtils.getMessage("con.file.qna.path");
        String dir = uploadPath + savePath;
        FileUpload fu = new FileUpload(dir);


        //파일저장(등록 및 수정)
        if(fu.existFile(param.getPcFile())){
            try {
                FileMeta meta = fu.singleFileUpload(param.getPcFile(),"pdf,jpg,jpeg,png,gif");
                param.setOrgPcFile(meta.getFileName());
                param.setSysPcFile(savePath+meta.getFileSaveName());
            } catch (Exception e) {
                logger.info("METHOD_saveQna() ERROR :: {} ",e.getMessage());
                throw new BizException("1:1문의 파일 등록 에러");
            }
        }

        param.setUserIp(CommonUtils.getIP(RequestUtils.getRequest()));
        //1:1문의 데이터 저장
        customerMapper.saveQna(param);

        //메일 발행
        if(!"loc".equals(serverType)){
            //문의자에게 메일 전송 이벤트 발행
            applicationEventPublisher.publishEvent(getMailDto(param,"1"));

            if("prd".equals(serverType)) {
                //관리자에게 메일 전송 이벤트 발행
                String[] adminMails = setAdminMails(param);
                if (ArrayUtils.isNotEmpty(adminMails)) {
                    for (String adminMail : adminMails) {
                        param.setAdminMail(adminMail);
                        applicationEventPublisher.publishEvent(getMailDto(param, "2"));
                    }
                }
            }else{
                //개발서버 메일 확인 테스터
                String[] testers = new String[]{"haley.kim@d2.co.kr","natalie.kim@d2.co.kr"};
                for (String tester : testers) {
                    param.setAdminMail(tester);
                    applicationEventPublisher.publishEvent(getMailDto(param, "2"));
                }
            }
        }
    }



    @Override
    public Map<String, Object> getAgencyList(Agency param) {

        Map<String,Object> map = new HashMap<>();

        //default 전체로 세팅
        if(StringUtils.isEmpty(param.getSchArea())){
            param.setSchArea("");
        }
        map.put("areaList",customerMapper.selectAgencyAreaList(param));
        map.put("productList",customerMapper.selectAgencyProductList(param));
        map.put("agencyList",customerMapper.selectAgencyList(param));

        return map;
    }


    @Override
    public Map<String, List<Catalog>> getCatalogueList(Catalog catalog) {

        catalog.setLang(CommonUtils.getLang());

        //카탈로그 전체 리스트
        List<Catalog> totalList = customerMapper.selectCatalogList(catalog);

        //카탈로그 품목별세팅
        Map<String, List<Catalog>> groupingList = totalList.stream()
                .map(o -> {
                    o.setViewNm(CatalogCodeType.getViewNm(o.getProdCateId()));
                    return o;
                })
                .collect(Collectors.groupingBy(Catalog::getViewNm));
        return groupingList;
    }


    @Override
    public Map<String, Object> getCertDataList(Qc param) {

        Map<String,Object> map = new HashMap<>();
        param.setLang(CommonUtils.getLang());

        //납세 증명서 최신본
        Report report = new Report();
        report.setLang(CommonUtils.getLang());
        report.setReportType(ReportType.TAX.getCode());

        Report tax = customerMapper.selectReportList(report).stream()
                .findFirst().orElseGet(() -> new Report());

        //인증자료 리스트
        List<Qc> certDataList = customerMapper.selectCertDataList(param);

        //인증자료 컨텐츠별 세팅
        Map<String, List<Qc>> groupingList = certDataList.stream()
                .map(o -> {
                    switch (o.getQcCate()){
                        case "1":
                            o.setViewNm("qualityCert");
                            break;
                        case "2":
                            o.setViewNm("envirCert");
                            break;
                        case "3":
                            o.setViewNm("safetyCert");
                            break;
                    }
                    return o;
                }).collect(Collectors.groupingBy(Qc::getViewNm));

        map.put("tax", tax);
        map.put("envirCertList",groupingList.get("envirCert"));
        map.put("qualityCertList",groupingList.get("qualityCert"));
        map.put("safetyCertList",groupingList.get("safetyCert"));
        return map;
    }


    @Override
    public Map<String, Object> getReportList(Report param) {
        param.setLang(CommonUtils.getLang());
        param.setRowSize(10);

        Map<String,Object> map = new HashMap<>();

        int totalCount = customerMapper.selectReportListCnt(param);
        map.put("totalCount",totalCount);

        if(totalCount > 0){
            PageNavigatorDefault navi = new PageNavigatorDefault(param.getPageNo(), totalCount, param.getRowSize(), param.getBlockSize());
            map.put("navi", navi);
            List<Report> list = customerMapper.selectReportList(param);
            map.put("list", list);
        }
        return map;
    }

    /* div : 1 유저 , 2 : 관리자 */
    private MailDto getMailDto(Qna qna, String div){

        String lang = CommonUtils.getLang();

        MailDto mailDto = new MailDto();
        mailDto.setName(qna.getName());
        mailDto.setEmail(qna.getEmail());
        mailDto.setTel(qna.getTel());
        mailDto.setPhone(qna.getPhone());
        mailDto.setCompany(qna.getCompany());
        mailDto.setTitle(qna.getTitle());
        mailDto.setMessage(qna.getMemo());
        mailDto.setMailType("1");
        
        if(StringUtils.isNotEmpty(qna.getOrgPcFile())){
        	//기존 첨부파일명
        	mailDto.setFilenames(Arrays.asList(qna.getOrgPcFile()));
        	
        	List<Map<String, Object>> listMap = new ArrayList<Map<String, Object>>();
			// [Map 객체 생성 및 데이터 생성]
			Map<String, Object> map = new LinkedHashMap<String, Object>();
			
			map.put("orgFileName",qna.getOrgPcFile());
			map.put("sysFileName", qna.getSysPcFile());
			map.put("encodeOrgFileName", encodeURIComponent(qna.getOrgPcFile()));
			map.put("encodeSysFileName", encodeURIComponent(qna.getSysPcFile()));
			
			// [List Map 에 배열에 데이터 삽입 실시]
			listMap.add(map);
			
            mailDto.setFileNms(listMap);
        }

        switch (div){
            case "1":
                mailDto.setSubject("ko".equalsIgnoreCase(lang) ?  "문의하신 내용이 접수되었습니다." : "Your inquiry has been received.");
                mailDto.setToType("user");
                mailDto.setTo(qna.getEmail());
            break;
            case "2":
                mailDto.setSubject("ko".equalsIgnoreCase(lang) ? "새로운 문의가 접수되었습니다." : "A new inquiry has been received.");
                mailDto.setToType("admin");
                mailDto.setTo(qna.getAdminMail()); //TODO 관리자에게
                mailDto.setUrlParam(qna.getMuid()+"");
            break;
        }

        mailDto.setInquiryTypeTxt(qna.getInquiryTypeTxt());

        String inqquiryDay = "ko".equals(lang) ? LocalDateTime.now().format(DateTimeFormatter.ofPattern("yyyy년 MM월 dd일 HH시 mm분 ss초")) :
                LocalDateTime.now().format(DateTimeFormatter.ofPattern("MMM / dd / yyyy , HH : mm : ss").withLocale(Locale.ENGLISH));
        mailDto.setInquiryDay(inqquiryDay);
        mailDto.setLang(lang);
        mailDto.setServerType(serverType);
        return mailDto;
    }


    private String[] setAdminMails(Qna param) {
        String[] adminMails;
        if(StringUtils.isNotEmpty(param.getUto2())){
            if("en_inqu_0101".equalsIgnoreCase(param.getUto2())){
                adminMails = EmailAdmin.getMailAddrsFromCode(param.getContinent());
            }else{
                adminMails = EmailAdmin.getMailAddrsFromCode(param.getUto2());
            }
        }else{
            adminMails = EmailAdmin.getMailAddrsFromCode(param.getUto1());
        }
        return adminMails;
    }
    
    private String encodeURIComponent(String name) {

    	String result = null;

    	try{
    	  result = URLEncoder.encode(name, "UTF-8")
    						 .replaceAll("\\+", "%20")
    						 .replaceAll("\\%21", "!")
    						 .replaceAll("\\%27", "'")
    						 .replaceAll("\\%28", "(")
    						 .replaceAll("\\%29", ")")
    						 .replaceAll("\\%7E", "~");
    	}catch (UnsupportedEncodingException e){
			result = name;
			}
    	
    	return result;

    }
}