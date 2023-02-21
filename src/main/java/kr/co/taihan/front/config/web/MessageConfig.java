package kr.co.taihan.front.config.web;

import org.springframework.beans.factory.annotation.Value;
import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.Configuration;
import org.springframework.context.support.MessageSourceAccessor;
import org.springframework.context.support.ReloadableResourceBundleMessageSource;

import java.util.Locale;

/**
 * MessageSource 설정
 * 
 * MessageConfig.java
 * 
 * @Company : digitalDigm Inc
 * @Author : Richard Song
 * @Date : 2017. 10. 30. 
 * 
 *  수정일                   수정자                  수정내용
 *  -------------   ------------    ---------------------------
 *  2017. 10. 30.	Richard Song	      최초 생성
 *
 */
@Configuration
public class MessageConfig {

	@Value("${spring.messages.basename}")
	String messagesBasename = null;
	
	@Value("${spring.messages.encoding}")
	String messagesEncoding = null;
	
	@Value("${spring.messages.cache-seconds}")
	int messagesCacheSeconds;
	
	//message source
	@Bean
	public ReloadableResourceBundleMessageSource messageSource(){
		ReloadableResourceBundleMessageSource messageSource = new ReloadableResourceBundleMessageSource();
		messageSource.setBasenames(messagesBasename.split(","));                
		messageSource.setDefaultEncoding(messagesEncoding);
		messageSource.setCacheSeconds(messagesCacheSeconds);
		messageSource.setDefaultLocale(Locale.KOREA);
		return messageSource;
	}

   	@Bean
   	public MessageSourceAccessor getMessageSourceAccessor(){
   		ReloadableResourceBundleMessageSource m = messageSource();
   		return new MessageSourceAccessor(m);
   	}	
   
}
