package kr.co.taihan.front.model;

import java.util.List;

import kr.co.taihan.front.model.search.Search;
import lombok.Data;
import lombok.EqualsAndHashCode;

@Data
@EqualsAndHashCode(callSuper = false)
public class Solution extends Search {

    public Solution(){};

    private String idx;
    private String title;
    private String content;
    private String sysThumImgFile;
    private String sysMainImgFile;
    private String displayYn;
    private String tbl;
    private String tagInfoList;
    private String productCnt;
    private String contentCnt;
    private String desc;
    private String menuCd;
    
    private List<TblMapping> mappingList;
}
