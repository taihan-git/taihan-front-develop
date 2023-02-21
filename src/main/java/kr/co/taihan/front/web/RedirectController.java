package kr.co.taihan.front.web;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.support.MessageSourceAccessor;
import org.springframework.http.HttpStatus;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;
import org.springframework.web.servlet.view.RedirectView;

import lombok.extern.slf4j.Slf4j;

@Controller
@Slf4j
@RequestMapping(value = { "", "/en", "/ru", "/es" })
public class RedirectController {

	@Autowired
	private MessageSourceAccessor msa;

	@GetMapping({"/company/intro.asp","/company/vision.asp"})
	public ModelAndView intro(Model model,HttpServletRequest request,HttpServletResponse response) throws Exception {
		String lang = request.getRequestURI().toString().substring(0,3);
		String locale = "";
		if("/en,/ru,/es".indexOf(lang) > -1){
			locale = "/en";
		}
		String url = locale+"/company/overview";
		RedirectView rv = new RedirectView();
	    rv.setStatusCode(HttpStatus.MOVED_PERMANENTLY);
	    rv.setUrl(url);
	    ModelAndView mv = new ModelAndView(rv);
	    return mv;
	}
	
	@GetMapping("/company/history.asp")
	public ModelAndView history(Model model,HttpServletRequest request,HttpServletResponse response) throws Exception {
		String lang = request.getRequestURI().toString().substring(0,3);
		String locale = "";
		if("/en,/ru,/es".indexOf(lang) > -1){
			locale = "/en";
		}
		String url = locale+"/company/history";
		RedirectView rv = new RedirectView();
	    rv.setStatusCode(HttpStatus.MOVED_PERMANENTLY);
	    rv.setUrl(url);
	    ModelAndView mv = new ModelAndView(rv);
	    return mv;
	}
	
	@GetMapping({"/company/rnd.asp","/company/rndMission.asp","/company/rndTask.asp"})
	public ModelAndView rnd(Model model,HttpServletRequest request,HttpServletResponse response) throws Exception {
		String lang = request.getRequestURI().toString().substring(0,3);
		String locale = "";
		if("/en,/ru,/es".indexOf(lang) > -1){
			locale = "/en";
		}
		String url = locale+"/company/rd";
		RedirectView rv = new RedirectView();
	    rv.setStatusCode(HttpStatus.MOVED_PERMANENTLY);
	    rv.setUrl(url);
	    ModelAndView mv = new ModelAndView(rv);
	    return mv;
	}
	
	@GetMapping({"/company/bizNetwork/*"})
	public ModelAndView globalNetwork(Model model,HttpServletRequest request,HttpServletResponse response) throws Exception {
		String lang = request.getRequestURI().toString().substring(0,3);
		String locale = "";
		if("/en,/ru,/es".indexOf(lang) > -1){
			locale = "/en";
		}
		String url = locale+"/business/globalNetwork";
		RedirectView rv = new RedirectView();
	    rv.setStatusCode(HttpStatus.MOVED_PERMANENTLY);
	    rv.setUrl(url);
	    ModelAndView mv = new ModelAndView(rv);
	    return mv;
	}
	
	@GetMapping({"/investment","/investment/finance.asp"})
	public ModelAndView finance(Model model,HttpServletRequest request,HttpServletResponse response) throws Exception {
		String lang = request.getRequestURI().toString().substring(0,3);
		String locale = "";
		if("/en,/ru,/es".indexOf(lang) > -1){
			locale = "/en";
		}
		String url = locale+"/news/ir/finance";
		RedirectView rv = new RedirectView();
	    rv.setStatusCode(HttpStatus.MOVED_PERMANENTLY);
	    rv.setUrl(url);
	    ModelAndView mv = new ModelAndView(rv);
	    return mv;
	}
	
