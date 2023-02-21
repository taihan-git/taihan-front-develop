package kr.co.taihan.front.common.aop;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.aop.ThrowsAdvice;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.support.MessageSourceAccessor;

/**
 * 오류 관련 어드바이스
 * 
 * CommonThrowsAdvice.java
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
public class CommonThrowsAdvice implements ThrowsAdvice {

	private static final Logger logger = LoggerFactory
			.getLogger(CommonThrowsAdvice.class);
	private static Exception prevEx;

	@Autowired
	private MessageSourceAccessor msa;

//	public void afterThrowing(Exception ex) throws Throwable {
//		logger.debug("######## CommonThrowsAdvice.afterThrowing Start");
//		if (ex != prevEx) {
//			sendErrorMessage(ex);
//		}
//		prevEx = ex;
//		logger.debug("######## CommonThrowsAdvice.afterThrowing End");
//	}

//	public void sendErrorMessage(Exception ex) {
//		logger.debug("#### CommonThrowsAdvice.sendErrorMessage Start");
//		try {
//			
//			//계정
//			Properties props = System.getProperties();
//			final String gmailId = "audi.d2.projectmonitor";
//			final String gmailPw = "d2.co.kr^^##";
//			
//			props.put("mail.smtp.host", "smtp.gmail.com"); 
//	        props.put("mail.smtp.port", "587"); 
//	        props.put("mail.debug", "true"); 
//	        props.put("mail.smtp.auth", "true"); 
//	        props.put("mail.smtp.starttls.enable","true"); 
//	        props.put("mail.smtp.EnableSSL.enable","true");
//	        props.setProperty("mail.smtp.socketFactory.class", "javax.net.ssl.SSLSocketFactory");   
//	        props.setProperty("mail.smtp.socketFactory.fallback", "false");   
//	        props.setProperty("mail.smtp.port", "465");   
//	        props.setProperty("mail.smtp.socketFactory.port", "465"); 
//	        
//	        Session session = Session.getInstance(props, 
//	                new javax.mail.Authenticator() { 
//	               protected PasswordAuthentication getPasswordAuthentication() { 
//	               return new PasswordAuthentication(gmailId, gmailPw); 
//	               }});
//	        
//			String server = msa.getMessage("con.server.id");
//			String siteName = msa.getMessage("con.site.name");
//			String mailHost = msa.getMessage("con.mail.host");
//			String mailFrom = msa.getMessage("con.mail.from");
//			String[] mailTo = msa.getMessage("con.mail.admin.adresses").split(
//					",");
//
//			StringWriter sw = new StringWriter();
//			PrintWriter pw = new PrintWriter(sw);
//			
//			Message message = new MimeMessage(session); 
//
//			if ("local".equals(server)) {
//				logger.debug("#### CommonThrowsAdvice.sendErrorMessage Local Server End");
//				return;
//			}
//			if(!"local".equals(server)){
//				
//				message.setFrom(new InternetAddress(mailFrom)); 
//				
//				StringBuffer errMsg = new StringBuffer();
//				errMsg.append("<div>");
//				errMsg.append("**********************************<br />");
//				errMsg.append("Server : ").append(server).append("<br />");
//				errMsg.append("Caught : ").append(ex.getClass().getName())
//						.append("<br />");
//				errMsg.append("Detail : ");
//				errMsg.append("<div style=\"padding-left:8px;color:#666;\">");
//				errMsg.append(sw.toString().replaceAll("\n", "<br />"));
//				errMsg.append("</div>");
//				errMsg.append("<br />********************************");
//				errMsg.append("</div>");
//	
//				/*SendMailUtil sm = new SendMailUtil();
//				sm.setHost(mailHost);
//				sm.setFrom(siteName, mailFrom);
//				for (int i = 0; i < mailTo.length; i++) {
//					sm.setTo("", mailTo[i]);
//				}
//				sm.setSubject(DateUtil.getDateTime("[Y/M/D h:m:s]")
//						+ " Exception Reporting : " + ex.getClass().getName());
//				sm.setContents("text/html", errMsg.toString());
//				sm.transport();*/
//				
//				InternetAddress[] toAddr = new InternetAddress[mailTo.length]; 
//				for (int i = 0; i < mailTo.length; i++) {
//					toAddr[i] = new InternetAddress (mailTo[i]); 
//				}
//				message.setRecipients(Message.RecipientType.TO, toAddr );
//				
//				message.setSubject(DateUtil.getDateTime("[Y/M/D h:m:s]")
//						+ "AUDI AVK SERVER(135) ADL FRONT Exception Reporting");
//		        message.setContent(errMsg.toString(), "text/html; charset=utf-8");//내용
//		        
//		        Transport.send(message); 
//			}
//
//		} catch (Exception e) {
//			logger.error("#### CommonThrowsAdvice.sendErrorMessage Exception",
//					e);
//		}
//		logger.debug("#### CommonThrowsAdvice.sendErrorMessage End");
//	}
}
