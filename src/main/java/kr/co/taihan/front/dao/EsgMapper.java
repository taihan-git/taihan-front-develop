package kr.co.taihan.front.dao;


import kr.co.taihan.front.model.Inquiry;
import kr.co.taihan.front.model.InquiryFile;

import java.util.List;

public interface EsgMapper {


    /**
     * 접수 번호 중복여부 체크
     * @param inquiry
     * @return
     */
    int selectCheckRegistNumDuplicate(String param);

    /**
     * 접수 조회
     */
    Inquiry selectInquiryReport(Inquiry inquiry);


    /**
     * 접수 첨부 파일 리스트 조회
     * @param inquiry
     * @return
     */
    List<InquiryFile> selectInquiryFileList(Inquiry inquiry);

    /**
     * 접수 등록
     * @param inquiry
     */
    void insertInquiryReport(Inquiry inquiry);

    /**
     * 접수 파일 등록
     */
    void insertInquiryReportFile(InquiryFile inquiryFile);

}
