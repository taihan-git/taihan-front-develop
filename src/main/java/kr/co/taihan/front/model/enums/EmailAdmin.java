package kr.co.taihan.front.model.enums;


import lombok.AllArgsConstructor;
import lombok.Getter;

import java.util.Arrays;

@AllArgsConstructor
@Getter
public enum EmailAdmin {

    PRODUCTS_KO_1("ko_inqu_0101","초고압케이블(66kV이상)","pmh0217@taihan.com,jk1008@taihan.com,yshoony86@taihan.com,jhkim1@taihan.com"),
    PRODUCTS_KO_2("ko_inqu_0102","배전용케이블(66kV미만)","yshoony86@taihan.com,rushmsh@taihan.com"),
    PRODUCTS_KO_3("ko_inqu_0103","전력기기","shjung@taihan.com"),
    PRODUCTS_KO_4("ko_inqu_0104","부스덕트","jjh4869@taihan.com"),
    PRODUCTS_KO_5("ko_inqu_0105","신재생","hoonsmile@taihan.com"),
    PRODUCTS_KO_6("ko_inqu_0106","통신","skida83@taihan.com"),
    PRODUCTS_KO_7("ko_inqu_0107","소재","KJW0721@taihan.com"),

    INVEST_INFO_KO_1("ko_inqu_02","투자정보","jwkim@taihan.com"),
    ENVIRMENT_KO_1("ko_inqu_03","채용","uskim@taihan.com"),

    ETC_KO_1("ko_inqu_0401","기술개발 제안","hskwon@taihan.com,gocharge89@taihan.com"),
    ETC_KO_2("ko_inqu_0402","전문인력 파견 교육 신청","hskwon@taihan.com,gocharge89@taihan.com"),
    ETC_KO_3("ko_inqu_0403","자재납품 고충처리","jhakim@taihan.com,hskwon@taihan.com"),
    ETC_KO_4("ko_inqu_0404","지역사회 의견 수렴","ygkim@taihan.com"),
    ETC_KO_5("ko_inqu_0405","협력사 안전보건 관련 제보","ygkim@taihan.com"),
    ETC_KO_6("ko_inqu_0406","홈페이지 외","ygkim@taihan.com"),


    //영문 제품(Extra-high cable)은 지역 기준으로 코드 세팅
    PRODUCTS_RG_1("en_coun_01","Middle East / Africa","mwyu@taihan.com"),
    PRODUCTS_RG_2("en_coun_02","Asia / Oceania","mwyu@taihan.com"),
    PRODUCTS_RG_3("en_coun_03","Europe","wschung@taihan.com"),
    PRODUCTS_RG_4("en_coun_04","America","gutesleben12@taihan.com"),
    PRODUCTS_RG_5("en_coun_05","Russia/CIS","alexlee@taihan.com"),

    //나머지 제품은 코드값으로 세팅
    PRODUCTS_EN_1("en_inqu_0102","Middel/Low Voltage Cable(66kV down","choiji@taihan.com"),
    PRODUCTS_EN_2("en_inqu_0103","Cable Accessories","shjung@taihan.com"),
    PRODUCTS_EN_3("en_inqu_0104","Bus-Duct","jjh4869@taihan.com"),
    PRODUCTS_EN_4("en_inqu_0105","Renewable Energy","hoonsmile@taihan.com"),
    PRODUCTS_EN_5("en_inqu_0106","Communications Cable","jwoh@taihan.com"),
    PRODUCTS_EN_6("en_inqu_0107","Base Metal","KJW0721@taihan.com"),

    IR_EN_1("en_inqu_02","IR","jwkim@taihan.com"),
    HR_EN_1("en_inqu_03","HR","uskim@taihan.com"),
    OTHERS_EN_1("en_inqu_04","Others","ygkim@taihan.com"),
    ;

    private final String code;
    private final String name;
    private final String mailAddr;


    /**
     * enum의 코드값 으로 enum class 반환
     * @param code
     * @return
     */
    public static EmailAdmin of(String code){
        return Arrays.stream(values())
                .filter(o -> o.getCode().equals(code))
                .findFirst()
                .orElse(null);
    }

    /**
     * enum의 코드값 으로 String[] mailAddr 반환
     * @param code
     * @return
     */
    public static String[] getMailAddrsFromCode(String code){
        EmailAdmin reportType = EmailAdmin.of(code);
        if(reportType != null){
            String[] mails = reportType.getMailAddr().split(",");
            return mails;
        }
        return null;
    }

}
