package kr.co.taihan.front.model;

import kr.co.taihan.front.model.search.Search;
import lombok.Data;
import lombok.EqualsAndHashCode;

@Data
@EqualsAndHashCode(callSuper = false)
public class TblMapping extends Search {

    public TblMapping(){};
    
    private String tbl;
    private String tblIdx;
    private String title;
    private String img;
    private String url;
    private String mappingIdx;
    private String mappingTarget;
    private String tab;
    
    private String[] tblIdxs;
    private String isSolution;
}