	@GetMapping({"/investment/stockInfo.asp"})
	public ModelAndView stock(Model model,HttpServletRequest request,HttpServletResponse response) throws Exception {
		String lang = request.getRequestURI().toString().substring(0,3);
		String locale = "";
		if("/en,/ru,/es".indexOf(lang) > -1){
			locale = "/en";
		}
		String url = locale+"/news/ir/stock";
		RedirectView rv = new RedirectView();
	    rv.setStatusCode(HttpStatus.MOVED_PERMANENTLY);
	    rv.setUrl(url);
	    ModelAndView mv = new ModelAndView(rv);
	    return mv;
	}
	
	@GetMapping({"/investment/Materials.asp","/investment/Regulations.asp"})
	public ModelAndView notice(Model model,HttpServletRequest request,HttpServletResponse response) throws Exception {
		String lang = request.getRequestURI().toString().substring(0,3);
		String locale = "";
		if("/en,/ru,/es".indexOf(lang) > -1){
			locale = "/en";
		}
		String url = locale+"/news/ir/notice";
		RedirectView rv = new RedirectView();
	    rv.setStatusCode(HttpStatus.MOVED_PERMANENTLY);
	    rv.setUrl(url);
	    ModelAndView mv = new ModelAndView(rv);
	    return mv;
	}
	
	@GetMapping({"/bbs","/bbs/*"})
	public ModelAndView bbs(Model model,HttpServletRequest request,HttpServletResponse response) throws Exception {
		String lang = request.getRequestURI().toString().substring(0,3);
		String locale = "";
		if("/en,/ru,/es".indexOf(lang) > -1){
			locale = "/en";
		}
		String bbsId = request.getParameter("bbsId") != null ? request.getParameter("bbsId") : "";
		String url = "";
		switch (bbsId) {
		case "IRNDR":
			url = locale+"/news/ir/notice";
			break;
		case "AuditReport":
			url = locale+"/customer/irRelation?reportType=AUDIT";
			break;
		case "BZReport":
			url = locale+"/customer/irRelation?reportType=BUSINESS";
			break;
		case "THNews":
			url = locale+"/news/pr/taihanNews";
			break;	
		case "PressNotice":
			url = locale+"/news/pr/release";
			break;	
		case "infodata1":
			url = locale+"/customer/esgRelation";
			break;	
		default:
			url = locale+"/customer/esgRelation";
			break;
		}
		RedirectView rv = new RedirectView();
	    rv.setStatusCode(HttpStatus.MOVED_PERMANENTLY);
	    rv.setUrl(url);
	    ModelAndView mv = new ModelAndView(rv);
	    return mv;
	}
	
	@GetMapping({"/investment/contact/","/cust"})
	public ModelAndView qna(Model model,HttpServletRequest request,HttpServletResponse response) throws Exception {
		String lang = request.getRequestURI().toString().substring(0,3);
		String locale = "";
		if("/en,/ru,/es".indexOf(lang) > -1){
			locale = "/en";
		}
		String url = locale+"/customer/qna";
		RedirectView rv = new RedirectView();
	    rv.setStatusCode(HttpStatus.MOVED_PERMANENTLY);
	    rv.setUrl(url);
	    ModelAndView mv = new ModelAndView(rv);
	    return mv;
	}
	
	@GetMapping({"/investment/annualReport.asp"})
	public ModelAndView ANNUAL(Model model,HttpServletRequest request,HttpServletResponse response) throws Exception {
		String lang = request.getRequestURI().toString().substring(0,3);
		String locale = "";
		if("/en,/ru,/es".indexOf(lang) > -1){
			locale = "/en";
		}
		String url = locale+"/customer/irRelation?reportType=ANNUAL";
		RedirectView rv = new RedirectView();
	    rv.setStatusCode(HttpStatus.MOVED_PERMANENTLY);
	    rv.setUrl(url);
	    ModelAndView mv = new ModelAndView(rv);
	    return mv;
	}
	
