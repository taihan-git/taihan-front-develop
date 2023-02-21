package kr.co.taihan.front.model.json;


import java.util.Date;

import com.fasterxml.jackson.databind.annotation.JsonSerialize;



@JsonSerialize
public class Result {

	public static final String SUCCESS = "success";
	public static final String FAIL = "fail";
	public static final String ERROR = "error";
	public static final String PARAM_ERROR = "paramError";
	public static final String NO_DATA = "noData";
	
	/** 처리 결과 */
	private String status;
	/** 처리 결과 코드 */
	private String code;
	/** 메시지 */
	private String msg;
	/** 날짜 */
	private String date;
	
	public Result(Status status) {
		if (status != null) {
			this.status = status.getStatus();
			this.code = status.getCode();
			this.msg = status.getMessage();
		}
		
		setNowDate();
	}

	/**
	 * 생성자
	 */
	public Result() {
		this.status = Result.SUCCESS;
		this.code = "00";
		this.msg = "SUCCESS";
		setNowDate();
	}

	/**
	 * 생성자
	 *
	 * @param status
	 *            처리 상태
	 */
	public Result(String status) {
		this.status = status;
		if (Result.SUCCESS.equals(status)) {
			this.code = "00";
			this.msg = "SUCCESS";
		} else if (Result.FAIL.equals(status)) {
			this.code = "10";
			this.msg = "FAIL";

		} else if ("exception".equals(status)) {
			this.code = "99";
			this.msg = "Exception";
		}
		setNowDate();
	}

	/**
	 * 생성자
	 *
	 * @param status
	 *            처리 상태
	 * @param msg
	 *            메시지
	 */
	public Result(String status, String msg) {
		this.status = status;
		this.msg = msg;
		if (Result.FAIL.equals(status)) {
			this.code = "10";

		} else if ("exception".equals(status)) {
			this.code = "99";
		}
		setNowDate();
	}

	/**
	 * 생성자
	 *
	 * @param status
	 *            처리 상태
	 * @param code
	 *            처리 코드
	 * @param msg
	 *            메시지
	 */
	public Result(String status, String code, String msg) {
		this.status = status;
		this.code = code;
		this.msg = msg;
		setNowDate();
	}

	public void setNowDate() {
		date = new Date().toString();
	}

	public String getStatus() {
		return status;
	}

	public void setStatus(String status) {
		this.status = status;
	}

	public String getCode() {
		return code;
	}

	public void setCode(String code) {
		this.code = code;
	}

	public String getMsg() {
		return msg;
	}

	public void setMsg(String msg) {
		this.msg = msg;
	}

	public String getDate() {
		return date;
	}

	public void setDate(String date) {
		this.date = date;
	}
}
