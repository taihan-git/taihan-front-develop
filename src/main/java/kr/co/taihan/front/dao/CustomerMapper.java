package kr.co.taihan.front.dao;

import kr.co.taihan.front.model.*;

import java.util.List;

public interface CustomerMapper {

    /**
     *  1:1 문의 카테고리 리스트 조회
     * @param param
     * @return
     */
    List<Qna> selectQnaCategoryList(Qna param);

    /**
     * 1:1 문의 등록
     * @param param
     */
    void saveQna(Qna param);


    /**
     * 대리전 리스트 조회
     * @param param
     * @return
     */
    List<Agency> selectAgencyList(Agency param);

    /**
     * 대리전 지역 리스트 조회
     * @param param
     * @return
     */
    List<Agency> selectAgencyAreaList(Agency param);

    /**
     * 대리전 품목 리스트 조회
     * @param param
     * @return
     */
    List<Agency> selectAgencyProductList(Agency param);

    /**
     * 카탈로그 리스트 조회
     */
    List<Catalog> selectCatalogList(Catalog param);

    /**
     * 인증 자료 리스트 조회
     * @param param
     * @return
     */
    List<Qc> selectCertDataList(Qc param);

    /**
     * 자료실 > 리스트 조회
     * @param report
     * @return
     */
    List<Report> selectReportList(Report report);

    /**
     * 자료실 리스트 카운트 조회
     * @param report
     * @return
     */
    int selectReportListCnt(Report report);
}