	@GetMapping({"/promote/promoteMovie.asp"})
	public ModelAndView corPromotion(Model model,HttpServletRequest request,HttpServletResponse response) throws Exception {
		String lang = request.getRequestURI().toString().substring(0,3);
		String locale = "";
		if("/en,/ru,/es".indexOf(lang) > -1){
			locale = "/en";
		}
		String url = locale+"/customer/corPromotion";
		RedirectView rv = new RedirectView();
	    rv.setStatusCode(HttpStatus.MOVED_PERMANENTLY);
	    rv.setUrl(url);
	    ModelAndView mv = new ModelAndView(rv);
	    return mv;
	}
	
	@GetMapping({"/promote/TaihanCi.asp"})
	public ModelAndView ci(Model model,HttpServletRequest request,HttpServletResponse response) throws Exception {
		String lang = request.getRequestURI().toString().substring(0,3);
		String locale = "";
		if("/en,/ru,/es".indexOf(lang) > -1){
			locale = "/en";
		}
		String url = locale+"/company/ci";
		RedirectView rv = new RedirectView();
	    rv.setStatusCode(HttpStatus.MOVED_PERMANENTLY);
	    rv.setUrl(url);
	    ModelAndView mv = new ModelAndView(rv);
	    return mv;
	}
	
	@GetMapping({"/promote/promoteSabo.asp","/webzine/*/*/*","/webzine"})
	public ModelAndView webzine(Model model,HttpServletRequest request,HttpServletResponse response) throws Exception {
		String lang = request.getRequestURI().toString().substring(0,3);
		String locale = "";
		if("/en,/ru,/es".indexOf(lang) > -1){
			locale = "/en";
		}
		String url = locale+"/news/pr/webzine";
		RedirectView rv = new RedirectView();
	    rv.setStatusCode(HttpStatus.MOVED_PERMANENTLY);
	    rv.setUrl(url);
	    ModelAndView mv = new ModelAndView(rv);
	    return mv;
	}
	
	@GetMapping({"/recruit/","/recruit/insaSystem.asp","/recruit/eduSystem.asp","/recruit/welfareBenefit.asp","/recruit/introDuty.asp","/recruit/index.asp"})
	public ModelAndView talentSystem(Model model,HttpServletRequest request,HttpServletResponse response) throws Exception {
		String lang = request.getRequestURI().toString().substring(0,3);
		String locale = "";
		if("/en,/ru,/es".indexOf(lang) > -1){
			locale = "/en";
		}
		String url = locale+"/company/talentSystem";
		RedirectView rv = new RedirectView();
	    rv.setStatusCode(HttpStatus.MOVED_PERMANENTLY);
	    rv.setUrl(url);
	    ModelAndView mv = new ModelAndView(rv);
	    return mv;
	}
	
	@GetMapping({"/recruit/notice/","/recruit/notice/","/recruit/faq/"})
	public ModelAndView jobs(Model model,HttpServletRequest request,HttpServletResponse response) throws Exception {
		String lang = request.getRequestURI().toString().substring(0,3);
		String locale = "";
		if("/en,/ru,/es".indexOf(lang) > -1){
			locale = "/en";
		}
		String url = locale+"/company/jobs";
		RedirectView rv = new RedirectView();
	    rv.setStatusCode(HttpStatus.MOVED_PERMANENTLY);
	    rv.setUrl(url);
	    ModelAndView mv = new ModelAndView(rv);
	    return mv;
	}
	
	@GetMapping({"/ethics/information/info.asp"})
	public ModelAndView cyberReport(Model model,HttpServletRequest request,HttpServletResponse response) throws Exception {
		String lang = request.getRequestURI().toString().substring(0,3);
		String locale = "";
		if("/en,/ru,/es".indexOf(lang) > -1){
			locale = "/en";
		}
		String url = locale+"/esg/cyberReport";
		RedirectView rv = new RedirectView();
	    rv.setStatusCode(HttpStatus.MOVED_PERMANENTLY);
	    rv.setUrl(url);
	    ModelAndView mv = new ModelAndView(rv);
	    return mv;
	}
	
