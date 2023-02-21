package kr.co.taihan.front.common.util;

import com.fasterxml.jackson.databind.DeserializationFeature;
import com.fasterxml.jackson.databind.ObjectMapper;
import lombok.extern.slf4j.Slf4j;
import org.json.JSONObject;
import org.springframework.http.HttpHeaders;
import org.springframework.stereotype.Component;

import java.io.BufferedReader;
import java.io.DataOutputStream;
import java.io.InputStreamReader;
import java.io.OutputStream;
import java.net.HttpURLConnection;
import java.net.URL;
import java.util.HashMap;
import java.util.Map;

@Slf4j
@Component
public class HttpConnection {



	// Request 메소드 정의
	public enum HttpMethod {
		GET, POST, PUT
	}

	/**
	 * GET, PUT
	 * @param url
	 * @param method
	 * @param parameter
	 * @param headers
	 * @return
	 * @throws Exception
	 */
	public static String connection(String url, HttpMethod method, Map<String, Object> parameter, HttpHeaders headers) throws Exception {

		String param = null;
		// 파라미터가 있을 경우, 파라미터키=파라미터값&파라미터키=파라미터값&파라미터키=파라미터값 의 형태로 만든다.
		if (parameter != null) {
			StringBuffer sb = new StringBuffer();
			for (String key : parameter.keySet()) {
				if (sb.length() > 0) {
					sb.append("&");
				}
				sb.append(key);
				sb.append("=");
				sb.append(parameter.get(key));
			}
			param = sb.toString();
		} else {
			param = "";
		}
		// Http method가 GET(PUT) 방식의 경우 파라미터를 url 주소 뒤에 붙인다.
		if (!HttpMethod.POST.equals(method)) {
			if (url.contains("?")) {
				url += "&" + param;
			} else {
				url += "?" + param;
			}
		}
		logger.debug("ㄴurl :: {}", url);
		logger.debug("ㄴparam :: {}", param);

		URL uri = new URL(url);
		// url를 통해 HttpURLConnection 클래스를 생성한다.
		HttpURLConnection connection = (HttpURLConnection) uri.openConnection();
		// 해더의 메소드를 정의한다.
		connection.setRequestMethod(method.toString());
		logger.debug("ㄴmethod :: {}", method.toString());

		// 해더의 ContentType를 정의한다.
		connection.setRequestProperty("Accept", "application/json");
		if (headers != null) {
			connection.setRequestProperty("Content-Type", headers.get("Content-Type").get(0));
			//logger.debug(">>>>> headers :: {}", headers);
			connection.setRequestProperty("merchantId", headers.get("merchantId").get(0));
			connection.setRequestProperty("X-AUTH-ID",  headers.get("X-AUTH-ID").get(0));
			connection.setRequestProperty("X-AUTH-KEY", headers.get("X-AUTH-KEY").get(0));
			logger.debug("ㄴheaders :: {}", connection.getRequestProperties());
		}

		// Http method가 POST 방식의 경우, 해더 아래에
		if (HttpMethod.POST.equals(method)) {
			// 커넥션의 header 밑의 stream을 사용한다. (Get의 경우는 필요가 없다.)
			connection.setDoOutput(true);
			try (DataOutputStream output = new DataOutputStream(connection.getOutputStream())) {
				output.writeBytes(param);
				output.flush();
			}
		}

		// 프로토콜의 반환 코드를 받을 수 있다. (200이면 정상이다.)
		int code = connection.getResponseCode();
		logger.debug("ㄴresultCode :: {}", code);


		// 스트림으로 반환 결과값을 받는다.
		try {
			BufferedReader input;
			if (code == 200) {
				input = new BufferedReader(new InputStreamReader(connection.getInputStream()));
			} else {
				input = new BufferedReader(new InputStreamReader(connection.getErrorStream()));
			}
			String line;
			StringBuffer buffer = new StringBuffer();
			while ((line = input.readLine()) != null) {
				buffer.append(line);
			}

			input.close();
			connection.disconnect();
			logger.debug("ㄴresultStr :: {}", buffer.toString());
			return buffer.toString();

		} catch (Exception e) {
			e.printStackTrace();
		}
		return null;
	}

