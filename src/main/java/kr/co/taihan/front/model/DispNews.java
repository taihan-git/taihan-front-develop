package kr.co.taihan.front.model;

import kr.co.taihan.front.model.search.Search;
import lombok.*;
import org.springframework.web.multipart.MultipartFile;


@Data
@EqualsAndHashCode(callSuper = false)
@Builder
@AllArgsConstructor
@NoArgsConstructor
public class DispNews extends Search {


    public DispNews(String lang) {
        this.lang = lang;
    }

    private String idx;
    private String title;
    private String contType;
    private String lang = "ko";
    private String btnLink;
    private String btnLinkTarget;
    private String dispRegDt;
    private String ord;
    private String orgPcImgFile;
    private String sysPcImgFile;
    private String displayYn;
    private String delYn;
    private String regIdx;
    private String regDt;
    private String updIdx;
    private String updDt;
    private String delChkYn;

    private String dispYearMonth;
    private String dispYearDay;
    private String dispContName;

    private String[] arrDispNewsIdx;

    private MultipartFile pcImgFile;

}