	@GetMapping({"/ethics/information/"})
	public ModelAndView inquireRegForm(Model model,HttpServletRequest request,HttpServletResponse response) throws Exception {
		String lang = request.getRequestURI().toString().substring(0,3);
		String locale = "";
		if("/en,/ru,/es".indexOf(lang) > -1){
			locale = "/en";
		}
		String url = locale+"/esg/inquireRegForm?gubun=em";
		RedirectView rv = new RedirectView();
	    rv.setStatusCode(HttpStatus.MOVED_PERMANENTLY);
	    rv.setUrl(url);
	    ModelAndView mv = new ModelAndView(rv);
	    return mv;
	}
	
	@GetMapping({"/ethics/information/informationlogin.asp"})
	public ModelAndView inquireCheck(Model model,HttpServletRequest request,HttpServletResponse response) throws Exception {
		String lang = request.getRequestURI().toString().substring(0,3);
		String locale = "";
		if("/en,/ru,/es".indexOf(lang) > -1){
			locale = "/en";
		}
		String url = locale+"/esg/inquireCheck";
		RedirectView rv = new RedirectView();
	    rv.setStatusCode(HttpStatus.MOVED_PERMANENTLY);
	    rv.setUrl(url);
	    ModelAndView mv = new ModelAndView(rv);
	    return mv;
	}
	
	@GetMapping({"/ethics/*","/ethics/*/*","/ethics/*/*/*"})
	public ModelAndView ethics(Model model,HttpServletRequest request,HttpServletResponse response) throws Exception {
		String lang = request.getRequestURI().toString().substring(0,3);
		String locale = "";
		if("/en,/ru,/es".indexOf(lang) > -1){
			locale = "/en";
		}
		String url = locale+"/ethics";
		RedirectView rv = new RedirectView();
	    rv.setStatusCode(HttpStatus.MOVED_PERMANENTLY);
	    rv.setUrl(url);
	    ModelAndView mv = new ModelAndView(rv);
	    return mv;
	}
	
	@GetMapping({"/product/factory.asp"})
	public ModelAndView dangjin(Model model,HttpServletRequest request,HttpServletResponse response) throws Exception {
		String lang = request.getRequestURI().toString().substring(0,3);
		String locale = "";
		if("/en,/ru,/es".indexOf(lang) > -1){
			locale = "/en";
		}
		String url = locale+"/business/globalNetwork/dangjin";
		RedirectView rv = new RedirectView();
	    rv.setStatusCode(HttpStatus.MOVED_PERMANENTLY);
	    rv.setUrl(url);
	    ModelAndView mv = new ModelAndView(rv);
	    return mv;
	}
	
	@GetMapping({"/product/power.asp","/product/system.asp"})
	public ModelAndView electricity(Model model,HttpServletRequest request,HttpServletResponse response) throws Exception {
		String lang = request.getRequestURI().toString().substring(0,3);
		String locale = "";
		if("/en,/ru,/es".indexOf(lang) > -1){
			locale = "/en";
		}
		String url = locale+"/business/product/electricity";
		RedirectView rv = new RedirectView();
	    rv.setStatusCode(HttpStatus.MOVED_PERMANENTLY);
	    rv.setUrl(url);
	    ModelAndView mv = new ModelAndView(rv);
	    return mv;
	}
	
	@GetMapping({"/product/communication.asp"})
	public ModelAndView communication(Model model,HttpServletRequest request,HttpServletResponse response) throws Exception {
		String lang = request.getRequestURI().toString().substring(0,3);
		String locale = "";
		if("/en,/ru,/es".indexOf(lang) > -1){
			locale = "/en";
		}
		String url = locale+"/business/product/communication";
		RedirectView rv = new RedirectView();
	    rv.setStatusCode(HttpStatus.MOVED_PERMANENTLY);
	    rv.setUrl(url);
	    ModelAndView mv = new ModelAndView(rv);
	    return mv;
	}
	
