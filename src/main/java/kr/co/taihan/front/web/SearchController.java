package kr.co.taihan.front.web;

import kr.co.taihan.front.common.exception.BizException;
import kr.co.taihan.front.model.RcmdSearch;
import kr.co.taihan.front.model.SearchInfo;
import kr.co.taihan.front.model.json.Result;
import kr.co.taihan.front.model.json.ResultData;
import kr.co.taihan.front.service.SearchService;
import lombok.RequiredArgsConstructor;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import java.io.UnsupportedEncodingException;
import java.net.URLDecoder;
import java.util.List;

@Controller
@RequiredArgsConstructor
@RequestMapping({"/search","/en/search"})
public class SearchController {

    private final SearchService searchService;


    /**
     * 인터셉터에서 처리
     */
    @GetMapping("/rcmdSearchList")
    @ResponseBody
    public ResultData<List<RcmdSearch>> rcmdSearchList(Model model,RcmdSearch param){

        ResultData<List<RcmdSearch>> resultData = new ResultData<>();

        try {
            resultData.setResultData(searchService.rcmdSearchList(param));
        }catch(BizException e){
            return new ResultData<>(Result.FAIL, e.getMessage(), null);
        }catch(Exception e) {
            return new ResultData<>(Result.ERROR, e.getMessage(), null);
        }

        return resultData;
    }

    @GetMapping("/list")
    public String seachList(Model model, SearchInfo param) throws UnsupportedEncodingException{
        param.setSchType("total");
        param.setSchKey(URLDecoder.decode(param.getSchKey(), "UTF-8"));
        model.addAllAttributes(searchService.searchList(param));
        return "/search/schTotList";
    }

    @GetMapping("/tagList")
    public String tagList(Model model, SearchInfo param){
        param.setSchType("tag");
        model.addAllAttributes(searchService.searchList(param));
        return "/search/schTagList";
    }
}
