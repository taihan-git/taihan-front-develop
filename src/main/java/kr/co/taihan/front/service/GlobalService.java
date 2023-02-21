package kr.co.taihan.front.service;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import kr.co.taihan.front.model.Privacy;

import java.util.Collection;
import java.util.List;
import java.util.Map;

public interface GlobalService {
  
  /**
   * 캡챠 이미지 생성
   * @param req
   * @param res
   */
  void getImgCaptCha(HttpServletRequest req, HttpServletResponse res);
  
  /**
   * 캡챠 오디오
   * @param req
   * @param res
   */
  void getAudioCaptCha(HttpServletRequest req, HttpServletResponse res);

  /**
   * 캡챠 조회
   * @param pcId
   * @return
   */
  String chkCaptcha(HttpServletRequest req, HttpServletResponse res);


  /**
   * 메인 노출 리스트 전체 조회
   * @return
   * @throws Exception
   */
  Map<String,Object> getMainList() throws Exception;

  /**
   * 개인정보 처리방침 조회
   * @return
   * @throws Exception
   */
  Map<String, Object> getPrivacyList(Privacy param);


  /**
   * 파일 다운로드 조회
   * @param fileName
   * @return
   */
  int getFileCheckCount(String fileName);


}
