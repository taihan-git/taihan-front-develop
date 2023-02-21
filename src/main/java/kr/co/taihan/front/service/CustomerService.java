
package kr.co.taihan.front.service;


import kr.co.taihan.front.model.*;

import java.util.Collection;
import java.util.List;
import java.util.Map;

public interface CustomerService {

    /**
     * 1:1 문의 카테고리 조회
     * @return
     */
    List<Qna> getCategoryList(Qna param);

    /**
     * 1:1 문의 등록
     * @param param
     */
    void saveQna(Qna param);

    /**
     * 대리점 리스트
     * @param param
     * @return
     */
    Map<String,Object> getAgencyList(Agency param);

    /**
     * 카탈로그 리스트
     * @param catalog
     * @return
     */
    Map<String,List<Catalog>> getCatalogueList(Catalog catalog);

    /**
     * 인증 자료 리스트
     * @param param
     * @return
     */
    Map<String,Object> getCertDataList(Qc param);

    /**
     * ir * pr 자료 리스트
     * @param param
     * @return
     */
    Map<String, Object> getReportList(Report param);
}
