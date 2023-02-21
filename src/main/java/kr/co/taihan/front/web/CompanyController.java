package kr.co.taihan.front.web;


import lombok.RequiredArgsConstructor;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequiredArgsConstructor
@RequestMapping({"/company","/en/company"})
public class CompanyController {

    @GetMapping("/orverview")
    public String orverview(Model model){
        return "/company/overview";
    }
    @GetMapping("/overview")
    public String overview(Model model){
    	return "/company/overview";
    }

    @GetMapping("/history")
    public String history(Model model){
        return "/company/history";
    }

    @GetMapping("/ci")
    public String ci(Model model){
        return "/company/ci";
    }

    @GetMapping("/rd")
    public String rd(Model model){
        return "/company/rd";
    }

    @GetMapping("/talentSystem")
    public String talentSystem(Model model){
        return "/company/talentSystem";
    }

    @GetMapping("/jobs")
    public String jobs(Model model){
        return "/company/jobs";
    }

}
