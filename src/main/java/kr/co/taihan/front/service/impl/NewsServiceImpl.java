package kr.co.taihan.front.service.impl;

import java.util.*;
import java.util.stream.Collectors;

import kr.co.taihan.front.model.Webzine;
import org.apache.commons.lang3.ObjectUtils;
import org.apache.commons.lang3.StringUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Value;
import org.springframework.cache.annotation.Cacheable;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;
import kr.co.taihan.front.common.exception.ExternalApiException;
import kr.co.taihan.front.common.util.HttpConnection;
import kr.co.taihan.front.common.util.page.PageNavigatorDefault;
import kr.co.taihan.front.dao.NewsMapper;
import kr.co.taihan.front.model.ApiStockRes;
import kr.co.taihan.front.model.ApiStockRes.StockInfo;
import kr.co.taihan.front.model.IrNotice;
import kr.co.taihan.front.model.Release;
import kr.co.taihan.front.model.TaihanNews;
import kr.co.taihan.front.service.NewsService;
import lombok.extern.slf4j.Slf4j;

@Service
@Slf4j
public class NewsServiceImpl implements NewsService {

    @Value("${stock.api.key}")
    private String apiKey;

    @Value("${stock.api.url}")
    private String apiUrl;
    
    @Autowired
    private NewsMapper newsMapper;

    @Override
    public List<StockInfo> getStockInfo() {

        Map<String, Object> params = new HashMap<>();
        params.put("numOfRows", 15);
        params.put("resultType", "json");
        params.put("likeSrtnCd","001440");
        params.put("serviceKey", apiKey);
        ApiStockRes apiStockRes = new ApiStockRes();

        try {
            apiStockRes = (ApiStockRes) HttpConnection.cvtConnection(apiUrl, HttpConnection.HttpMethod.GET, params, null, ApiStockRes.class);
        } catch (Exception e) {
            logger.debug(e.getMessage());
            throw new ExternalApiException("METHOD getStockInfo() ERROR");
        }

        List<StockInfo> stockList = apiStockRes.getStockList();
        return stockList;
    }


    @Override
    public Map<String, Object> getTaihanNewsList(TaihanNews param) throws Exception {
      Map<String,Object> map = new HashMap<>();
      param.setRowSize(9);
      int totalCount = newsMapper.selectTaihanNewsListCnt(param);
      map.put("totalCount",totalCount);
      if (totalCount > 0) {
          PageNavigatorDefault navi = new PageNavigatorDefault(param.getPageNo(), totalCount, param.getRowSize(), param.getBlockSize());
          map.put("navi", navi);
          List<TaihanNews> list = newsMapper.selectTaihanNewsList(param);
          map.put("list", list);
      }
      TaihanNews param2 = new TaihanNews();
      param2.setTopFixYn("Y");
      List<TaihanNews> topFixList = newsMapper.selectTaihanNewsList(param2);
      map.put("topFixList", topFixList);
      return map;
  }
    
    @Override
    public Map<String, Object> getTaihanNews(TaihanNews param) throws Exception {
      // TODO Auto-generated method stub
      Map<String, Object> map = new HashMap<String, Object>();

		if (StringUtils.isNotEmpty(param.getIdx())) {
			newsMapper.updateTaihanNewsHit(param);
			TaihanNews nowNews = newsMapper.selectTaihanNews(param);
			map.put("taihanNews", nowNews);
			param.setRowNum(nowNews.getRowNum());
			param.setType("after");
			map.put("afterNews", newsMapper.selectTaihanNews(param));
			param.setType("before");
			map.put("beforeNews", newsMapper.selectTaihanNews(param));
		}

      return map;
    }
    
    @Override
    public Map<String, Object> getReleaseList(Release param) throws Exception {
      Map<String,Object> map = new HashMap<>();
      param.setRowSize(10);
      int totalCount = newsMapper.selectReleaseListCnt(param);
      map.put("totalCount",totalCount);
      if (totalCount > 0) {
          PageNavigatorDefault navi = new PageNavigatorDefault(param.getPageNo(), totalCount, param.getRowSize(), param.getBlockSize());
          map.put("navi", navi);
          List<Release> list = newsMapper.selectReleaseList(param);
          map.put("list", list);
      }
      return map;
  }
    
	@Override
	public Map<String, Object> getRelease(Release param) throws Exception {
		// TODO Auto-generated method stub
		Map<String, Object> map = new HashMap<String, Object>();

		if (StringUtils.isNotEmpty(param.getIdx())) {
			newsMapper.updateReleaseHit(param);
			Release nowNews = newsMapper.selectRelease(param);
			map.put("release", nowNews);
			param.setRowNum(nowNews.getRowNum());
			param.setType("after");
			map.put("afterNews", newsMapper.selectRelease(param));
			param.setType("before");
			map.put("beforeNews", newsMapper.selectRelease(param));
		}

		return map;
	}
    
    public Map<String, Object> getNoticeList(IrNotice param) {
        param.setRowSize(10);
        Map<String,Object> map = new HashMap<>();

        if("1".equals(param.getMode())){
            return map;
        }

        int totalCount = newsMapper.selectIrNoticeListCnt(param);
        map.put("totalCount",totalCount);
        if(totalCount > 0){
            PageNavigatorDefault navi = new PageNavigatorDefault(param.getPageNo(), totalCount, param.getRowSize(), param.getBlockSize());
            map.put("navi", navi);
            List<IrNotice> list = newsMapper.selectIrNoticeList(param);
            map.put("list", list);
        }
        return map;
    }


    @Override
    @Transactional
    public Map<String, Object> getNoticeDetail(IrNotice param) {
        Map<String,Object> map = new HashMap<>();

        List<IrNotice> list = newsMapper.selectIrNotice(param);

        if(StringUtils.isNotEmpty(param.getIdx())){
            //조회수 증가
            newsMapper.updateNoticeHit(param);
            for (IrNotice irNotice : list) {
                map.put(irNotice.getType(), irNotice);
            }
        }
        return map;
    }


    @Override
    public Map<String, Object> getWebzine(Webzine param) {
        Map<String,Object> map = new HashMap<>();
        param.setTopFixYn("Y");
        param.setFindAll(false);

        List<Webzine> list = newsMapper.selectWebZineList(param);
        Webzine webzine = list.stream().findFirst().orElse(null);

        param.setTopFixYn("N");
        param.setFindAll(true);
        Integer[] years = newsMapper.selectWebZineList(param).stream()
                .map(o -> Integer.parseInt(o.getYear()))
                .distinct()
                .sorted(Comparator.reverseOrder())
                .toArray(Integer[]::new);

        map.put("topItem",webzine);
        map.put("years", years);

        return map;
    }

    @Override
    public Map<String, Object> getWebzineList(Webzine param) {
        Map<String, Object> map = new HashMap<>();

        int pageNo = param.getPageNo() > 0 ? param.getPageNo() : 1;
        param.setRowSize(pageNo * 6);
        param.setFindAll(false);

        param.setTopFixYn("N");
        List<Webzine> list = newsMapper.selectWebZineList(param);
        map.put("list", list);

        int totalCount = newsMapper.selectWebZineListCnt(param);

        if(list.size() < totalCount){
            map.put("isMore",true);
        }
        return map;
    }
}
