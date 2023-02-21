package kr.co.taihan.front.model;

import kr.co.taihan.front.model.search.Search;
import lombok.Data;
import lombok.EqualsAndHashCode;
import org.springframework.web.multipart.MultipartFile;

@Data
@EqualsAndHashCode(callSuper = false)
public class IrNotice extends Search {

    public IrNotice(){};

    private String schRegStartDt;
    private String schRegEndDt;
    private String title;
    private String displayYn;
    private String regDt;
    private String regId;
    private String hits;
    private String idx;
    private String regIdx;
    private String delYn;
    private String delChk;
    private String orgFile;
    private String sysFile;
    private String schKey2;
    private String content;
    private String lang;
    private String type;
    private String mode;
    private String rowNum;
    private MultipartFile file;
}
