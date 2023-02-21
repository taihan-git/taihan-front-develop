package kr.co.taihan.front.web;

import lombok.RequiredArgsConstructor;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;

@Controller
@RequiredArgsConstructor
public class EthicsController {


    @GetMapping({"/ethics", "/en/ethics"})
    public String ethics(Model model){
        return "/esg/ethicsCode";
    }
    
    @GetMapping({"/majorActivities", "/en/majorActivities"})
    public String majorActivities(Model model){
    	return "/esg/majorActivities";
    }
}
