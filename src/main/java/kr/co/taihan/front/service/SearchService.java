package kr.co.taihan.front.service;

import kr.co.taihan.front.model.RcmdSearch;
import kr.co.taihan.front.model.SearchInfo;

import java.util.Collection;
import java.util.List;
import java.util.Map;

public interface SearchService {

    /**
     * 추천 검색어 리스트 조회
     * @return
     */
    List<RcmdSearch> rcmdSearchList(RcmdSearch rcmdSearch);

    /**
     * 검색 결과 리스트 조회(통합,태그)
     * @param param
     * @return
     */
    Map<String, Object> searchList(SearchInfo param);
}