	@GetMapping({"/product/material.asp"})
	public ModelAndView material(Model model,HttpServletRequest request,HttpServletResponse response) throws Exception {
		String lang = request.getRequestURI().toString().substring(0,3);
		String locale = "";
		if("/en,/ru,/es".indexOf(lang) > -1){
			locale = "/en";
		}
		String url = locale+"/business/product/material";
		RedirectView rv = new RedirectView();
	    rv.setStatusCode(HttpStatus.MOVED_PERMANENTLY);
	    rv.setUrl(url);
	    ModelAndView mv = new ModelAndView(rv);
	    return mv;
	}
	
	@GetMapping({"/product/certificateInfo.asp"})
	public ModelAndView certData(Model model,HttpServletRequest request,HttpServletResponse response) throws Exception {
		String lang = request.getRequestURI().toString().substring(0,3);
		String locale = "";
		if("/en,/ru,/es".indexOf(lang) > -1){
			locale = "/en";
		}
		String url = locale+"/customer/certData";
		RedirectView rv = new RedirectView();
	    rv.setStatusCode(HttpStatus.MOVED_PERMANENTLY);
	    rv.setUrl(url);
	    ModelAndView mv = new ModelAndView(rv);
	    return mv;
	}
	
	@GetMapping({"/product/catalog.asp"})
	public ModelAndView catalogue(Model model,HttpServletRequest request,HttpServletResponse response) throws Exception {
		String lang = request.getRequestURI().toString().substring(0,3);
		String locale = "";
		if("/en,/ru,/es".indexOf(lang) > -1){
			locale = "/en";
		}
		String url = locale+"/customer/catalogue";
		RedirectView rv = new RedirectView();
	    rv.setStatusCode(HttpStatus.MOVED_PERMANENTLY);
	    rv.setUrl(url);
	    ModelAndView mv = new ModelAndView(rv);
	    return mv;
	}
	
	@GetMapping({"/product/business_solution.asp"})
	public ModelAndView solution(Model model,HttpServletRequest request,HttpServletResponse response) throws Exception {
		String lang = request.getRequestURI().toString().substring(0,3);
		String locale = "";
		if("/en,/ru,/es".indexOf(lang) > -1){
			locale = "/en";
		}
		String url = locale+"/business/solution";
		RedirectView rv = new RedirectView();
	    rv.setStatusCode(HttpStatus.MOVED_PERMANENTLY);
	    rv.setUrl(url);
	    ModelAndView mv = new ModelAndView(rv);
	    return mv;
	}
	
	@GetMapping({"/company/business/quality.asp"})
	public ModelAndView esgManage(Model model,HttpServletRequest request,HttpServletResponse response) throws Exception {
		String lang = request.getRequestURI().toString().substring(0,3);
		String locale = "";
		if("/en,/ru,/es".indexOf(lang) > -1){
			locale = "/en";
		}
		String url = locale+"/esg/esgManage";
		RedirectView rv = new RedirectView();
	    rv.setStatusCode(HttpStatus.MOVED_PERMANENTLY);
	    rv.setUrl(url);
	    ModelAndView mv = new ModelAndView(rv);
	    return mv;
	}
	
	@GetMapping({"/company/business/environment.asp"})
	public ModelAndView environment(Model model,HttpServletRequest request,HttpServletResponse response) throws Exception {
		String lang = request.getRequestURI().toString().substring(0,3);
		String locale = "";
		if("/en,/ru,/es".indexOf(lang) > -1){
			locale = "/en";
		}
		String url = locale+"/esg/environment";
		RedirectView rv = new RedirectView();
	    rv.setStatusCode(HttpStatus.MOVED_PERMANENTLY);
	    rv.setUrl(url);
	    ModelAndView mv = new ModelAndView(rv);
	    return mv;
	}
	
