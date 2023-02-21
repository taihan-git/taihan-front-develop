package kr.co.taihan.front.model;

import lombok.Data;
import lombok.EqualsAndHashCode;

@Data
@EqualsAndHashCode(callSuper=false)
public class Privacy {


    private String idx;
    private String title;
    private String lang = "ko";
    private String content;

    private String delYn;
    private String regIdx;
    private String regDt;
    private String updIdx;
    private String updDt;
    private String regId;

    private String mode;
    private String schIdx;
    private String schTitle;

}
