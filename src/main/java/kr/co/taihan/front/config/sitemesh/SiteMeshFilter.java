package kr.co.taihan.front.config.sitemesh;

import org.sitemesh.builder.SiteMeshFilterBuilder;
import org.sitemesh.config.ConfigurableSiteMeshFilter;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;

/**
 * Sitemesh 필터 설정
 * 
 * SiteMeshFilter.java
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
public class SiteMeshFilter extends ConfigurableSiteMeshFilter {

	private static final Logger logger = LoggerFactory.getLogger(SiteMeshFilter.class);

	@Override
	protected void applyCustomConfiguration(SiteMeshFilterBuilder builder) {
		logger.debug("applyCustomConfiguration");

		final String path = "/WEB-INF/views/_decorators/";
		SiteMeshDecoratorSelector decoratorSelector = new SiteMeshDecoratorSelector();

		decoratorSelector.putMapping(SiteMeshDecoratorSelector.DEFAULT, path + "default.jsp");
		decoratorSelector.putMapping(SiteMeshDecoratorSelector.MAIN, path + "mainDefault.jsp");
		decoratorSelector.putMapping(SiteMeshDecoratorSelector.PARTS, path + "partsDefault.jsp");
		
		decoratorSelector.putMapping(SiteMeshDecoratorSelector.MOBILE, path + "mobileDefault.jsp");
		decoratorSelector.putMapping(SiteMeshDecoratorSelector.TABLET, path + "default.jsp");

		decoratorSelector.put("*/popup/*", path + "popup.jsp");
		decoratorSelector.put("/main.do", path + "main.jsp");
		decoratorSelector.put("/error/ie",  "/WEB-INF/views/error/ie.jsp");
		
		builder
				//.addDecoratorPath("/sample/*", "/sample/index")
				.setCustomDecoratorSelector(decoratorSelector)
				.addExcludedPath("*Proc*")
				.addExcludedPath("*Ajax*")
				.addExcludedPath("*api**")
				.addExcludedPath("*-proc**")
				.addExcludedPath("*lead-calendar**")
				.addExcludedPath("*lead-ADLcalendar**")
				.addExcludedPath("/SmartEditor/*")
				.addExcludedPath("/plugin/*")
				.addExcludedPath("/resources/**")
				.addExcludedPath("/swagger-ui.html**")
				.addExcludedPath("/webjars/**")
				.addExcludedPath("/upload/**");
	}

}
