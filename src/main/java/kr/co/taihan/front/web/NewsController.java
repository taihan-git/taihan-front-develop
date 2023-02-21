package kr.co.taihan.front.web;


import java.util.List;
import java.util.Map;

import kr.co.taihan.front.common.exception.BizException;
import kr.co.taihan.front.model.json.Result;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import kr.co.taihan.front.model.ApiStockRes.StockInfo;
import kr.co.taihan.front.model.IrNotice;
import kr.co.taihan.front.model.Release;
import kr.co.taihan.front.model.TaihanNews;
import kr.co.taihan.front.model.Webzine;
import kr.co.taihan.front.model.json.ResultData;
import kr.co.taihan.front.service.NewsService;
import lombok.RequiredArgsConstructor;

@Controller
@RequiredArgsConstructor
@RequestMapping({"/news","/en/news"})
public class NewsController {

    private final NewsService newsService;

    @GetMapping("/ir/finance")
    public String finance(Model model){
        return "/news/ir/finance";
    }

    @GetMapping("/ir/stock")
    public String stock(Model model){
        return "/news/ir/stock";
    }

    @GetMapping("/ir/stockInfo")
    @ResponseBody
    public ResultData<List<StockInfo>> stockInfo(Model model){
        ResultData<List<StockInfo>> resultData = new ResultData<>();

        try {
            resultData.setResultData(newsService.getStockInfo());
        }catch(BizException e){
            return new ResultData<>(Result.FAIL, e.getMessage(), null);
        }catch(Exception e) {
            return new ResultData<>(Result.ERROR, e.getMessage(), null);
        }
        return resultData;
    }

    @GetMapping("/ir/notice")
    public String notice(Model model, IrNotice param){
        model.addAllAttributes(newsService.getNoticeList(param));
        return "/news/ir/notice";
    }

    @GetMapping("/ir/noticeDetail")
    public String noticeDetail(Model model, IrNotice param){
        model.addAllAttributes(newsService.getNoticeDetail(param));
        return "/news/ir/noticeDetail";
    }

//    @GetMapping("/ir/notice-list")
//    @ResponseBody
//    public ResultData<Map<String, Object>> noticeList(IrNotice param){
//        ResultData<Map<String, Object>> resultData = new ResultData<>();
//        try {
//            resultData.setResultData(newsService.getNoticeList(param));
//        } catch (Exception e) {
//            return new ResultData<>(Result.ERROR, e.getMessage(), null);
//        }
//        return resultData;
//    }
//
//    @GetMapping("/ir/notice-detl")
//    @ResponseBody
//    public ResultData<Map<String, Object>> noticeDetail(IrNotice param){
//        ResultData<Map<String, Object>> resultData = new ResultData<>();
//        try {
//            resultData.setResultData(newsService.getNoticeDetail(param));
//        } catch (Exception e) {
//            return new ResultData<>(Result.ERROR, e.getMessage(), null);
//        }
//        return resultData;
//    }


    @GetMapping("/pr/taihanNews")
    public String taihanNews(Model model, TaihanNews param) throws Exception {
      model.addAllAttributes(newsService.getTaihanNewsList(param));
      return "/news/pr/taihanNews";
    }
    
    @GetMapping("/pr/taihanNewsDetail")
    public String taihanNewsDetail(Model model, TaihanNews param) throws Exception {
      model.addAllAttributes(newsService.getTaihanNews(param));
      return "/news/pr/taihanNewsDetail";
    }

    @GetMapping("/pr/release")
    public String release(Model model, Release param) throws Exception {
      model.addAllAttributes(newsService.getReleaseList(param));
      return "/news/pr/release";
    }
    
    @GetMapping("/pr/releaseDetail")
    public String releaseDetail(Model model, Release param) throws Exception {
      model.addAllAttributes(newsService.getRelease(param));
      return "/news/pr/releaseDetail";
    }

    @GetMapping("/pr/webzine")
    public String webzine(Model model, Webzine param){
        model.addAllAttributes(newsService.getWebzine(param));
        return "/news/pr/webzine";
    }

    @GetMapping("/pr/webzine-list")
    @ResponseBody
    public ResultData<Map<String,Object>> getWebzineList(Webzine param){
        ResultData<Map<String,Object>> resultData = new ResultData<>();
        try {
            resultData.setResultData(newsService.getWebzineList(param));
        } catch (Exception e) {
            return new ResultData<>(Result.ERROR, e.getMessage(), null);
        }
        return resultData;
    }

}
