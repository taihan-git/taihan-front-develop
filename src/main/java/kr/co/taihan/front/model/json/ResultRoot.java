package kr.co.taihan.front.model.json;

import java.util.Date;

import com.fasterxml.jackson.databind.annotation.JsonDeserialize;

//@JsonSerialize(include = Inclusion.NON_DEFAULT) // 생성자에서 할당한 값들이 기본값으로 인식되어 출력되지 않음 -_-;;
@JsonDeserialize
public class ResultRoot {

	/** 처리 상태 */
	private String status = "";
	/** 처리구분 코드 */
	private String code = "";
	/** 메시지 */
	private String msg = "";
	
	private String date = new Date().toString();


	/**
	 * 생성자(기본) : 성공
	 */
	public ResultRoot() {
		this.status = "success";
		this.code = "00";
		this.msg = "success";
	}

	/**
	 * 생성자(메시지 기본)
	 * @param status
	 */
	public ResultRoot(String status) {
		this.status = status;
		if ("fail".equals(status)) {
			this.code = "10";
			this.msg = "fail";

		} else if ("exception".equals(status)) {
			this.code = "99";
			this.msg = "ex";
		}		
	}
	
	/**
	 * 상황별 생성자
	 * 
	 * @param status
	 * @param msg
	 */
	public ResultRoot(String status, String msg) {
		this.status = status;
		this.msg = msg;
		if ("fail".equals(status)) {
			this.code = "10";

		} else if ("exception".equals(status)) {
			this.code = "99";
		}
	}

	/**
	 * 상황별 생성자
	 * 
	 * @param status
	 * @param code
	 * @param msg
	 */
	public ResultRoot(String status, String code, String msg) {
		this.status = status;
		this.code = code;
		this.msg = msg;
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

