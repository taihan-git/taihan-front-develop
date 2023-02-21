package kr.co.taihan.front.web;


import kr.co.taihan.front.common.exception.BizException;
import kr.co.taihan.front.model.*;
import kr.co.taihan.front.model.enums.ReportType;
import kr.co.taihan.front.model.json.Result;
import kr.co.taihan.front.model.json.ResultData;
import kr.co.taihan.front.service.CustomerService;
import lombok.RequiredArgsConstructor;
import org.apache.commons.lang3.StringUtils;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import java.util.List;

@Controller
@RequiredArgsConstructor
@RequestMapping({"/customer","/en/customer"})
public class CustomerController {

    private final CustomerService customerService;


    @GetMapping("/qna")
    public String qna(Model model){
        return "/customer/qna";
    }

    @GetMapping("/qna/category")
    @ResponseBody
    public ResultData<List<Qna>> qnaCategory(Model model, Qna param){
        ResultData<List<Qna>> resultData = new ResultData<>();

        try {
            resultData.setResultData(customerService.getCategoryList(param));
        } catch (Exception e) {
            return new ResultData<>(Result.ERROR, e.getMessage(), null);
        }
        return resultData;
    }

    @PostMapping("/qna/save")
    @ResponseBody
    public ResultData qnaSave(Qna param){
        ResultData resultData = new ResultData();
        try {
            customerService.saveQna(param);
        } catch (BizException e ){
            return new ResultData<>(Result.FAIL, e.getMessage(), null);
        }catch (Exception e) {
            return new ResultData<>(Result.ERROR, e.getMessage(), null);
        }
        return resultData;
    }


    @GetMapping("/agency")
    public String agency(Model model, Agency param){
    	System.out.println("param : "+param);
        model.addAllAttributes(customerService.getAgencyList(param));
        System.out.println("model : "+model);
        return "/customer/agency";
    }


    //기업홍보물
    @GetMapping("/corPromotion")
    public String corPromotion(Model model){
        return "/customer/corPromotion";
    }

    //카탈로그
    @GetMapping("/catalogue")
    public String catalogue(Model model, Catalog param){
        model.addAllAttributes(customerService.getCatalogueList(param));
        return "/customer/catalogue";
    }

    //인증자료
    @GetMapping("/certData")
    public String certData(Model model, Qc param){
        model.addAllAttributes(customerService.getCertDataList(param));
        return "/customer/certData";
    }

    //ir자료
    @GetMapping("/irRelation")
    public String irRelation(Model model, Report param){
        if(StringUtils.isEmpty(param.getReportType())){
            param.setReportType(ReportType.AUDIT.getCode());
        }

        model.addAllAttributes(customerService.getReportList(param));
        return "/customer/irRelation";
    }

    //esg자료
    @GetMapping("/esgRelation")
    public String esgRelation(Model model, Report param){

        if(StringUtils.isEmpty(param.getReportType())){
            param.setReportType(ReportType.ESG.getCode());
        }
        model.addAllAttributes(customerService.getReportList(param));
        return "/customer/esgRelation";
    }
}
