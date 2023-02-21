package kr.co.taihan.front.service.impl;

import java.awt.Color;
import java.awt.Font;
import java.util.*;
import java.util.stream.Collectors;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import kr.co.taihan.front.common.util.CommonUtils;
import kr.co.taihan.front.common.util.RequestUtils;
import kr.co.taihan.front.dao.BusinessMapper;
import kr.co.taihan.front.dao.DisplayMapper;
import kr.co.taihan.front.model.*;
import org.apache.commons.lang3.ObjectUtils;
import org.apache.commons.lang3.StringUtils;
import org.aspectj.weaver.ast.Not;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.i18n.LocaleContextHolder;
import org.springframework.mobile.device.Device;
import org.springframework.mobile.device.DeviceUtils;
import org.springframework.stereotype.Service;
import kr.co.d2.d2jwork.util.CookieUtil;
import kr.co.taihan.front.dao.GlobalMapper;
import kr.co.taihan.front.service.GlobalService;
import lombok.extern.slf4j.Slf4j;
import nl.captcha.Captcha;
import nl.captcha.audio.AudioCaptcha;
import nl.captcha.backgrounds.GradiatedBackgroundProducer;
import nl.captcha.servlet.CaptchaServletUtil;
import nl.captcha.text.producer.NumbersAnswerProducer;
import nl.captcha.text.producer.TextProducer;
import nl.captcha.text.renderer.DefaultWordRenderer;


@Service
@Slf4j
public class GlobalServiceImpl implements GlobalService {
  
  @Autowired
  GlobalMapper globalMapper;
  @Autowired
  DisplayMapper displayMapper;

  @Override
  public Map<String, Object> getMainList() throws Exception {
    Map<String,Object> map = new HashMap<>();
    String lang = LocaleContextHolder.getLocale().getLanguage();
    String channel = "P";

    Device device = DeviceUtils.getCurrentDevice(RequestUtils.getRequest());
    if(device.isMobile()){
      channel = "M";
    }

    List<MainBanner> mainBanners = displayMapper.selectMainBannerList(new MainBanner(lang,channel));

//    mainBanners.stream().forEach(o -> {
//      if(StringUtils.isNotEmpty(o.getMungu2())){
//        o.setMunguList(Arrays.asList(o.getMungu2().split("&lt;br&gt;"))); //TODO 추후 변경
//      }
//    });

    map.put("bannerList",mainBanners);
    map.put("newsList",displayMapper.selectDispNewsList(new DispNews(lang)));
    map.put("popupList",displayMapper.selectNoticePopupList(new NoticePopup(lang,channel)));
    map.put("successList",displayMapper.selectSuccessCaseList(new SuccessCase(lang)));
    map.put("isMobile", device.isMobile());

    return map;
  }

  @Override
  public void getImgCaptCha(HttpServletRequest req, HttpServletResponse res) {
    // TODO Auto-generated method stub
    CookieUtil cookieUtil = new CookieUtil(req, res);
    String pcid = cookieUtil.getCookie("PCID");
    
    int width = 150; /*보안문자 이미지 가로크기*/
    int height = 50; /*보안문자 이미지 세로크기*/
    
    List<Font> fontList = new ArrayList<Font>();
    fontList.add(new Font("", Font.HANGING_BASELINE, 40));
    fontList.add(new Font("Courier", Font.ITALIC, 40));
    fontList.add(new Font("", Font.PLAIN, 40));
    List<Color> colorList = new ArrayList<Color>();
    colorList.add(Color.BLACK);
    
    Captcha captcha = new Captcha.Builder(width,  height)
            // .addText() 또는 아래와 같이 정의 : 4자리 숫자와 폰트 및 컬러 설정
            .addText(new NumbersAnswerProducer(4), new DefaultWordRenderer(colorList, fontList))
            .addNoise().addBorder()
            .addBackground(new GradiatedBackgroundProducer())
            .build();
    
    //이중화로 세션공유가 안될수 있으니 캡챠값 db 저장 
    HashMap<String,String> param = new HashMap<String,String>();
    param.put("pcid", pcid);
    param.put("answer", captcha.getAnswer());
    globalMapper.insertCaptcha(param);
    CaptchaServletUtil.writeImage(res,  captcha.getImage());
  }

  @Override
  public String chkCaptcha(HttpServletRequest req, HttpServletResponse res) {
    CookieUtil cookieUtil = new CookieUtil(req, res);
    String pcid = cookieUtil.getCookie("PCID");
    return globalMapper.selectCaptchaAnswer(pcid);
  }

  @Override
  public void getAudioCaptCha(HttpServletRequest req, HttpServletResponse res) {
    // TODO Auto-generated method stub
    CookieUtil cookieUtil = new CookieUtil(req, res);
    String pcid = cookieUtil.getCookie("PCID");
    String answer = globalMapper.selectCaptchaAnswer(pcid);
    
    AudioCaptcha audiocaptcha = new AudioCaptcha.Builder()
            .addAnswer(new SetTextProducer(answer))
            .addNoise() /*잡음 추가*/
            .build();
    
    CaptchaServletUtil.writeAudio(res,  audiocaptcha.getChallenge());
  }
  
  class SetTextProducer implements TextProducer {
    private final String str;

    public SetTextProducer(String getAnswer) {
      this.str = getAnswer;
    }

    @Override
    public String getText() {
      return this.str;
    }
  }

  @Override
  public Map<String, Object> getPrivacyList(Privacy param) {
    Map<String, Object> map = new HashMap<>();
    param.setLang(CommonUtils.getLang());

    Privacy privacy = globalMapper.selectPrivacy(param);

    if (ObjectUtils.isEmpty(privacy)) {
      return null;
    }

    List<Privacy> privacyList = globalMapper.selectPrivacyList(param)
            .stream()
            //.filter(o -> !o.getIdx().equals(privacy.getIdx()))
            .collect(Collectors.toList());
    map.put("privacy", privacy.getContent());
    map.put("privacyList", privacyList);
    return map;
  }

  @Override
  public int getFileCheckCount(String fileName) {
    return globalMapper.selectFileCheck(fileName);
  }
}
