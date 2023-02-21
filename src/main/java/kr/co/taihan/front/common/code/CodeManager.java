package kr.co.taihan.front.common.code;


import kr.co.taihan.front.common.util.ApplicationContextUtils;
import kr.co.taihan.front.service.CodeService;

import java.util.List;

public class CodeManager {

	/**
	 * 그룹(상위) 코드로 하위 코드 목록을 조회한다.
	 *
	 * @param upCd 그룹(상위) 코드
	 * @return List<Code> 하위 코드 목록
	 */
	public static List<Code> getCodes(String upCd) {
		if (upCd == null) {
			return null;
		}
		return ApplicationContextUtils.getBean(CodeService.class).getCodes(upCd);
	}

	/**
	 * 특정 그룹(상위) 코드 + 코드 값으로 코드 정보를 조회한다.
	 *
	 * @param upCd 그룹(상위) 코드
	 * @param cd   코드
	 */
	public static Code getCode(String upCd, String cd) {

		if (upCd == null || cd == null) {
			return null;
		}
		return ApplicationContextUtils.getBean(CodeService.class).getCodes(upCd).stream()
				.filter(c -> cd.equals(c.getCd())).findFirst().orElse(null);
	}

}
