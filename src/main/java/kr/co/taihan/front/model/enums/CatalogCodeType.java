package kr.co.taihan.front.model.enums;

import lombok.AllArgsConstructor;
import lombok.Getter;

import java.util.Arrays;

@Getter
@AllArgsConstructor
public enum CatalogCodeType {

    CATE1("1","전력 | 송전용","transList"),
    CATE2("2","전력 | 배전용","distList"),
    CATE3("3","전력 | 산업용","indsList"),
    CATE4("4","전력 | 부스덕트","busdList"),
    CATE5("5","신재생","reneList"),
    CATE6("6","통신", "comnList"),
    CATE7("7","소재", "materList")
    ;

    private String code;
    private String name;
    private String viewNm;


    /**
     * enum의 코드값 으로 enum class 반환
     * @param code
     * @return
     */
    public static CatalogCodeType of(String code){
        return Arrays.stream(values())
                .filter(o -> o.getCode().equals(code))
                .findFirst()
                .orElse(null);
    }


    /**
     * enum의 코드값 으로 viewName 반환
     * @param code
     * @return
     */
    public static String getViewNm(String code){
        CatalogCodeType reportType = CatalogCodeType.of(code);
        return  reportType == null ? "" : reportType.getViewNm();
    }
}