	@GetMapping({"/company/business/health_safety.asp"})
	public ModelAndView safeManage(Model model,HttpServletRequest request,HttpServletResponse response) throws Exception {
		String lang = request.getRequestURI().toString().substring(0,3);
		String locale = "";
		if("/en,/ru,/es".indexOf(lang) > -1){
			locale = "/en";
		}
		String url = locale+"/esg/safeManage";
		RedirectView rv = new RedirectView();
	    rv.setStatusCode(HttpStatus.MOVED_PERMANENTLY);
	    rv.setUrl(url);
	    ModelAndView mv = new ModelAndView(rv);
	    return mv;
	}
	
	@GetMapping({"/company/business/donation.asp"})
	public ModelAndView socialContribution(Model model,HttpServletRequest request,HttpServletResponse response) throws Exception {
		String lang = request.getRequestURI().toString().substring(0,3);
		String locale = "";
		if("/en,/ru,/es".indexOf(lang) > -1){
			locale = "/en";
		}
		String url = locale+"/esg/socialContribution";
		RedirectView rv = new RedirectView();
	    rv.setStatusCode(HttpStatus.MOVED_PERMANENTLY);
	    rv.setUrl(url);
	    ModelAndView mv = new ModelAndView(rv);
	    return mv;
	}
	
	@GetMapping({"/company/business/composition.asp"})
	public ModelAndView ownership(Model model,HttpServletRequest request,HttpServletResponse response) throws Exception {
		String lang = request.getRequestURI().toString().substring(0,3);
		String locale = "";
		if("/en,/ru,/es".indexOf(lang) > -1){
			locale = "/en";
		}
		String url = locale+"/esg/ownership";
		RedirectView rv = new RedirectView();
	    rv.setStatusCode(HttpStatus.MOVED_PERMANENTLY);
	    rv.setUrl(url);
	    ModelAndView mv = new ModelAndView(rv);
	    return mv;
	}
	
	@GetMapping({"/company/business/fairtrade.asp"})
	public ModelAndView fairTrade(Model model,HttpServletRequest request,HttpServletResponse response) throws Exception {
		String lang = request.getRequestURI().toString().substring(0,3);
		String locale = "";
		if("/en,/ru,/es".indexOf(lang) > -1){
			locale = "/en";
		}
		String url = locale+"/esg/fairTrade";
		RedirectView rv = new RedirectView();
	    rv.setStatusCode(HttpStatus.MOVED_PERMANENTLY);
	    rv.setUrl(url);
	    ModelAndView mv = new ModelAndView(rv);
	    return mv;
	}
	
	@GetMapping({"/privacy.asp"})
	public ModelAndView privacy(Model model,HttpServletRequest request,HttpServletResponse response) throws Exception {
		String lang = request.getRequestURI().toString().substring(0,3);
		String locale = "";
		if("/en,/ru,/es".indexOf(lang) > -1){
			locale = "/en";
		}
		String url = locale+"/privacy";
		RedirectView rv = new RedirectView();
	    rv.setStatusCode(HttpStatus.MOVED_PERMANENTLY);
	    rv.setUrl(url);
	    ModelAndView mv = new ModelAndView(rv);
	    return mv;
	}
	
	@GetMapping({"/emailx.asp"})
	public ModelAndView email(Model model,HttpServletRequest request,HttpServletResponse response) throws Exception {
		String lang = request.getRequestURI().toString().substring(0,3);
		String locale = "";
		if("/en,/ru,/es".indexOf(lang) > -1){
			locale = "/en";
		}
		String url = locale+"/email";
		RedirectView rv = new RedirectView();
	    rv.setStatusCode(HttpStatus.MOVED_PERMANENTLY);
	    rv.setUrl(url);
	    ModelAndView mv = new ModelAndView(rv);
	    return mv;
	}
	
	
}
