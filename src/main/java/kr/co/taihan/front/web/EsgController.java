package kr.co.taihan.front.web;


import kr.co.taihan.front.common.exception.BizException;
import kr.co.taihan.front.model.Inquiry;
import kr.co.taihan.front.model.json.Result;
import kr.co.taihan.front.model.json.ResultData;
import kr.co.taihan.front.service.EsgService;
import lombok.RequiredArgsConstructor;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

@Controller
@RequiredArgsConstructor
@RequestMapping({"/esg","/en/esg"})
public class EsgController {

    private final EsgService esgService;

    @GetMapping("/esgManage")
    public String esgManage(Model model){
        return "/esg/esgManage";
    }

    @GetMapping("/environment")
    public String environment(Model model){
        return "/esg/environment";
    }
    
    @GetMapping("/pollution")
    public String pollution(Model model){
    	return "/esg/pollution";
    }
    
    @GetMapping("/ecoFriendly")
    public String ecoFriendly(Model model){
    	return "/esg/ecoFriendly";
    }

    @GetMapping("/social")
    public String society(Model model){
        return "/esg/society";
    }
    
    @GetMapping("/safeManage")
    public String safeManage(Model model){
        return "/esg/safeManage";
    }
    
    @GetMapping("/socialContribution")
    public String socialContribution(Model model){
        return "/esg/socialContribution";
    }

    @GetMapping("/ownership")
    public String ownership(Model model){
        return "/esg/ownership";
    }
    

    @GetMapping("/fairTrade")
    public String fairTrade(Model model){
        return "/esg/taihanCP";
    }
    
    @GetMapping("/operationalStatus")
    public String operationalStatus(Model model){
    	return "/esg/operationalStatus";
    }
    
    @GetMapping("/cyberReport")
    public String cyberReport(Model model){
        return "/esg/cyberReport";
    }

    @GetMapping("/inquireRegForm")
    public String inquireRegForm(Inquiry inquiry, Model model){
        model.addAttribute("gubun",inquiry.getGubun());
        return "/esg/inquireRegForm";
    }

    @GetMapping("/inquireCheck")
    public String inquireCheck(Inquiry inquiry, Model model){
        return "/esg/inquireCheck";
    }

    @GetMapping("/inquireResult")
    public String inquireResult(Inquiry inquiry, Model model){
        return "/esg/inquireCheck";
    }

    @PostMapping("/inquireProc")
    @ResponseBody
    public ResultData<Inquiry> inquireProc(Inquiry inquiry){
        ResultData<Inquiry> resultData = new ResultData<>();
        try {
            resultData.setResultData(esgService.saveInquiry(inquiry));
        }catch (BizException e ){
            return new ResultData<>(Result.FAIL, e.getMessage(), null);
        }catch (Exception e) {
            return new ResultData<>(Result.ERROR, e.getMessage(), null);
        }
        return resultData;
    }

    @PostMapping("/inquireLoginCheck")
    @ResponseBody
    public ResultData<?> inquireLoginCheck(Inquiry inquiry){
        try {
            esgService.inquireLoginCheck(inquiry);
        } catch (BizException e) {
            return new ResultData<>(Result.FAIL,e.getMessage(),null);
        } catch (Exception e){
            return new ResultData<>(Result.ERROR,e.getMessage(),null);
        }
        return new ResultData<>();
    }

    @PostMapping("/inquireResult")
    public String inquireLogin(Inquiry inquiry, Model model){
        model.addAllAttributes(esgService.inquireLogin(inquiry));
        return "/esg/inquireResult";
    }

    
}
