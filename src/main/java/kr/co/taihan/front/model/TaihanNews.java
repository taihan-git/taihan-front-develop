package kr.co.taihan.front.model;

import kr.co.taihan.front.model.search.Search;
import lombok.Data;
import lombok.EqualsAndHashCode;

@Data
@EqualsAndHashCode(callSuper = false)
public class TaihanNews extends Search {

    public TaihanNews(){};

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
    private String content;
    private String tags;
    private String rowNum;
    private String type;
    
    private String prevIdx;
    private String prevTitle;
    private String prevRegDt;
    private String nextIdx;
    private String nextTitle;
    private String nextRegDt;
    
}
