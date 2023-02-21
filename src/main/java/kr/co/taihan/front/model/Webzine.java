package kr.co.taihan.front.model;

import kr.co.taihan.front.model.search.Search;
import lombok.Data;
import lombok.EqualsAndHashCode;
import org.springframework.web.multipart.MultipartFile;

@Data
@EqualsAndHashCode(callSuper = false)
public class Webzine extends Search {

    public Webzine(){};

    private String schRegStartDt;
    private String schRegEndDt;
    private String title;
    private String displayYn;
    private String topFixYn;
    private String regDt;
    private String regId;
    private String hits;
    private String idx;
    private String regIdx;
    private String delYn;
    private String orgThumImgFile;
    private String sysThumImgFile;
    private String thumImgText;
    private String mungu1;
    private String mungu1Url;
    private String mungu2;
    private String mungu2Url;
    private String mungu3;
    private String mungu3Url;
    private String mode;
    private String delChkYn;
    private String schKey2;
    private String year;
    private String url;
    private boolean findAll;

    private MultipartFile thumImgFile;

}
