package kr.co.taihan.front.service;


import java.util.List;
import java.util.Map;
import kr.co.taihan.front.model.ApiStockRes.StockInfo;
import kr.co.taihan.front.model.IrNotice;
import kr.co.taihan.front.model.Release;
import kr.co.taihan.front.model.TaihanNews;
import kr.co.taihan.front.model.Webzine;

public interface NewsService {

    /**
     * 주식 정보 조회
     * @return
     */
    List<StockInfo> getStockInfo();

    Map<String, Object> getTaihanNewsList(TaihanNews param)  throws Exception;
    
    Map<String, Object> getTaihanNews(TaihanNews param)  throws Exception;
    
    Map<String, Object> getReleaseList(Release param)  throws Exception;
    
    Map<String, Object> getRelease(Release param)  throws Exception;

    /**
     * IR 공고 리스트 조회
     * @param irNotice
     * @return
     */
    Map<String, Object> getNoticeList(IrNotice irNotice);

    /**
     * IR 공고 상세 조회
     * @param param
     * @return
     */
    Map<String, Object> getNoticeDetail(IrNotice param);

    /**
     * 웹진 상단 데이터 조회
     * @param param
     * @return
     */
    Map<String, Object> getWebzine(Webzine param);

    /**
     * 웹진 리스트 조회
     * @param param
     * @return
     */
    Map<String, Object> getWebzineList(Webzine param);
}
