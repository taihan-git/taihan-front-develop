package kr.co.taihan.front.common.util;

import org.apache.commons.httpclient.HttpClient;
import org.apache.commons.httpclient.HttpException;
import org.apache.commons.httpclient.HttpStatus;
import org.apache.commons.httpclient.NameValuePair;
import org.apache.commons.httpclient.methods.PostMethod;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.support.MessageSourceAccessor;
import org.springframework.stereotype.Component;

import java.io.IOException;

@Component
public class InterfaceManager {
	
	private Logger ifLogger = LoggerFactory.getLogger("IFMGR");
	private Logger logger = LoggerFactory.getLogger(getClass());

	@Autowired
	private MessageSourceAccessor mr;

	public void Init() {

	}

	/**
	 * HTTP Call by Post Method
	 * 
	 * @param url
	 * @param data
	 * @return
	 * @throws Exception
	 */
	private String postUrl(String url, NameValuePair[] data) throws Exception {
		
		String resBodyStr = "";

		// Create an instance of HttpClient.
		HttpClient client = new HttpClient();
		PostMethod post = new PostMethod(url);
	
		post.setRequestBody(data);
		post.setRequestHeader("Content-Type", "application/x-www-form-urlencoded; charset=UTF-8");

		try {
			// Execute the method.
			logger.info("start user info");
			int statusCode = client.executeMethod(post);
			logger.info("end user info");
			if (statusCode != HttpStatus.SC_OK) {
				logger.debug("Method failed: " + post.getStatusLine());
			}

			// Read the response body.
			byte[] responseBody = post.getResponseBody();

			// Deal with the response.
			// Use caution: ensure correct character encoding and is not binary data
			resBodyStr = new String(responseBody, "utf-8");

		} catch (HttpException e) {
			logger.error("Fatal protocol violation: ", e);
		} catch (IOException e) {
			logger.error("Fatal transport error: ", e);
		} finally {
			// Release the connection.
			post.releaseConnection();
		}

		return resBodyStr;
	}

}
