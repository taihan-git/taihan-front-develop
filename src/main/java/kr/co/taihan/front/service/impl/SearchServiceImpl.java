package kr.co.taihan.front.service.impl;

import kr.co.taihan.front.common.util.CommonUtils;
import kr.co.taihan.front.common.util.page.PageNavigatorDefault;
import kr.co.taihan.front.dao.SearchMapper;
import kr.co.taihan.front.model.RcmdSearch;
import kr.co.taihan.front.model.SearchInfo;
import kr.co.taihan.front.model.SearchInfo.TagInfo;
import kr.co.taihan.front.service.SearchService;
import lombok.RequiredArgsConstructor;
import lombok.extern.slf4j.Slf4j;
import org.apache.commons.lang3.ObjectUtils;
import org.apache.commons.lang3.StringUtils;
import org.springframework.stereotype.Service;

import java.util.*;
import java.util.stream.Collectors;

import static java.util.stream.Collectors.groupingBy;

@Service
@Slf4j
@RequiredArgsConstructor
public class SearchServiceImpl implements SearchService {

    private final SearchMapper searchMapper;

    @Override
    public List<RcmdSearch> rcmdSearchList(RcmdSearch rcmdSearch) {
        rcmdSearch.setLang(CommonUtils.getLang());
        return searchMapper.selectRcmdSchList(rcmdSearch);
    }


    @Override
    public Map<String, Object> searchList(SearchInfo param) {

        param.setLang(StringUtils.isEmpty(CommonUtils.getLang()) ? "ko" : CommonUtils.getLang().toLowerCase());
        param.setRowSize(10);
        
        Map<String,Object> map = new HashMap<>();
        List<SearchInfo> searchTotalList = new ArrayList<>();

        switch (param.getSchType()) {
            case "total": //통합검색
                //통합검색 검색어 공백제거
                String schKey = param.getSchKey();
                param.setSchKey(param.getSchKey().replaceAll(" ", ""));
                if(StringUtils.isEmpty(param.getSchKey()) || param.getSchKey().trim().length() == 0){
                    return null;
                }
                searchTotalList = searchMapper.selectSearchList(param);
                //통합검색 검색어 공백 
                param.setSchKey(schKey);
                break;
            case "tag":   //태그검색
                if(StringUtils.isEmpty(param.getSchTagIdx())){
                    return null;
                }
                searchTotalList = searchMapper.selectSearchTagList(param);
                break;
        }
        

        //검색 그룹별 카운팅
        Map<String, Long> cntMap = searchTotalList.stream().collect(groupingBy(SearchInfo::getTopTitle1, Collectors.counting()));

        //그룹별 카운팅 수를 return할 map에 세팅
        setCountings(map, searchTotalList, cntMap);

        String schMode = StringUtils.isEmpty(param.getMode()) ? "all" : param.getMode();

        // pageNo 1,0 = 0,  pagenO 2 =  10 ,  pageNo = 3 -> 20 , pageNo = 4 -> 30 형식으로 세팅
        int pageNo = param.getPageNo() > 1 ? (param.getPageNo() -1) * 10 : 0;

        int totalCount = 0;
        switch (schMode){
            case "news":
                totalCount = (int) map.get("newsCnt");
                generateListBody(param, map, searchTotalList, pageNo, totalCount,"NEWS");
                break;
            case "customer":
                totalCount = (int) map.get("customerCnt");
                generateListBody(param, map, searchTotalList, pageNo, totalCount,"CUSTOMER");
                break;
            case "business":
                totalCount = (int) map.get("businessCnt");
                generateListBody(param, map, searchTotalList, pageNo, totalCount,"BUSINESS");
                break;
            case "company":
                totalCount = (int) map.get("companyCnt");
                generateListBody(param, map, searchTotalList, pageNo, totalCount,"COMPANY");
                break;
            case "esg":
                totalCount = (int) map.get("esgCnt");
                generateListBody(param, map, searchTotalList, pageNo, totalCount,"ESG");
                break;
            case "all":
                totalCount = (int) map.get("totalCnt");
                generateListBody(param, map, searchTotalList, pageNo, totalCount,"ALL");
                break;
        }
        
        return map;
    }

    private void setCountings(Map<String, Object> map, List<SearchInfo> searchTotalList, Map<String, Long> cntMap) {
        map.put("totalCnt", searchTotalList.stream().filter(o -> !"OTHERS".equalsIgnoreCase(o.getTopTitle1())).collect(Collectors.toList()).size());
        map.put("newsCnt", ObjectUtils.isEmpty(cntMap.get("NEWS")) ? 0 : Integer.parseInt(cntMap.get("NEWS").toString()));
        map.put("customerCnt", ObjectUtils.isEmpty(cntMap.get("CUSTOMER")) ? 0 : Integer.parseInt(cntMap.get("CUSTOMER").toString()));
        map.put("businessCnt", ObjectUtils.isEmpty(cntMap.get("BUSINESS")) ? 0 :Integer.parseInt(cntMap.get("BUSINESS").toString()));
        map.put("companyCnt", ObjectUtils.isEmpty(cntMap.get("COMPANY")) ? 0 : Integer.parseInt(cntMap.get("COMPANY").toString()));
        map.put("esgCnt", ObjectUtils.isEmpty(cntMap.get("ESG")) ? 0 : Integer.parseInt(cntMap.get("ESG").toString()));
    }

    private void generateListBody(
            SearchInfo param,
            Map<String, Object> map,
            List<SearchInfo> searchTotalList,
            int pageNo,
            int totalCount,
            String schGroup
    ) {

        if (totalCount <= 0) {
            return;
        }

        if ("ALL".equals(schGroup)) { //전체
            map.put("list",
                    searchTotalList.stream()
                            .map(this::setTagData)
                            .sorted(Comparator.reverseOrder())
                            .skip(pageNo)
                            .limit(10)
                            .collect(Collectors.toList())
                    );
        }

        else { //필터랑 할 그룹이 있을때
            map.put(
                    "list",
                    searchTotalList.stream()
                            .filter(o -> schGroup.equalsIgnoreCase(o.getTopTitle1()))
                            .map(this::setTagData)
                            .sorted(Comparator.reverseOrder())
                            .skip(pageNo)
                            .limit(10)
                            .collect(Collectors.toList())
                    );
        }

        map.put("navi", new PageNavigatorDefault(param.getPageNo(), totalCount, param.getRowSize(), param.getBlockSize()));
    }


    private SearchInfo setTagData(SearchInfo o){

        //(태그명1_태그idx, 태그명2_태그idx) 해당 구조를 알맞게 세팅한다.
        if(StringUtils.isNotEmpty(o.getTagInfoList())){

            String[] tagInfoArr = o.getTagInfoList().split(",");
            List<TagInfo> tags = new ArrayList<>();

            for(String tagFragment : tagInfoArr){
                tags.add(new TagInfo(tagFragment.split("_")[0],tagFragment.split("_")[1]));
            }

            o.setViewTags(tags);
        }

        return o;
    }
}
