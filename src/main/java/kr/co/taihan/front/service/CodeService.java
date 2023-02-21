package kr.co.taihan.front.service;


import kr.co.taihan.front.common.code.Code;

import java.util.List;

public interface CodeService {

  /**
   * 특정 코드 그룹(UP_CD)의 하위 코드들 조회.
   *
   * @param upCd 그룹(상위) 코드
   * @return List<Code> 하위 코드 목록
   */
  List<Code> getCodes(String upCd);

}