	/**
	 * POST
	 * @param url
	 * @param method
	 * @param parameter
	 * @param headers
	 * @return
	 * @throws Exception
	 */
	public static String requestBody(String url, HttpMethod method, Map<String, Object> parameter, HttpHeaders headers) throws Exception {

		JSONObject json = new JSONObject();
		if (parameter != null) {
			for (String key : parameter.keySet()) {
				json.put(key, parameter.get(key));
			}
		}
		logger.debug("ㄴurl :: {}", url);

		String body = json.toString();
		logger.debug("ㄴbody :: {}", body);

		URL postUrl = new URL(url);
		HttpURLConnection connection = (HttpURLConnection) postUrl.openConnection();
		connection.setRequestMethod(method.toString()); //전송방식
		logger.debug("ㄴmethod :: {}", method.toString());
		connection.setDoOutput(true); 				// 데이터를 쓸지 설정
		//connection.setDoInput(true); 				// 데이터를 읽어올지 설정
		connection.setInstanceFollowRedirects(false);  //Redirect처리 하지 않음
		connection.setRequestProperty("Accept", "application/json");
		connection.setRequestProperty("Content-Type", "application/json;charset=UTF-8");
		if (headers != null) {
			connection.setRequestProperty("merchantId", headers.get("merchantId").get(0));
			connection.setRequestProperty("X-AUTH-ID",  headers.get("X-AUTH-ID").get(0));
			connection.setRequestProperty("X-AUTH-KEY", headers.get("X-AUTH-KEY").get(0));
		}
		logger.debug("ㄴheaders :: {}", connection.getRequestProperties());

		OutputStream os = connection.getOutputStream();
		os.write(body.getBytes());
		os.flush();
		os.close();
		//System.out.println("Location: " + connection.getHeaderField("Location"));


		// 프로토콜의 반환 코드를 받을 수 있다. (200이면 정상이다.)
		int code = connection.getResponseCode();
		logger.debug("ㄴresultCode :: {}", code);


		// 스트림으로 반환 결과값을 받는다.
		try {
			BufferedReader input;
			if (code == 200 || code == 201) {
				input = new BufferedReader(new InputStreamReader(connection.getInputStream()));
			} else {
				input = new BufferedReader(new InputStreamReader(connection.getErrorStream()));
			}

			String line;
			StringBuffer buffer = new StringBuffer();
			while ((line = input.readLine()) != null) {
				buffer.append(line);
			}
			if (input.readLine() == null) {
				buffer.append("{\"status\":" + code + "}");
			}
			input.close();
			connection.disconnect();

			logger.debug("ㄴresultStr :: {}", buffer.toString());
			return buffer.toString();

		} catch (Exception e) {
			e.printStackTrace();
		}
		return null;
	}

	/**
	 * Connection 결과 맵핑
	 * @param url
	 * @param method
	 * @param params
	 * @param headers
	 * @param clazz
	 * @return
	 * @throws Exception
	 */
	@SuppressWarnings("unchecked")
	public static Object cvtConnection(String url, HttpMethod method, Map<String, Object> params, HttpHeaders headers, Class<?> clazz) throws Exception {

		String result = HttpConnection.connection(url, method, params, headers);
		//HashMap<String, Object> rs = new ObjectMapper().readValue(result.toString(), HashMap.class) ;
		Map<String, Object> map = (HashMap<String, Object>) JsonHelper.fromJson(new JSONObject(result));
		JSONObject jsonObj = (JSONObject) JsonHelper.toJSON(map);
		logger.info("ㄴ결과 파싱 ==> {}", jsonObj.toString());
		return new ObjectMapper().configure(DeserializationFeature.FAIL_ON_UNKNOWN_PROPERTIES, false).readValue(jsonObj.toString(), clazz);
	}

	/**
	 * Request Body 결과 맵핑 (POST)
	 * @param url
	 * @param method
	 * @param params
	 * @param headers
	 * @param clazz
	 * @return
	 * @throws Exception
	 */
	@SuppressWarnings("unchecked")
	public static Object cvtRequestBody(String url, HttpMethod method, Map<String, Object> params, HttpHeaders headers, Class<?> clazz) throws Exception {

		String result = HttpConnection.requestBody(url, method, params, headers);
		//HashMap<String, Object> rs = new ObjectMapper().readValue(result.toString(), HashMap.class) ;
		Map<String, Object> map = (HashMap<String, Object>) JsonHelper.fromJson(new JSONObject(result));
		JSONObject jsonObj = (JSONObject) JsonHelper.toJSON(map);
		logger.info("ㄴ결과 파싱 ==> {}", jsonObj.toString());
		return new ObjectMapper().readValue(jsonObj.toString(), clazz);
	}

}
