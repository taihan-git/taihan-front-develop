package kr.co.taihan.front.model;

import lombok.*;


@Data
@Builder
@AllArgsConstructor
public class RcmdSearch{

    public RcmdSearch(){}

    public RcmdSearch(String lang) {
        this.lang = lang;
    }

    private String idx;
    private String title;
    private String btnLink;
    private String btnLinkTarget;
    private String ord;
    private String lang;
    private String displayYn;
    private String delYn;
    private String regIdx;
    private String regDt;
    private String updIdx;
    private String updDt;

}
