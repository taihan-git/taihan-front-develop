package kr.co.taihan.front.common.util;

import com.fasterxml.jackson.core.JsonGenerationException;
import com.fasterxml.jackson.core.type.TypeReference;
import com.fasterxml.jackson.databind.JsonMappingException;
import com.fasterxml.jackson.databind.ObjectMapper;
import kr.co.d2.d2jwork.util.StringUtil;

import java.io.IOException;
import java.util.StringTokenizer;

public class JsonUtils {

	public static String toJson(Object value) throws JsonGenerationException, JsonMappingException, IOException {
		  ObjectMapper mapper = new ObjectMapper();
		  return mapper.writeValueAsString(value);
	}

	public static String toCamelCase(String target) {
	  StringBuffer buffer = new StringBuffer();
	  for (String token : target.toLowerCase().split("_")){
	   buffer.append(capitalize(token));
	  }
	  return unCapitalize(buffer.toString());
	 }

	public static String capitalize(String target) {
		target = StringUtil.nvl(target, "");
		if(target.equals("")) return "";

		StringTokenizer st = new StringTokenizer(target);
		String str = "";
		while(st.hasMoreElements()){
			str = st.nextToken();
			str = str.substring(0, 1).toUpperCase()+str.substring(1, str.length());
		}
		return str;
	}

	public static String unCapitalize(String target) {
		target = StringUtil.nvl(target, "");
		if(target.equals("")) return "";

		StringTokenizer st = new StringTokenizer(target);
		String str = "";

		while(st.hasMoreElements()){
			str = st.nextToken();
			str = str.substring(0, 1).toLowerCase()+str.substring(1, str.length());
		}
		return str;
	}

	private static ObjectMapper objectMapper = null;

	private static ObjectMapper getObjectMapperInstance(){
  	if (objectMapper == null) {
  		return new ObjectMapper();
  	} else {
  		return objectMapper;
  	}
  }

  public static String objectToJson(Object object) throws Exception {
  	try {
			return getObjectMapperInstance().writeValueAsString(object);
		} catch (Exception e) {
			throw new Exception("Json생성시 오류 발생");
		}
  }


  public static Object jsonToObject(String json, TypeReference<?> typeReference) throws Exception {
  	try {
			return getObjectMapperInstance().readValue(json, typeReference);
		} catch (Exception e) {
			e.printStackTrace();
			throw new Exception("Json생성시 오류 발생");
		}
  }


}
