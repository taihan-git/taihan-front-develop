package kr.co.taihan.front.model;

import kr.co.taihan.front.model.search.Search;
import lombok.*;
import org.springframework.web.multipart.MultipartFile;


@Data
@EqualsAndHashCode(callSuper = false)
@Builder
@AllArgsConstructor
public class SuccessCase extends Search {

    public SuccessCase(){}

    public SuccessCase(String lang) {
        this.lang = lang;
    }

    private String idx;
    private String title;
    private String section;
    private String country;
    private String lang = "ko";
    private String btnLink;
    private String btnLinkTarget;
    private String orgPcImgFile;
    private String sysPcImgFile;
    private String ord;
    private String displayYn;
    private String delYn;
    private String regIdx;
    private String regDt;
    private String updIdx;
    private String updDt;
    private String delChkYn;


}
