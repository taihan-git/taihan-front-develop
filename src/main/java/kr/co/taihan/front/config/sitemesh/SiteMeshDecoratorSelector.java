package kr.co.taihan.front.config.sitemesh;

import java.io.IOException;
import java.util.HashMap;
import java.util.Map;

import org.sitemesh.config.PathBasedDecoratorSelector;
import org.sitemesh.content.Content;
import org.sitemesh.webapp.WebAppContext;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.mobile.device.site.SitePreference;
import org.springframework.mobile.device.site.SitePreferenceHandler;

/**
 * 상황별 데코레이터를 선택한다
 * 
 * SiteMeshDecoratorSelector.java
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
public class SiteMeshDecoratorSelector extends PathBasedDecoratorSelector<WebAppContext> {

	private static final Logger logger = LoggerFactory.getLogger(SiteMeshDecoratorSelector.class);
	
	public static final String DEFAULT = "default";
	public static final String MAIN = "main";
	public static final String PARTS = "parts";
	
	public static final String MOBILE = "mobile";
	public static final String TABLET = "tablet";

	private final String defaultDecorator = "/WEB-INF/views/_decorators/default.jsp";
	private final Map<String, String> mappings = new HashMap<String, String>();

	@Override
	public String[] selectDecoratorPaths(Content content, WebAppContext siteMeshContext) throws IOException {
		/*
		 * If page contains <meta name='decorator'
		 * content='/some/dec.html,/another/dec.html'>
		 */
		String decoratorMetaTag = content.getExtractedProperties().getChild("meta").getChild("decorator").getValue();

		if (decoratorMetaTag != null) {
			logger.debug("decoratorMetaTag : {}", decoratorMetaTag);
			return mappings.get(decoratorMetaTag).split(",");
		}

		// request path 기준으로 매핑된 decorator path를 가져온다
		String[] pathDecorator = super.getPathMapper().get(siteMeshContext.getPath());
		if (pathDecorator != null) {
			logger.debug("pathDecorator : {}", (Object[]) pathDecorator);
			return pathDecorator;
		}
		
		String decorator;

		/*
		 * 디바이스 또는 쿠키 값을 기준으로 사이트 설정값을 가져온다. 쿠키값 우선 처리. 쿠키 설정 예시
		 * http://domain/?site_preference=mobile / normal / tablet
		 */
		final SitePreference sitePreference = (SitePreference) siteMeshContext.getRequest()
				.getAttribute(SitePreferenceHandler.CURRENT_SITE_PREFERENCE_ATTRIBUTE);

		if (sitePreference != null) {
			if (sitePreference != null && sitePreference.isMobile()) {
				logger.debug("Mobile");
				decorator = mappings.get(MOBILE);
			} else if (sitePreference != null && sitePreference.isTablet()) {
				logger.debug("Tablet");
				decorator = mappings.get(TABLET);
			} else {
				logger.debug("DEFAULT - PC");
				decorator = mappings.get(DEFAULT);
			}
		} else {
			logger.debug("DEFAULT - PC");
			decorator = mappings.get(DEFAULT);
		}

		if (decorator == null) {
			decorator = this.defaultDecorator;
			logger.info("Fail to load decorator path.");
			logger.info("Using decorator path [{}] instead.", decorator);
		}

		logger.debug("decorator : {}", decorator);

		return decorator.split(",");
	}

	public void putMapping(String pattern, String value) {
		if (value != null) {
			mappings.put(pattern, value);
		}
	}

}
// EOF