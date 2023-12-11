package kr.co.taihan.front.service.impl;

import kr.co.taihan.front.common.exception.BizException;
import kr.co.taihan.front.common.mail.InquiryReportDto;
import kr.co.taihan.front.common.mail.MailDto;
import kr.co.taihan.front.common.util.CommonUtils;
import kr.co.taihan.front.common.util.CryptoManager;
import kr.co.taihan.front.common.util.MessageUtils;
import kr.co.taihan.front.common.util.RequestUtils;
import kr.co.taihan.front.common.util.file.FileMeta;
import kr.co.taihan.front.common.util.file.FileUpload;
import kr.co.taihan.front.dao.EsgMapper;
import kr.co.taihan.front.model.Inquiry;
import kr.co.taihan.front.model.InquiryFile;
import kr.co.taihan.front.service.EsgService;
import lombok.RequiredArgsConstructor;
import lombok.extern.slf4j.Slf4j;
import org.apache.commons.lang3.ObjectUtils;
import org.apache.commons.lang3.StringUtils;
import org.springframework.beans.factory.annotation.Value;
import org.springframework.context.ApplicationEventPublisher;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;
import org.springframework.web.multipart.MultipartFile;

import java.time.LocalDateTime;
import java.time.format.DateTimeFormatter;
import java.util.HashMap;
import java.util.Locale;
import java.util.Map;

@Service
@Slf4j
@RequiredArgsConstructor
public class EsgServiceImpl implements EsgService {

    private final EsgMapper esgMapper;
    private final ApplicationEventPublisher applicationEventPublisher;

    @Value("${app.upload-path}")
    private String uploadPath;

    @Value("${spring.config.activate.on-profile}")
    private String serverType;



    @Override
    @Transactional
    public Inquiry saveInquiry(Inquiry param) {

        String registNum;

        //접수번호 중복 여부 체크 후 세팅
        while(true){
            registNum = CommonUtils.createRandomString(8, "n");;
            int count = esgMapper.selectCheckRegistNumDuplicate(registNum);
            if(count == 0){
                param.setRegistNum(registNum);
                break;
            }
        }



        param.setUserIp(CommonUtils.getIP(RequestUtils.getRequest()));
        param.setPassword(CryptoManager.encryptSha1(param.getPassword()));

        esgMapper.insertInquiryReport(param);

        //첨부 파일 등록
        if(ObjectUtils.isNotEmpty(param.getFiles())){
            String savePath = MessageUtils.getMessage("con.file.inqReport.path");
            String dir = uploadPath + savePath;
            FileUpload fu = new FileUpload(dir);

            for (MultipartFile file : param.getFiles()) {
                if(fu.existFile(file)){
                    FileMeta meta = null;
                    try {
                        meta = fu.singleFileUpload(file,getInquiryReportAllowExts());
                        InquiryFile inquiryFile = new InquiryFile();
                        inquiryFile.setRegistNum(param.getRegistNum());
                        inquiryFile.setOrgFile(meta.getFileName());
                        inquiryFile.setSysFile(savePath+meta.getFileSaveName());
                        esgMapper.insertInquiryReportFile(inquiryFile);
                    } catch (Exception e) {
                        throw new BizException("saveInquiry file save error");
                    }
                }
            }
        }


        //이벤트 발행
        if(!"loc".equals(serverType)){
            //실명으로 제보시 메일 발행
            if("real".equalsIgnoreCase(param.getType())) {
                //제보자에게 메일 전송 이벤트 발행
                applicationEventPublisher.publishEvent(getMailDto(param,"1"));
            }

                if("prd".equals(serverType)){
                    //관리자에게 메일 전송 이벤트 발행
                    String[] adminMails = null;
                    //em 윤리경영 : cp 공정거래
                    if("em".equals(param.getGubun())){
                        adminMails = new String[]{"ethics@taihan.com", "open7954@taihan.com","ymkang@taihan.com","kcjyhm@taihan.com"};
                    }else if("cp".equals(param.getGubun())){
                        adminMails = new String[]{"compliance@taihan.com", "eunsukoh@taihan.com","lkshkshl@taihan.com"};
                    }
                    if(adminMails != null){
                        for (String adminMail : adminMails) {
                            param.setAdminMail(adminMail);
                            applicationEventPublisher.publishEvent(getMailDto(param,"2"));

                        }
                    }
                }else{
                    //개발서버 메일 확인 테스터
//                    String[] testers = new String[]{"haley.kim@d2.co.kr","natalie.kim@d2.co.kr","levi.lee@d2.co.kr"};
                    String[] testers = new String[]{"soro.java@gmail.com","dgkim@soroweb.co.kr"};
                    for (String tester : testers) {
                        param.setAdminMail(tester);
                        applicationEventPublisher.publishEvent(getMailDto(param,"2"));
                    }
                }
        }

        return new Inquiry(registNum);
    }

