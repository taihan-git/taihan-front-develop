package kr.co.taihan.front.model;

import java.util.List;

import kr.co.taihan.front.model.search.Search;
import lombok.Data;
import lombok.EqualsAndHashCode;

@Data
@EqualsAndHashCode(callSuper = false)
public class WorkPlace extends Search {

    public WorkPlace(){};

    private String idx;
    private String title;
    private String introText;
    private String orgThumImgFile;
    private String sysThumImgFile;
    private String thumImgText;
    private String displayYn;

    private String workplaceName;
    private String subTitle;
    private String subIntroText;

    private String YearDspYn;
    private String PeopleDspYn;
    private String AreaDspYn;
    private String ProdCapacityDspYn;
    private String ProdItemDspYn;
    
    private String yearDspTxt;
    private String peopleDspTxt;
    private String areaDspTxt;
    private String prodCapacityDspTxt;
    private String prodItemDspTxt;
    
    private String address;
    private String mapUrl;
    private String tel;
    private String homepageUrl;
    
    private String regDt;
    private String regIdx;
    private String updDt;
    private String updIdx;
    private String hits;
    
    private String delYn;
    private String tags;
    
    private String[] arrContentIdx;
    private String[] arrTagIdx;
    private String mode;
    private String thumImgDelChkYn;
    private String delChkYn;
    private String deleteFilePath;

    private String schKey2;
    private String schField;
    private String schRegStartDt;
    private String schRegEndDt;
    private String schAgencyNm;
    
    private List<WorkPlaceCont> workPlaceContList;

}
