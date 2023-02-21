package kr.co.taihan.front.web;


import kr.co.taihan.front.model.MainBanner;
import kr.co.taihan.front.service.SampleService;
import lombok.RequiredArgsConstructor;
import nl.captcha.Captcha;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.ResponseBody;

@Controller
@RequiredArgsConstructor
public class SampleController {

    private final SampleService sampleService;

    @GetMapping("/sample")
    public String sample(Model model, MainBanner mainBanner){
        model.addAllAttributes(sampleService.getMainBannerList(mainBanner));
        return "/sample/index";
    }
    
    //테스트 샘플
    @PostMapping("/chkAnswer")
    @ResponseBody
    public String chkAnswer(HttpServletRequest req, HttpServletResponse res) {
        String result = "";
        Captcha captcha = (Captcha) req.getSession().getAttribute(Captcha.NAME);
        String ans = req.getParameter("answer");
        if(ans!=null && !"".equals(ans)) {
            if(captcha.isCorrect(ans)) {
                req.getSession().removeAttribute(Captcha.NAME);
                result = "200";
            }else {
                result = "300";
            }
        }
        return result;
    }
}
