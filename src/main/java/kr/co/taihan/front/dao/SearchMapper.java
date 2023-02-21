package kr.co.taihan.front.dao;

import kr.co.taihan.front.model.RcmdSearch;
import kr.co.taihan.front.model.SearchInfo;

import java.util.List;

public interface SearchMapper {

    /**
     * 추천 검색어 리스트 조회
     * @return
     */
    List<RcmdSearch> selectRcmdSchList(RcmdSearch rcmdSearch);


    /**
     * 검색 결과 리스트 조회
     * @return
     */
    List<SearchInfo> selectSearchList(SearchInfo searchInfo);

    /**
     * 태그 검색 결과 리스트 조회
     * @param searchInfo
     * @return
     */
    List<SearchInfo> selectSearchTagList(SearchInfo searchInfo);
}
