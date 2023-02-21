package kr.co.taihan.front.model;

import com.fasterxml.jackson.annotation.JsonProperty;
import lombok.Data;
import lombok.Getter;
import lombok.Setter;
import lombok.extern.slf4j.Slf4j;

import java.util.ArrayList;
import java.util.List;

@Data
@Slf4j
public class ApiStockRes {

    @JsonProperty("response")
    private StockResponse stockResponse;

    @Setter
    @Getter
    public static class StockResponse{
        @JsonProperty("header")
        private StockHeader stockHeader;
        @JsonProperty("body")
        private StockBody stockBody;
    }


    @Setter
    @Getter
    public static class StockHeader{
        /* 결과 메시지 */
        private String resultmsg;
        /* 결과 코드 00:성공 */
        private String resultcode;
    }


    @Setter
    @Getter
    public static class StockBody{
        /* 총 개수 */
        private int totalcount;
        /* 라인 수  */
        private int numofrows;
        /* 페이지 수 */
        private int pageno;

        @JsonProperty("items")
        private StockInfos StockInfos;
    }

    @Setter
    @Getter
    public static class StockInfos{
        @JsonProperty("item")
        private List<StockInfo> stockInfoList;
    }

    @Setter
    @Getter
    public static class StockInfo{
        /* 종목 코드보다 짧으면서 유일성이 보장되는 코드(6자리) */
        private String srtncd;
        /* 전일 대비 등락에 따른 비율 */
        private String fltrt;
        /* 주식의 시장 구분 (KOSPI/KOSDAQ/KONEX 중 1) */
        private String mrktctg;
        /* 국제 채권 식별 번호. 유가증권(채권)의 국제인증 고유번호 */
        private String isincd;
        /* 정규시장의 매매시간종료시까지 형성되는 최종가격 */
        private String clpr;
        /* 종목의 상장주식수 */
        private String lstgstcnt;
        /* 종가 * 상장주식수 */
        private String mrkttotamt;
        /* 유가증권 국제인증 고유번호 코드 이름 */
        private String itmsnm;
        /* 정규시장의 매매시간개시후 형성되는 최초가격 */
        private int mkp;
        /* 하루 중 가격의 최고치 */
        private int hipr;
        /* 체결수량의 누적 합계 */
        private int trqu;
        /* 기준일자 */
        private String basdt;
        /* 하루 중 가격의 최저치 */
        private int lopr;
        /* 거래건 별 체결가격 * 체결수량의 누적 합계 */
        private String trprc;
        /* 전일 대비 등락 */
        private int vs;
    }

    public  List<StockInfo> getStockList(){
        try {
            return this.stockResponse.getStockBody().getStockInfos().getStockInfoList();
        } catch (NullPointerException e) {
            logger.info("getStockList NullPointerException :: {} ",e.getMessage());
            return new ArrayList<>();
        }
    }
}
