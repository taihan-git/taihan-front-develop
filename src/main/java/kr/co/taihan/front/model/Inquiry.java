package kr.co.taihan.front.model;

import kr.co.taihan.front.model.search.Search;
import lombok.Data;
import lombok.EqualsAndHashCode;
import org.springframework.web.multipart.MultipartFile;

import java.util.List;

@Data
@EqualsAndHashCode(callSuper = false)
public class Inquiry extends Search {

    public Inquiry(){}

    public Inquiry(String registNum) {
        this.registNum = registNum;
    }

    private int idx;
    private String registNum;
    private String type;
    private String title;
    private String reportMemo;
    private String status;
    private String name;
    private String email;
    private String phone;
    private String regDate;
    private String responName;
    private String responMemo;
    private String responDate;
    private String password;
    private String gubun; //em 윤리경영 : cp 공정거래
    private String userIp;
    private String adminMail;



    MultipartFile[] files;
    List<InquiryFile> inquiryFiles;



}
