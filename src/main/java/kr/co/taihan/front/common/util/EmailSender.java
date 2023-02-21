package kr.co.taihan.front.common.util;

import kr.co.d2.d2jwork.util.SendMailUtil;
import kr.co.d2.d2jwork.util.StringUtil;

public class EmailSender extends SendMailUtil {

	private boolean isExistTemplateFile = false;
	private String templatePath;
	/**
	 * 템플릿변수
	 */
	private String templateHtml = "";

	public String getTemplatePath() {
		return templatePath;
	}

	public void setTemplatePath(String templatePath) {
		this.templatePath = templatePath;
	}

	/**
	 * 템플릿 타입을 세팅
	 *
	 * @param templateCode
	 * @throws Exception
	 */
	public void setTemplateType(String templateCode) throws Exception {
		// String templatePath =
		// PropertiesManager.getProperty("con.mail.template.path");
		templateHtml = CommonUtils.fileRead(templatePath + templateCode);
		
		if (templateHtml == null || templateHtml.isEmpty()) {
			isExistTemplateFile =  false;
		} else {
			isExistTemplateFile = true;
		}
	}

	/**
	 * 받는 사람 세팅
	 *
	 * @param address
	 */
	public void setTo(String address) {
		super.setTo(address);
	}

	/**
	 * 받는 사람 세팅
	 *
	 * @param personal
	 * @param address
	 */
	public void setTo(String personal, String address) {
		super.setTo(personal + "<" + address + ">");
	}

	/**
	 * 내용 replace 세팅
	 *
	 * @param key
	 * @param value
	 * @throws Exception
	 */
	public void setDataBinder(String key, String value) throws Exception {
		templateHtml = StringUtil.replaceStr(templateHtml, key, value);
	}

	/**
	 * 템플릿 가져오기
	 *
	 * @return
	 * @uml.property name="templateHtml"
	 */
	public String getTemplateHtml() {
		return templateHtml;
	}
	
	public boolean isExistTemplateFile() {
		return isExistTemplateFile;
	}

	/**
	 * 메일 발송
	 *
	 * @throws Exception
	 */
	public void transport() throws Exception {
		// String Host = PropertiesManager.getProperty("con.mail.host");
		// super.setHost(Host);
		super.setContents("text/html;charset=utf-8", getTemplateHtml());
		super.transport();
	}

}
