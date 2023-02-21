package kr.co.taihan.front.common.util;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import kr.co.d2.d2jwork.util.WebMessageUtil;

/**
 * d2jwork 2.0에서 제거된 메소드 보완.
 *
 * @author ysh3342
 *
 */
public class WebUtil extends WebMessageUtil {

	/**
	 * showErrorMessage (showAlertForward)
	 *
	 * @param request
	 * @param response
	 * @param message
	 * @param redirectUrl
	 * @throws Exception
	 */
	/*public static void showErrorMessage(HttpServletRequest request,
			HttpServletResponse response, String message, String redirectUrl)
			throws Exception {
		WebMessageUtil
				.showAlertForward(request, response, message, redirectUrl);
	}*/
}
