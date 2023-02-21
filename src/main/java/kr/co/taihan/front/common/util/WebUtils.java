package kr.co.taihan.front.common.util;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.Enumeration;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import kr.co.d2.d2jwork.util.StringUtil;

public class WebUtils {

//
//
//	public static void showAlert(HttpServletRequest request, HttpServletResponse response,
//			String message, String action) throws Exception {
//
//		request.setAttribute("__sitemesh__decorator", "none");
//		PrintWriter pw = response.getWriter();
//		pw.println("<!DOCTYPE html PUBLIC \"-//W3C//DTD XHTML 1.0 Transitional//EN\" \"http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd\">");
//		pw.println("<html xmlns=\"http://www.w3.org/1999/xhtml\">\n<head>");
//		pw.println("<meta http-equiv=\"Content-Type\" content=\"text/html; charset=UTF-8\" />");
//		pw.println("<title>WebMessage</title>");
//
//		pw.println("<script type=\"text/javascript\">");
//		if (StringUtil.isNotEmpty(message))
//			pw.println("alert('" + StringUtil.replaceStr(message, "'", "\"") + "');");
//		if (StringUtil.isNotEmpty(action))
//			pw.println(action);
//		pw.println("</script>");
//
//		pw.println("</head>\n</html>");
//		pw.close();
//	}
//
//	public static void showAlert(HttpServletRequest request, HttpServletResponse response,
//			String message, String forwardUrl, String target) throws Exception {
//
//		String action = "";
//		if (StringUtil.isEmpty(forwardUrl))
//			action = "history.back();";
//		else {
//			action = ((StringUtil.isNotEmpty(target)) ? target : "document") + ".location.href='"
//					+ forwardUrl + "';";
//		}
//
//		showAlert(request, response, message, action);
//	}
//
//
//	public static void showErrorMessage(HttpServletRequest request,
//										HttpServletResponse response,
//										String message) throws Exception {
//		showAlert(request, response, message, null, null);
//	}
//
//	public static void showAlert(HttpServletRequest request, HttpServletResponse response,
//			String message) throws Exception {
//
//		showAlert(request, response, message, null, null);
//	}
//
//	public static void showAlertForward(HttpServletRequest request, HttpServletResponse response,
//			String message, String redirectUrl) throws Exception {
//
//		showAlert(request, response, message, redirectUrl, null);
//	}
//	public static void showErrorMessage(HttpServletRequest request,
//										HttpServletResponse response,
//										String message, String redirectUrl) throws Exception {
//		showAlert(request, response, message, redirectUrl, null);
//	}
//
//	public static void foward(HttpServletRequest request, HttpServletResponse response, String url)
//			throws Exception {
//
//		showAlertForward(request, response, null, url);
//	}
//
//	public static void showAlertTargetForward(HttpServletRequest req, HttpServletResponse res,
//			String message, String forwardUrl, String target) throws Exception {
//
//		showAlert(req, res, message, forwardUrl, target);
//	}
//
//	public static void showAlertPop(HttpServletRequest request, HttpServletResponse response,
//			String message, String forwardUrl, String openerForwardUrl) throws Exception {
//
//		String action = "";
//		if (StringUtil.isNotEmpty(openerForwardUrl)) {
//			if (openerForwardUrl.equals("reload"))
//				action = "opener.location.reload();";
//			else {
//				action = "opener.location.href='" + openerForwardUrl + "';";
//			}
//		}
//		if (StringUtil.isNotEmpty(forwardUrl))
//			action = action + "document.location.href='" + forwardUrl + "';";
//		else {
//			action = action + "self.close();";
//		}
//
//		showAlert(request, response, message, action);
//	}
//
//	public static void showAlertClose(HttpServletRequest request, HttpServletResponse response,
//			String message) throws Exception {
//
//		showAlertPop(request, response, message, null, null);
//	}
//
//	public static void showAlertCloseOpenerReload(HttpServletRequest request,
//			HttpServletResponse response, String message) throws Exception {
//
//		showAlertPop(request, response, message, null, "reload");
//	}
//
//	public static void showAlertCloseOpenerForward(HttpServletRequest request,
//			HttpServletResponse response, String message, String openerForwardUrl) throws Exception {
//
//		showAlertPop(request, response, message, null, openerForwardUrl);
//	}
//
//	public static void showAlertSubmit(HttpServletRequest request, HttpServletResponse response,
//			String message, String url) throws IOException {
//
//		request.setAttribute("__sitemesh__decorator", "none");
//		PrintWriter out = response.getWriter();
//		out.println("<form name=\"f7\" action=\"" + url + "\" method=\"get\">");
//
//		Enumeration<?> e = request.getParameterNames();
//		while (e.hasMoreElements()) {
//			String name = (String) e.nextElement();
//			String[] values = request.getParameterValues(name);
//			for (int i = 0; i < values.length; ++i) {
//				out.println("<input type=\"hidden\" name=\"" + name + "\" value=\"" + values[i]
//						+ "\">");
//			}
//		}
//		out.println("</form>");
//		out.println("<script type='text/javascript'>");
//		if (StringUtil.isNotEmpty(message))
//			out.println("alert('" + StringUtil.replaceStr(message, "'", "\"") + "');");
//		out.println("f7.submit();");
//		out.println("</script>");
//		out.close();
//	}
//
//	/**
//	 * Frame ��� refresh
//	 * @param request
//	 * @param response
//	 * @param url
//	 * @throws Exception
//	 */
//	public static void fowardParent(HttpServletRequest request, HttpServletResponse response, String url)
//			throws Exception {
//
//		request.setAttribute("__sitemesh__decorator", "none");
//		PrintWriter pw = response.getWriter();
//		pw.println("<!DOCTYPE html PUBLIC \"-//W3C//DTD XHTML 1.0 Transitional//EN\" \"http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd\">");
//		pw.println("<html xmlns=\"http://www.w3.org/1999/xhtml\">\n<head>");
//		pw.println("<meta http-equiv=\"Content-Type\" content=\"text/html; charset=UTF-8\" />");
//		pw.println("<title>WebMessage</title>");
//
//		pw.println("<script type=\"text/javascript\">");
//		pw.println("if(parent && parent!=this) { ");
//		pw.println("	parent.location.href='"+url+"'");
//		pw.println("}else{");
//		pw.println("	location.href='"+url+"'");
//		pw.println("}");
//		pw.println("</script>");
//
//		pw.println("</head>\n</html>");
//		pw.close();
//	}
}