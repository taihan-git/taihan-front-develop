package kr.co.taihan.front.model;

import kr.co.taihan.front.model.search.Search;
import lombok.Data;
import lombok.EqualsAndHashCode;
import org.springframework.web.multipart.MultipartFile;


@Data
@EqualsAndHashCode(callSuper = false)
public class NoticePopup extends Search {

    public NoticePopup(){}

    public NoticePopup(String lang, String channel) {
        this.lang = lang;
        this.channel = channel;
    }

    private String idx;
    private String title;
    private String lang = "ko";
    private String orgPcImgFile;
    private String sysPcImgFile;
    private String btnLink;
    private String btnLinkTarget;

    private String ord;
    private String displayYn;
    private String delYn;
    private String regIdx;
    private String regDt;
    private String updIdx;
    private String updDt;

    private String dispStDay;
    private String dispStHh;
    private String dispStMm;
    private String dispEdDay;
    private String dispEdHh;
    private String dispEdMm;
    private String dispStDt;
    private String dispEdDt;
    private String schDispStDt;
    private String schDispEdDt;
    private String channel;
    private String imgText;

    private String delChkYn;

    private MultipartFile pcImgFile;


}
