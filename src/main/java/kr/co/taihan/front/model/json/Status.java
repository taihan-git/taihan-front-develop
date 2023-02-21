package kr.co.taihan.front.model.json;

public enum Status {
	SUCCESS("SUCCESS", "00", "성공"), 
	EXCEPTION_FAIL("EXCEPTION_FAIL", "99", "오류가 발생하였습니다."),

	AUTHENTICATION_FAIL("AUTHENTICATION_FAIL", "1000", "계정 인증에 실패하였습니다."),
	AUTHENTICATION_DENIED("AUTHENTICATION_DENIED", "1001", "권한이 없습니다."),
	AUTHENTICATION_EXPIRED("AUTHENTICATION_EXPIRED", "1002", "로그인 시간이 만료되었습니다."),

	LOGIN_FAIL("LOGIN_FAIL", "2000", "아이디 또는 비밀번호를 확인해주세요."),
	LOGIN_FAIL_MAX("LOGIN_FAIL_MAX", "2001", "입력하신 아이디 또는 비밀번호 입력 허용 횟수 5회를 초과하였습니다.\n비밀번호 잠금을 해제하시겠습니까?"),
	DORMANT_ACCOUNT("DORMANT_ACCOUNT", "2002", "1년 이상 접속하지 않아 휴면계정으로 전환되었습니다. 운영사에 문의 바랍니다.\n담당자 E-mail : vwvdl@d2.co.kr"),

	PASSWORD_CHANGE_FAIL("PASSWORD_CHANGE_FAIL", "3000", "비밀번호 변경에 실패하였습니다."),
	PASSWORD_LENGTH_ERROR("PASSWORD_LENGTH_ERROR", "3001", "비밀번호 길이가 짧습니다."),
	PASSWORD_MATCH_ERROR("PASSWORD_MATCH_ERROR", "3002", "영문, 숫자, 특수문자 조합 10자리 이상"),
	PASSWORD_OLD_ERROR("PASSWORD_OLD_ERROR", "3003", "현재와 다른 비밀번호로 변경해주세요."),
	PASSWORD_NOT_SAME_ERROR("PASSWORD_NOT_SAME_ERROR", "3004", "새 비밀번호를 동일하게 입력해 주세요."),
	PASSWORD_FAIL("PASSWORD_FAIL","3005","비밀번호가 잘못 되었습니다."),
	NOW_PASSWORD_FAIL("NOW_PASSWORD_FAIL","3006","현재 비밀번호가 맞지 않습니다."),
	NOT_USE_PASSWORD_FAIL("NOT_USE_PASSWORD_FAIL","3007","연속된 숫자나 문자는 사용할 수 없습니다."),
	PHONE_SMS_CERT_FAIL("SMS_CERT_FAIL", "4000", "인증번호를 확인해주세요."),
	PHONE_NUMBER_FAIL("PHONE_NUMBER_FAIL", "4001", "핸드폰 번호가 옳바르지 않습니다.\nvwvdl@d2.co.kr로 문의바랍니다."),
	OLD_NEW_PHONE_INCONSISTENCY("OLD_NEW_PHONE_INCONSISTENCY", "4002", "기존 등록된 전화번호와 일치하지 않습니다."),
	
	
	DEALER_ID_ERROR("DEALER_ID_ERROR", "5000", "딜러 정보가 없습니다."),
	
	;

	private String status;
	private String code;
	private String message;

	private Status(String status, String code, String message) {
		this.status = status;
		this.code = code;
		this.message = message;
	}

	public String getStatus() {
		return status;
	}

	public String getCode() {
		return code;
	}

	public String getMessage() {
		return message;
	}
}
