package kr.co.taihan.front.common.util;

import java.io.BufferedReader;
import java.io.FileInputStream;
import java.io.IOException;
import java.io.InputStreamReader;
import java.io.PrintWriter;
import java.security.SecureRandom;
import java.util.Arrays;
import java.util.Calendar;
import java.util.Locale;
import java.util.Random;
import java.util.TimeZone;
import java.util.regex.Matcher;
import java.util.regex.Pattern;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.context.i18n.LocaleContextHolder;
import org.springframework.web.context.request.RequestContextHolder;
import org.springframework.web.context.request.ServletRequestAttributes;
import org.springframework.web.util.HtmlUtils;

import kr.co.d2.d2jwork.util.StringUtil;
import lombok.extern.slf4j.Slf4j;
@Slf4j
public class CommonUtils {
  
    /**
     * 현재 language 정보 가져오기
     * 
     * @return
     */
    public static String getLang() {
      return LocaleContextHolder.getLocale().getLanguage();
    }
    
    /**
     * language 정보 비교 
     * 
     * @return
     */
    public static boolean compareLang(String lang) {
     
      return lang.equals(LocaleContextHolder.getLocale().getLanguage());
    }
    
    /**
     * xss > html
     * 
     * @return
     */
    public static String unescapeXml(String str) {
		String val = "";
		try {
			val = HtmlUtils.htmlUnescape(str);
			val = xssFilterHtml(val);
			if(!val.toLowerCase().contains("<p") && !val.toLowerCase().contains("<br")) {
				val = StringUtil.replaceBR(val);
			}
			
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return val;
	}
    
    /**
     * xss > html
     * 
     * @return
     */
    public static String unescapeXmlWithOutReplaceBR(String str) {
		String val = "";
		try {
			val = HtmlUtils.htmlUnescape(str);
			val = xssFilterHtml(val);
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
		//줄바꿈 공백 제거 , 마침표 뒤에 공백은 유지
		if(val.length() > 10){
		  String firstStr;
		  String lastStr;
		  
		  if(val.indexOf(".") > -1) {
		    firstStr = val.substring(0,val.indexOf(".")).replaceAll("&nbsp;","");
		    lastStr = val.substring(val.indexOf("."));
		  }else {
		    firstStr = val.substring(0,10).replaceAll("&nbsp;","");
		    lastStr = val.substring(10);
		  }
          
          val = firstStr + lastStr;
          
        }
		return val;
	}

    /**
     * xss > html
     * 
     * @return
     */
    public static String getYoutubeId(String str) {
      return str.substring(str.lastIndexOf("/"));
    }
    
	/**
	 * 접속한 아이피 정보 가져오기
	 * 
	 * @param request
	 * @return
	 */
	public static String getIP(HttpServletRequest request) {
		String ip = request.getHeader("X-Forwarded-For");
        
        if (ip == null || ip.length() == 0 || "unknown".equalsIgnoreCase(ip)) { 
            ip = request.getHeader("Proxy-Client-IP"); 
        } 
        if (ip == null || ip.length() == 0 || "unknown".equalsIgnoreCase(ip)) { 
            ip = request.getHeader("WL-Proxy-Client-IP"); 
        } 
        if (ip == null || ip.length() == 0 || "unknown".equalsIgnoreCase(ip)) { 
            ip = request.getHeader("HTTP_CLIENT_IP"); 
        } 
        if (ip == null || ip.length() == 0 || "unknown".equalsIgnoreCase(ip)) { 
            ip = request.getHeader("HTTP_X_FORWARDED_FOR"); 
        }
        if (ip == null || ip.length() == 0 || "unknown".equalsIgnoreCase(ip)) { 
            ip = request.getHeader("X-Real-IP"); 
        }
        if (ip == null || ip.length() == 0 || "unknown".equalsIgnoreCase(ip)) { 
            ip = request.getHeader("X-RealIP"); 
        }
        if (ip == null || ip.length() == 0 || "unknown".equalsIgnoreCase(ip)) { 
            ip = request.getHeader("REMOTE_ADDR");
        }
        if (ip == null || ip.length() == 0 || "unknown".equalsIgnoreCase(ip)) { 
            ip = request.getRemoteAddr(); 
        }
        
        return ip;
	}
	
	/**
	 * 호스트 url
	 * 
	 * @return
	 */
	public static String getHost() {
		HttpServletRequest request = ((ServletRequestAttributes) RequestContextHolder.currentRequestAttributes())
				.getRequest();
		
		String host = request.getScheme() + "://" + request.getServerName();
		if (request.getServerPort() != 80) {
			host += ":" + request.getServerPort();
		}
		
		return host;
	}
	
	public static String fileRead(String fileName) throws Exception {
		StringBuffer buf = new StringBuffer();

		try(FileInputStream in = new FileInputStream(fileName);
			BufferedReader br = new BufferedReader(new InputStreamReader(in, "utf-8"));) {
			
			String s1;

			while ((s1 = br.readLine()) != null) {
				buf.append(s1 + "\n");
			}
			
		} catch(IOException e) {
		}	//try-with-resources
		
		return buf.toString();
	}
	
	/**
	 * XSS Filter (Text)
	 *
	 * @param str
	 * @return
	 * @throws Exception
	 */
	public static String xssFilterTxt(String str) throws Exception {
		String ret = str;

		if (ret != null) {
			ret = ret.replaceAll("<(S|s)(C|c)(R|r)(I|i)(P|p)(T|t)",
					"&lt;script");
			ret = ret.replaceAll("</(S|s)(C|c)(R|r)(I|i)(P|p)(T|t)",
					"&lt;/script");

			ret = ret.replaceAll(
					"(J|j)(A|a)(V|v)(A|a)(S|s)(C|c)(R|r)(I|i)(P|p)(T|t):", "");

			ret = ret.replaceAll("<(O|o)(B|b)(J|j)(E|e)(C|c)(T|t)",
					"&lt;object");
			ret = ret.replaceAll("</(O|o)(B|b)(J|j)(E|e)(C|c)(T|t)",
					"&lt;/object");

			ret = ret.replaceAll("<(A|a)(P|p)(P|p)(L|l)(E|e)(T|t)",
					"&lt;applet");
			ret = ret.replaceAll("</(A|a)(P|p)(P|p)(L|l)(E|e)(T|t)",
					"&lt;/applet");

			ret = ret.replaceAll("<(E|e)(M|m)(B|b)(E|e)(D|d)", "&lt;embed");
			ret = ret.replaceAll("</(E|e)(M|m)(B|b)(E|e)(D|d)", "&lt;embed");

			ret = ret.replaceAll("<(F|f)(O|o)(R|r)(M|m)", "&lt;form");
			ret = ret.replaceAll("</(F|f)(O|o)(R|r)(M|m)", "&lt;form");

			ret = ret.replaceAll("(A|a)(L|l)(E|e)(R|r)(T|t)", "");
			ret = ret.replaceAll("\"", "&quot;");
			ret = ret.replaceAll("\'", "&#39;");
		}
		return ret;
	}

	/**
	 * XSS Filter (Html)
	 *
	 * @param str
	 * @return
	 * @throws Exception
	 */
	public static String xssFilterHtml(String str) throws Exception {
		String ret = str;

		if (ret != null) {
			ret = ret.replaceAll("<(S|s)(C|c)(R|r)(I|i)(P|p)(T|t)",
					"");
			ret = ret.replaceAll("&lt;(S|s)(C|c)(R|r)(I|i)(P|p)(T|t)",
					"");
			ret = ret.replaceAll("</(S|s)(C|c)(R|r)(I|i)(P|p)(T|t)",
					"");
			ret = ret.replaceAll("&lt;/(S|s)(C|c)(R|r)(I|i)(P|p)(T|t)",
					"");
			ret = ret.replaceAll("<(X|x)(S|s)(S|s)","");
			ret = ret.replaceAll("&lt;(X|x)(S|s)(S|s)","");
			ret = ret.replaceAll("</(X|x)(S|s)(S|s)","");
			ret = ret.replaceAll("&lt;/(X|x)(S|s)(S|s)","");

			ret = ret.replaceAll(
					"(J|j)(A|a)(V|v)(A|a)(S|s)(C|c)(R|r)(I|i)(P|p)(T|t):", "");

			ret = ret.replaceAll("<(A|a)(P|p)(P|p)(L|l)(E|e)(T|t)",
					"&lt;applet");
			ret = ret.replaceAll("</(A|a)(P|p)(P|p)(L|l)(E|e)(T|t)",
					"&lt;/applet");

			ret = ret.replaceAll("<(F|f)(O|o)(R|r)(M|m)", "");
			ret = ret.replaceAll("&lt;(F|f)(O|o)(R|r)(M|m)", "&");
			ret = ret.replaceAll("</(F|f)(O|o)(R|r)(M|m)", "");
			ret = ret.replaceAll("&lt;/(F|f)(O|o)(R|r)(M|m)", "");
			
			ret = ret.replaceAll("<(M|m)(E|e)(T|t)(A|a)", "");
			ret = ret.replaceAll("&lt;(M|m)(E|e)(T|t)(A|a)", "");
			
			ret = ret.replaceAll("<(B|b)(O|o)(D|d)(Y|y)","");
			ret = ret.replaceAll("&lt;(B|b)(O|o)(D|d)(Y|y)","");
			
			
			ret = ret.replaceAll("<(I|i)(F|f)(R|r)(A|a)(M|m)(E|e)",
					"");
			ret = ret.replaceAll("&lt;(I|i)(F|f)(R|r)(A|a)(M|m)(E|e)",
					"");
			ret = ret.replaceAll("</(I|i)(F|f)(R|r)(A|a)(M|m)(E|e)",
					"");
			ret = ret.replaceAll("&lt;/(I|i)(F|f)(R|r)(A|a)(M|m)(E|e)",
					"");
			
			Pattern script = Pattern.compile("on\\w+\\s{0,}=",Pattern.CASE_INSENSITIVE);
			Matcher mat = script.matcher(ret);
			ret = mat.replaceAll("");
			
			Pattern script2 = Pattern.compile("formaction\\s{0,}=",Pattern.CASE_INSENSITIVE);
			Matcher mat2 = script.matcher(ret);
			ret = mat2.replaceAll("");
		}

		return ret;
	}
	
	public static String makeSMSAuthCode() {
		SecureRandom random = new SecureRandom();
		StringBuilder builder = new StringBuilder();
		
		for (int i = 0; i < 6; i++) {
			builder.append(random.nextInt(10));
        }
		
		return builder.toString();
	}
	
	public static String formatPhoneNumber(String phnNmbr) {

		String result = "";
		
		/** EX. 1588-0000 (8)
		 *		02-790-7765 (9)
		 *		031-000-0000 (10)
		 *		070-0000-0000 (11)
		 *		010-0000-0000 (11)
		 **/
		int length = phnNmbr.length();
		if (length > 4 && length < 9) {
			result = phnNmbr.substring(0, 4) + "-" + phnNmbr.substring(4, length);
		} else if (length == 9) {
			result = phnNmbr.substring(0, 2) + "-" + phnNmbr.substring(2, 5) + "-" + phnNmbr.substring(5, 9);
		} else if (length == 10) {
			result = phnNmbr.substring(0, 3) + "-" + phnNmbr.substring(3, 6) + "-" + phnNmbr.substring(6, 10);
		} else if (length > 10) {
			result = phnNmbr.substring(0, 3) + "-" + phnNmbr.substring(3, 7) + "-" + phnNmbr.substring(7, length);
		}

		return result;
	}
	
	public static String getMaskedPhoneNum ( String phoneNum , String option) {
		String regex = "";
		if (option == "-" ) {
			regex = "(\\d{2,3})-(\\d{3,4})-(\\d{4})$";
		}else {
			regex = "(\\d{2,3})(\\d{3,4})(\\d{4})$";
		}
				
		Matcher matcher = Pattern.compile(regex).matcher(phoneNum);
		if (matcher.find()){
			String replaceTarget = matcher.group(2);
			char[] c = new char[replaceTarget.length()];
			Arrays.fill(c, '*');
			phoneNum = phoneNum.replace(replaceTarget,String.valueOf(c));
		}
		return phoneNum;
	}
	
	public static String getMaskedName(String name) {
	    String maskedName = "";     // 마스킹 이름
	    String firstName = "";      // 성
	    String middleName = "";     // 이름 중간
	    String lastName = "";       //이름 끝
	    int lastNameStartPoint;     // 이름 시작 포인터
	    
	    if(!name.equals("") || name != null){
	        if(name.length() > 1){
	            firstName = name.substring(0, 1);
	            lastNameStartPoint = name.indexOf(firstName);
	            
	            if(name.trim().length() > 2){
	                middleName = name.substring(lastNameStartPoint + 1, name.trim().length()-1);
	                lastName = name.substring(lastNameStartPoint + (name.trim().length() - 1), name.trim().length());
	            }else{
	                middleName = name.substring(lastNameStartPoint + 1, name.trim().length());
	            }
	            
	            String makers = "";
	            for(int i = 0; i < middleName.length(); i++){
	                makers += "*";
	            }
	            
	            lastName = middleName.replace(middleName, makers) + lastName;
	            maskedName = firstName + lastName;
	        }else{
	            maskedName = name;
	        }
	    }
	    
	    return maskedName;
	}
	
	public static String getMaskedEmail(String email) {

      String regex = "\\b(\\S+)+@(\\S+.\\S+)";
      Matcher matcher = Pattern.compile(regex).matcher(email);
      if (matcher.find()) {
         String id = matcher.group(1); // 마스킹 처리할 부분인 userId

         int length = id.length();
         if (length < 3) {
            char[] c = new char[length];
            Arrays.fill(c, '*');
            return email.replace(id, String.valueOf(c));
         } else if (length == 3) {
            return email.replaceAll("\\b(\\S+)[^@][^@]+@(\\S+)", "$1**@$2");
         } else {
            return email.replaceAll("\\b(\\S+)[^@][^@][^@]+@(\\S+)", "$1***@$2");
         }
      }
      return email;
   }
	
	public static String getMaskedIp(String ip) {

	      String regex = "(\\d{1,3}).(\\d{1,3}).(\\d{1,3}).(\\d{1,3})$";
	      Matcher matcher = Pattern.compile(regex).matcher(ip);
	      if (matcher.find()){
	    	  String replaceTarget = matcher.group(2);
	    	  String replaceTarget2 = matcher.group(3);
	    	  char[] c = new char[replaceTarget.length()];
	    	  char[] c2 = new char[replaceTarget2.length()];
	    	  Arrays.fill(c, '*');
	    	  Arrays.fill(c2, '*');
	    	  ip = ip.replace(replaceTarget,String.valueOf(c));
	    	  ip = ip.replace(replaceTarget2,String.valueOf(c2));
	      }
	      return ip;
	}
	
	public static String getMaskedAddress(String address) {
		String maskedAddress = "";     // 마스킹 이름
		String lastAddress = "";
	    if(!address.equals("") || address != null){
	        if(address.length() > 10){
	            
	        	String makers = "";
	            for(int i = 0; i < 10; i++){
	                makers += "*";
	            }
	            lastAddress = address.substring((address.trim().length() - 10), address.trim().length());
	            maskedAddress = address.replace(lastAddress,makers);
	        }else{
	            maskedAddress = address;
	        }
	    }
	    
	    return maskedAddress;
	}
	
	/**
	 * dFormat Y : year M : month D : day h : hour m : minute s : second i :
	 * milisecond
	 *
	 * ex) "Y/M/D h:m:s" --> "2001/10/02 11:02:30"
	 */
	public static String getDateTime(String dFormat) throws Exception {
		Calendar cal = Calendar.getInstance(TimeZone.getTimeZone("JST"),
				Locale.KOREA);

		int year = cal.get(Calendar.YEAR);
		int mon = cal.get(Calendar.MONTH) + 1;
		int day = cal.get(Calendar.DAY_OF_MONTH);
		int hour = cal.get(Calendar.HOUR_OF_DAY);
		int min = cal.get(Calendar.MINUTE);
		int sec = cal.get(Calendar.SECOND);
		int msec = cal.get(Calendar.MILLISECOND);

		String sYear = year + "";
		String sMon = (mon < 10 ? "0" + mon : mon + "");
		String sDay = (day < 10 ? "0" + day : day + "");
		String sHour = (hour < 10 ? "0" + hour : hour + "");
		String sMin = (min < 10 ? "0" + min : min + "");
		String sSec = (sec < 10 ? "0" + sec : sec + "");
		String sMsec;
		if (msec == 0)
			sMsec = "000";
		else if (msec < 10)
			sMsec = "00" + msec;
		else if (msec < 100)
			sMsec = "0" + msec;
		else
			sMsec = "" + msec;

		String rValue = dFormat;
		rValue = replaceStr(rValue, "Y", sYear);
		rValue = replaceStr(rValue, "M", sMon);
		rValue = replaceStr(rValue, "D", sDay);
		rValue = replaceStr(rValue, "h", sHour);
		rValue = replaceStr(rValue, "m", sMin);
		rValue = replaceStr(rValue, "s", sSec);
		rValue = replaceStr(rValue, "i", sMsec);

		return (rValue);
	}
	
	public static String getAddYearDateTime(String dFormat) throws Exception {
		Calendar cal = Calendar.getInstance(TimeZone.getTimeZone("JST"),
				Locale.KOREA);

		int year = cal.get(Calendar.YEAR) + 1;
		int mon = cal.get(Calendar.MONTH) + 1;
		int day = cal.get(Calendar.DAY_OF_MONTH);
		int hour = cal.get(Calendar.HOUR_OF_DAY);
		int min = cal.get(Calendar.MINUTE);
		int sec = cal.get(Calendar.SECOND);
		int msec = cal.get(Calendar.MILLISECOND);

		String sYear = year + "";
		String sMon = (mon < 10 ? "0" + mon : mon + "");
		String sDay = (day < 10 ? "0" + day : day + "");
		String sHour = (hour < 10 ? "0" + hour : hour + "");
		String sMin = (min < 10 ? "0" + min : min + "");
		String sSec = (sec < 10 ? "0" + sec : sec + "");
		String sMsec;
		if (msec == 0)
			sMsec = "000";
		else if (msec < 10)
			sMsec = "00" + msec;
		else if (msec < 100)
			sMsec = "0" + msec;
		else
			sMsec = "" + msec;

		String rValue = dFormat;
		rValue = replaceStr(rValue, "Y", sYear);
		rValue = replaceStr(rValue, "M", sMon);
		rValue = replaceStr(rValue, "D", sDay);
		rValue = replaceStr(rValue, "h", sHour);
		rValue = replaceStr(rValue, "m", sMin);
		rValue = replaceStr(rValue, "s", sSec);
		rValue = replaceStr(rValue, "i", sMsec);

		return (rValue);
	}
	
	/**
	 * argument 'org' 스트링내의 arguemnt 'var'과 일치하는 모든 서브스트링들을 arguemnt 'tgt'로 바꾼
	 * 스트링을 리턴한다.
	 *
	 * @exception Exception
	 *                IndexOutOfBoundsException
	 */
	public static String replaceStr(String org, String var, String tgt)
			throws Exception {
		StringBuffer str = new StringBuffer("");
		int end = 0, begin = 0;
		if (org == null || org.equals(""))
			return org;

		try {
			while (true) {
				end = org.indexOf(var, begin);
				if (end == -1) {
					end = org.length();
					str.append(org.substring(begin, end));
					break;
				}
				str.append(org.substring(begin, end) + tgt);
				begin = end + var.length();
			}
		} catch (Exception e) {
			throw new Exception(e.toString());
		}
		return str.toString();
	}


	/**
	 * 랜덤 문자열 생성.
	 *
	 * @param size 길이
	 * @param flag 문자열 종류 ('n' 숫자, 's' 영문소문자, 'm' 혼합)
	 * @return String 랜덤 문자열
	 */
	public static String createRandomString(int size, String flag) {
		Random rand = new Random();
		StringBuilder buf = new StringBuilder();
		for (int i = 0; i < size; i++) {
			if ("n".equals(flag)) {
				buf.append(rand.nextInt(10));
			} else if ("s".equals(flag)) {
				buf.append((char) (rand.nextInt(26) + 97));
			} else {
				if (rand.nextBoolean()) {
					buf.append((char) (rand.nextInt(26) + 97));
				} else {
					buf.append(rand.nextInt(10));
				}
			}
		}
		return buf.toString();
	}
	
	/**
	 * 자바스크립트 얼럿 (alert & forward)
	 * 
	 * @param request
	 * @param response
	 * @param message
	 * @param forwardUrl
	 * @throws Exception
	 */
	public static void showAlert(HttpServletRequest request, HttpServletResponse response,
			String message, String forwardUrl) throws Exception {
		showAlert(request, response, message, forwardUrl, null);
	}
	
	/**
	 * 자바스크립트 얼럿
	 * 
	 * @param request
	 * @param response
	 * @param message
	 * @param forwardUrl
	 * @param target
	 * @throws Exception
	 */
	public static void showAlert(HttpServletRequest request, HttpServletResponse response,
			String message, String forwardUrl, String target) throws Exception {
		//request.setAttribute("__sitemesh__decorator", "none");
		response.setContentType("text/html; charset=UTF-8");
		PrintWriter pw = response.getWriter();
		pw.println("<!DOCTYPE html><html lang=\"ko\"><head>");
        pw.println("<meta http-equiv=\"Content-Type\" content=\"text/html; charset=UTF-8\" />");
        pw.println("<title>WebMessage</title></head><body>");
        pw.println("<script type=\"text/javascript\">");

		if (message != null && message != "") {
			pw.println("alert(\"" + message.replaceAll("'", "\"") + "\");");
		}

		if (forwardUrl == null || forwardUrl == "") {
			pw.println(" history.back();");
		} else {
			if (!forwardUrl.equals("notWork")) {
				pw.println(((target != null && target != "") ? target + "." : "")
						+ " document.location.href='" + forwardUrl + "';");
			}
		}

		pw.println("</script>");
        pw.println("\n</body></html>");
		pw.close();
	}
	
}
