package kr.co.taihan.front.common.util;

import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;

import java.util.*;

public class JsonHelper {

	@SuppressWarnings("unused")
	private static final Logger logger = LoggerFactory.getLogger(JsonHelper.class);

	@SuppressWarnings("rawtypes")
	public static Object toJSON(Object object) throws JSONException {
		if (object instanceof Map) {
			JSONObject json = new JSONObject();
			Map<?, ?> map = (Map<?, ?>) object;
			for (Object key : map.keySet()) {
				json.put(key.toString(), toJSON(map.get(key)));
			}
			return json;
		} else if (object instanceof Iterable) {
			JSONArray json = new JSONArray();
			for (Object value : ((Iterable) object)) {
				json.put(value);
			}
			return json;
		} else {
			return object;
		}
	}

	public static boolean isEmptyObject(JSONObject object) {
		return object.names() == null;
	}

	public static Map<String, Object> getMap(JSONObject object, String key) throws JSONException {
		return toMap(object.getJSONObject(key));
	}

	public static Map<String, Object> toMap(JSONObject object) throws JSONException {
		Map<String, Object> map = new HashMap<String, Object>();
		@SuppressWarnings("rawtypes")
		Iterator keys = object.keys();
		while (keys.hasNext()) {
			String key = (String) keys.next();
			if (object.get(key) instanceof JSONArray) {
				// logger.info(key   + ": jsonArray " );
				map.put(JsonUtils.toCamelCase(key), toList((JSONArray) object.get(key)));
			} else if (object.get(key) instanceof JSONObject) {
				// logger.info(key   + ": jsonObject " );
				map.put(JsonUtils.toCamelCase(key), toMap((JSONObject) object.get(key)));
			} else {
				// logger.info(key   + ": etc " + object.get(key).getClass());
				map.put(JsonUtils.toCamelCase(key), object.get(key));
			}
		}
		return map;
	}

	public static List<Object> toList(JSONArray array) throws JSONException {
		List<Object> list = new ArrayList<Object>();
		for (int i = 0; i < array.length(); i++) {
			JSONObject object = new JSONObject(array.get(i).toString());
			Map<String, Object> map = new HashMap<String, Object>();
			@SuppressWarnings("rawtypes")
			Iterator keys = object.keys();
			while (keys.hasNext()) {
				String key = (String) keys.next();
				// logger.info(object.get(key).getClass() + "");
				if (object.get(key) instanceof JSONObject) {
					// logger.info(key   + ": jsonObject" );
					map.put(JsonUtils.toCamelCase(key), toMap((JSONObject) object.get(key)));
				} else if (object.get(key) instanceof JSONArray) {
					// logger.info(key   + ": jsonArray" );
					map.put(JsonUtils.toCamelCase(key), toList((JSONArray) object.get(key)));
				} else {
					// logger.info(key   + ": etc " + object.get(key).getClass());
					map.put(JsonUtils.toCamelCase(key), object.get(key));
				}
			}
			list.add((JSONObject) JsonHelper.toJSON(map));
		}
		return list;
	}

	public static Object fromJson(Object json) throws JSONException {
		if (json == JSONObject.NULL) {
			return null;
		} else if (json instanceof JSONObject) {
			// logger.info("Object is JSONObject");
			return toMap((JSONObject) json);
		} else if (json instanceof JSONArray) {
			// logger.info("Object is JSONArray");
			return toList((JSONArray) json);
		} else {
			return json;
		}
	}
}
