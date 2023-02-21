package kr.co.taihan.front.common.util;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.support.MessageSourceAccessor;
import org.springframework.stereotype.Component;

import java.util.Locale;

@Component
public class MessageUtils {

	private static MessageSourceAccessor msAcc = null;

	@Autowired
	public void setMessageSourceAccessor(MessageSourceAccessor msAcc) {
		MessageUtils.msAcc = msAcc;
	}

	/**
	* KEY에 해당하는 메세지 반환
	* @param key
	* @return
	*/
	public static String getMessage(String key) {
		return msAcc.getMessage(key, Locale.getDefault());
	}
//	public static String getMessageEnc(String key) {
//		StandardPBEStringEncryptor pbeEnc = new StandardPBEStringEncryptor();
//		pbeEnc.setAlgorithm("PBEWITHMD5ANDDES");
//		pbeEnc.setPassword("d2.co.kr");
//		return pbeEnc.decrypt(msAcc.getMessage(key, Locale.getDefault())).trim();
//	}

	/**
	* KEY에 해당하는 메세지 반환
	* @param key
	* @param objs
	* @return
	*/
	public static String getMessage(String key, Object[] objs) {
		return msAcc.getMessage(key, objs, Locale.getDefault());
	}

	public static String getMessage(String key, Object[] objs, Locale locale) {
		return msAcc.getMessage(key, objs, locale);
	}

}
