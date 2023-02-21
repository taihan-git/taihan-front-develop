package kr.co.taihan.front.web;

import kr.co.d2.d2jwork.util.WebMessageUtil;
import kr.co.taihan.front.common.exception.BizException;
import kr.co.taihan.front.model.Privacy;
import kr.co.taihan.front.model.json.Result;
import kr.co.taihan.front.model.json.ResultData;
import kr.co.taihan.front.service.GlobalService;
import lombok.extern.slf4j.Slf4j;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.i18n.LocaleContextHolder;
import org.springframework.context.support.MessageSourceAccessor;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.*;
import java.net.URLEncoder;

@Controller
@Slf4j
public class GlobalController {
  
  @Autowired
  private GlobalService globalService;
  @Autowired
  private MessageSourceAccessor msa;
  
  @GetMapping({"/","/en"})
  public String index(Model model) throws Exception {
    model.addAllAttributes(globalService.getMainList());
    return "/main";
  }
  
  @GetMapping({"/privacy","/en/privacy"})
  public String privacy(Model model,Privacy param) throws Exception {
	  model.addAllAttributes(globalService.getPrivacyList(param));
	  model.addAttribute("schIdx", param.getSchIdx());
    return "/privacy";
  }
  
  @GetMapping({"/email","/en/email"})
  public String email(Model model) throws Exception {
    return "/email";
  }

  @GetMapping("/error/ie")
  public String test(Model model) throws Exception {
    return "/error/ie";
  }

  @GetMapping("/download")
  public void download(HttpServletRequest request, HttpServletResponse response) throws Exception {
    try {
      String orgFileName = request.getParameter("orgFileName");
      String fileName = request.getParameter("fileName");

      fileName = fileName.replace("&amp;", "&");
      orgFileName = orgFileName.replace("&amp;", "&");

      String[] blockchar = {"..","../","..\\"};
      boolean checkResult = true;
      // 금지할 문자열 포함 여부 체크
      for(int i=0; i<blockchar.length;i++){
        if(fileName.indexOf(blockchar[i])!=-1){
          checkResult = false;
          break;
        }
      }
      if(!checkResult){
        WebMessageUtil.showAlert(request, response, "잘못된 요청입니다.","/");
        return;
      }

      int fileChkCnt = globalService.getFileCheckCount(fileName);

      if(fileChkCnt == 0){
        WebMessageUtil.showAlert(request, response, "잘못된 요청입니다.","/");
        return;
      }

      String filePath = msa.getMessage("con.file.path");
      File dFile = new File(filePath, fileName);
      int fSize = (int) dFile.length();
      
      if (fSize > 0) {
        String encodedFilename =
            "attachment; filename*=" + "UTF-8" + "''" + URLEncoder.encode(orgFileName, "UTF-8");

        // ContentType 설정
        response.setContentType("application/octet-stream; charset=utf-8");

        // Header 설정
        response.setHeader("Content-Disposition", encodedFilename);

        // ContentLength 설정
        response.setContentLengthLong(fSize);

        BufferedInputStream in = null;
        BufferedOutputStream out = null;

        in = new BufferedInputStream(new FileInputStream(dFile));

        out = new BufferedOutputStream(response.getOutputStream());

        try {
          byte[] buffer = new byte[4096];
          int bytesRead = 0;

          while ((bytesRead = in.read(buffer)) != -1) {
            out.write(buffer, 0, bytesRead);
          }
          out.flush();
        } finally {
          in.close();
          out.close();
        }
      } else {
        throw new FileNotFoundException("파일이 없습니다.");
      }
    } catch (Exception e) {
    }
  }
  
  @GetMapping("/captchaImg")
  @ResponseBody
  public void captchaImg(HttpServletRequest req, HttpServletResponse res) throws Exception {
    globalService.getImgCaptCha(req, res);
  }

  @GetMapping("/captchaAudio")
  @ResponseBody
  public void captchaAudio(HttpServletRequest req, HttpServletResponse res) throws Exception {
    globalService.getAudioCaptCha(req, res);
  }

  @GetMapping("/chkCaptcha")
  @ResponseBody
  public ResultData<String> chkCaptcha(HttpServletRequest req, HttpServletResponse res) throws Exception {
    ResultData<String> resultData = new ResultData<>();
    try {
      resultData.setResultData(globalService.chkCaptcha(req,res));
    } catch (BizException e) {
      return new ResultData<>(Result.FAIL,e.getMessage(),null);
    } catch (Exception e ){
      logger.error(e.getMessage());
      return new ResultData<>(Result.ERROR,e.getMessage(),null);
    }
    return resultData;
  }

  @GetMapping("/error/404")
  public String error404(HttpServletRequest request, Model model) throws Exception {
    model.addAttribute("LANG", LocaleContextHolder.getLocale().getLanguage());
    return "error/404";
  }

  @GetMapping("/error/500")
  public String error500(Model model) throws Exception {
    String lang = LocaleContextHolder.getLocale().getLanguage();
    model.addAttribute("LANG", LocaleContextHolder.getLocale().getLanguage());
    return "/error/404";
  }

  @GetMapping("/error/default")
  public String errorDefault(Model model) throws Exception {
    String lang = LocaleContextHolder.getLocale().getLanguage();
    model.addAttribute("LANG", LocaleContextHolder.getLocale().getLanguage());
    return "/error/404";
  }
  
  @RequestMapping(value = "/robots.txt")
  @ResponseBody
	public String robots() {
		return "User-agent: *\nAllow: /\n";
	}
}
