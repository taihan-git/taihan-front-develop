package kr.co.taihan.front.config.web;

import kr.co.taihan.front.config.sitemesh.SiteMeshFilter;
import org.springframework.boot.web.servlet.FilterRegistrationBean;
import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.Configuration;

/**
 * Sitemesh 설정
 * 
 * SitemeshConfig.java
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
@Configuration
public class SitemeshConfig {

	@Bean
	public FilterRegistrationBean siteMeshFilter(){
		FilterRegistrationBean filter = new FilterRegistrationBean();
		SiteMeshFilter siteMeshFilter = new SiteMeshFilter();
		filter.setFilter(siteMeshFilter);
		return filter;
	}	 
}
