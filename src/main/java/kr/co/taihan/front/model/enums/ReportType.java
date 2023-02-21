package kr.co.taihan.front.model.enums;


import lombok.AllArgsConstructor;
import lombok.Getter;

import java.util.Arrays;

@AllArgsConstructor
@Getter
public enum ReportType {

    TAX("TAX","납세증명서","tax/"),
    AUDIT("AUDIT","감사보고서","audit/"),
    BUSINESS("BUSINESS","사업보고서","business/"),
    ANNUAL("ANNUAL","애뉴얼리포트","annual/"),
    ESG("ESG","ESG 리포트","esg/"),
    DISRULE("DISRULE","공개규정집","disrule/")
    ;

    private final String code;
    private final String name;
    private final String uploadPath;

    /**
     * enum의 코드값 으로 enum class 반환
     * @param code
     * @return
     */
    public static ReportType of(String code){
        return Arrays.stream(values())
                .filter(o -> o.getCode().equals(code))
                .findFirst()
                .orElse(null);
    }

    /**
     * enum의 코드값 으로 uploadPath 반환
     * @param code
     * @return
     */
    public static String getPath(String code){
        ReportType reportType = ReportType.of(code);
        return  reportType == null ? "" : reportType.getUploadPath();
    }

}