    private MailDto getMailDto(Inquiry param, String div) {
        MailDto dto = new MailDto();
        dto.setRegistNum(param.getRegistNum());
        dto.setGubun(param.getGubun());
        dto.setName(param.getName());
        dto.setPhone(param.getPhone());
        dto.setEmail(param.getEmail());
        dto.setServerType(serverType);
        dto.setLang(param.getLang());

        String inqquiryDay = "ko".equals(CommonUtils.getLang()) ? LocalDateTime.now().format(DateTimeFormatter.ofPattern("yyyy년 MM월 dd일 HH시 mm분 ss초")) :
                LocalDateTime.now().format(DateTimeFormatter.ofPattern("MMM / dd / yyyy , HH : mm : ss").withLocale(Locale.ENGLISH));
        dto.setInquiryDay(inqquiryDay);

        if("ko".equals(param.getLang())){
            switch (div){
                case "1":
                    dto.setSubject("em".equals(param.getGubun()) ? "윤리경영 제보하기가 접수되었습니다." : "공정거래 제보하기가 접수되었습니다.");
                    dto.setToType("user");
                    dto.setTo(param.getEmail());
                    break;
                case "2":
                    dto.setSubject("새로운 제보가 접수되었습니다.");
                    dto.setToType("admin");
                    dto.setTo(param.getAdminMail()); //TODO 관리자에게
                    dto.setUrlParam(param.getIdx()+"");
                    break;
            }
        }
        if("en".equals(param.getLang())){
            switch (div){
                case "1":
                    dto.setSubject("em".equals(param.getGubun()) ? "Your report about ethical management has been submitted." : "Your report about fair trade has been submitted.");
                    dto.setToType("user");
                    dto.setTo(param.getEmail());
                    break;
                case "2":
                    dto.setSubject("새로운 제보가 접수되었습니다.");
                    dto.setToType("admin");
                    dto.setTo(param.getAdminMail()); //TODO 관리자에게
                    dto.setUrlParam(param.getIdx()+"");
                    break;
            }
        }
        return dto;
    }


    @Override
    public void inquireLoginCheck(Inquiry inquiry) {

        Inquiry item = esgMapper.selectInquiryReport(inquiry);

        if(ObjectUtils.isEmpty(item)){
            throw new BizException("numcheck");
        }

        if(StringUtils.isEmpty(inquiry.getPassword())){
            throw new BizException("emptyPw");
        }

        if(!CryptoManager.matchesSha1(inquiry.getPassword(),item.getPassword())){
            throw new BizException("pwcheck");
        }
    }


    @Override
    public Map<String, Object> inquireLogin(Inquiry inquiry) {

        Map<String,Object> map = new HashMap<>();

        Inquiry item = esgMapper.selectInquiryReport(inquiry);

        if(CryptoManager.matchesSha1(inquiry.getPassword(),item.getPassword())){
            item.setInquiryFiles(esgMapper.selectInquiryFileList(item));
            map.put("item",item);
        }
        return map;
    }


    private String getInquiryReportAllowExts(){
        return "gif,jpg,png,doc,docx,xls,xlsx,ppt,pptx,pdf,zip,hwp,mp3,mp4,avi,wmv";
    }

}
