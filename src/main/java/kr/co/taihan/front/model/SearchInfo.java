package kr.co.taihan.front.model;

import kr.co.taihan.front.model.search.Search;
import lombok.*;

import java.time.LocalDateTime;
import java.util.List;

@Data
@EqualsAndHashCode(callSuper = true)
public class SearchInfo extends Search implements Comparable<SearchInfo>{

    public SearchInfo(){}

    private String idx;
    private String topTitle1;
    private String topTitle2;
    private String title;
    private String content;
    private String sysImgFile;
    private String orgImgFile;
    private String sysFile;
    private String orgFile;
    private String tagInfoList;
    private LocalDateTime regDt;
    private String mode;
    private String schKey;
    private String lang;

    private String schTagNm;
    private String schTagIdx;
    private String schType;
    private String clickUrl;
    private List<TagInfo> viewTags;


    @Setter
    @Getter
    @NoArgsConstructor
    @AllArgsConstructor
    public static class TagInfo{
        private String tagNm;
        private String tagIdx;
    }

    @Override
    public int compareTo(SearchInfo o) {
        return this.regDt.compareTo(o.getRegDt());
    }

}
