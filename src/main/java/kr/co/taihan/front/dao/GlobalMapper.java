package kr.co.taihan.front.dao;

import java.util.List;
import java.util.Map;

import kr.co.taihan.front.model.MainBanner;
import kr.co.taihan.front.model.Privacy;
import kr.co.taihan.front.model.SeoModel;
import org.apache.ibatis.annotations.Param;

public interface GlobalMapper {
  
  /**
   * 캡챠 인증값 저장
   * @param param
   * @return
   * @throws Exception
   */
  public int insertCaptcha(Map<String,String> param);
  
  /**
   * 캡챠 인증값 조회
   * @param param
   * @return
   */
  public String selectCaptchaAnswer(String pcid);
  
  /**
   * 캡챠 삭제
   * @param param
   * @return
   */
  public String deleteCaptcha(String pcid);
  
  /**
   * seo 조회
   * @param seoModel
   * @return
  */
  public SeoModel selectSeoResult(SeoModel seoModel);
  
  public int insertSeoUri(SeoModel seoModel);

  /**
   * 개인정보 처리방침 조회
 * @param param 
   * @param param
   * @return
  */
  public Privacy selectPrivacy(Privacy param);
  /**
   * 개인정보 처리방침 전체 조회
   * @param 
   * @return
  */
  public List<Privacy> selectPrivacyList(Privacy param);


  /**
   * 파일 조회
   * @param fileName
   * @return
   */
  int selectFileCheck(@Param(("fileName")) String fileName);


}
