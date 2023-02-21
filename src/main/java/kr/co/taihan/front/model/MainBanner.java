package kr.co.taihan.front.model;


import kr.co.taihan.front.model.search.Search;
import lombok.Data;
import lombok.EqualsAndHashCode;
import org.springframework.web.multipart.MultipartFile;

import java.util.List;

@Data
@EqualsAndHashCode(callSuper = true)
public class MainBanner extends Search {
    public MainBanner() {
    }
    public MainBanner(String idx) {
        this.idx = idx;
    }

    public MainBanner(String lang,String channel) {
        this.lang = lang;
        this.channel = channel;
    }

    public MainBanner(boolean isDel1, boolean isDel2, boolean isDel3, String idx) {
        this.isDel1 = isDel1;
        this.isDel2 = isDel2;
        this.isDel3 = isDel3;
        this.idx = idx;
    }

    private String idx;
    private String title;
    private String lang = "ko";
    private String contType;
    private String orgPcImgFile;
    private String sysPcImgFile;
    private String orgMoImgFile;
    private String sysMoImgFile;
    private String orgVideoFile;
    private String sysVideoFile;
    private String mungu1;
    private String mungu2;
    private String btnDspYn;
    private String btnTitle;
    private String btnLink;
    private List<String> munguList;
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

    private boolean sort;

    private boolean isDel1;
    private boolean isDel2;
    private boolean isDel3;

    private MultipartFile pcImgFile;
    private MultipartFile moImgFile;
    private MultipartFile videoFile;

}
