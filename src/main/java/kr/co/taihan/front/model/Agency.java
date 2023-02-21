package kr.co.taihan.front.model;

import kr.co.taihan.front.model.search.Search;
import lombok.Data;
import lombok.EqualsAndHashCode;

@Data
@EqualsAndHashCode(callSuper = false)
public class Agency extends Search {

    public Agency() {}

    private String idx;
    private String agencyNm;
    private String agencyAddr;
    private String agencyTel;
    private String agencyFax;
    private String agencyAreaId;
    private String agencyAreaParntId;
    private String agencyAreaNm;
    private String displayYn;
    private String delYn;
    private String regIdx;
    private String regDt;
    private String updIdx;
    private String updDt;
    private String googleMapUrl;

    private String agencyProductNm;
    private String agencyProductId;
    private String schAgencyNm;

    private String agencyAreaParentId;


    private String schArea;
    private String schProduct;
}
