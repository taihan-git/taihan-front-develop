package kr.co.taihan.front.config.web;

import java.nio.charset.Charset;
import java.util.Arrays;
import java.util.List;
import java.util.Locale;
import java.util.concurrent.TimeUnit;

import javax.servlet.Filter;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.apache.commons.lang3.StringUtils;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Value;
import org.springframework.boot.web.servlet.FilterRegistrationBean;
import org.springframework.boot.web.servlet.support.ErrorPageFilter;
import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.Configuration;
import org.springframework.http.CacheControl;
import org.springframework.http.converter.HttpMessageConverter;
import org.springframework.http.converter.StringHttpMessageConverter;
import org.springframework.mobile.device.DeviceHandlerMethodArgumentResolver;
import org.springframework.mobile.device.DeviceResolverHandlerInterceptor;
import org.springframework.mobile.device.site.SitePreferenceHandlerMethodArgumentResolver;
import org.springframework.mobile.device.view.LiteDeviceDelegatingViewResolver;
import org.springframework.util.ObjectUtils;
import org.springframework.web.filter.CharacterEncodingFilter;
import org.springframework.web.method.support.HandlerMethodArgumentResolver;
import org.springframework.web.servlet.LocaleResolver;
import org.springframework.web.servlet.config.annotation.EnableWebMvc;
import org.springframework.web.servlet.config.annotation.InterceptorRegistry;
import org.springframework.web.servlet.config.annotation.ResourceHandlerRegistry;
import org.springframework.web.servlet.config.annotation.WebMvcConfigurerAdapter;
import org.springframework.web.servlet.i18n.LocaleChangeInterceptor;
import org.springframework.web.servlet.i18n.SessionLocaleResolver;
import org.springframework.web.servlet.view.InternalResourceViewResolver;

import com.navercorp.lucy.security.xss.servletfilter.XssEscapeServletFilter;

import kr.co.taihan.front.common.interceptor.CommonInterceptor;

/**
 * 웹 MVC 설정
 * 
 * WebConfig.java
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
@EnableWebMvc
public class WebConfig extends WebMvcConfigurerAdapter {

	private static final Logger logger = LoggerFactory.getLogger(WebConfig.class);

	@Value("${spring.mvc.locale}")
	Locale locale = null;

	@Value("${spring.mvc.view.prefix}")
	String mvcViewPrefix;

	@Value("${spring.mvc.view.suffix}")
	String mvcViewSurffix;

	@Value("${app.upload-path}")
	String uploadPath;

	@Value("${spring.profiles.active}")
	private String activeProfile;

	@Autowired
	private CommonInterceptor commonInterceptor;


    @Bean
    public HttpMessageConverter<String> responseBodyConverter() {
        return new StringHttpMessageConverter(Charset.forName("UTF-8"));
    }
 
    @Bean
    public Filter characterEncodingFilter() {
        CharacterEncodingFilter characterEncodingFilter = new CharacterEncodingFilter();
        characterEncodingFilter.setEncoding("UTF-8");
        characterEncodingFilter.setForceEncoding(true);
        return characterEncodingFilter;
    }

	@Bean
	public DeviceResolverHandlerInterceptor deviceResolverHandlerInterceptor() {
		return new DeviceResolverHandlerInterceptor();
	}

    @Bean
    public LocaleResolver localeResolver()
    {
        final SessionLocaleResolver localeResolver = new SessionLocaleResolver();
        localeResolver.setDefaultLocale(Locale.KOREA);
        return localeResolver;
    }

	// 로케일 설정
	@Bean
	public LocaleChangeInterceptor LangInterceptor() {
		LocaleChangeInterceptor localeChangeInterceptor = new LocaleChangeInterceptor() {
			@Override
			public boolean preHandle(HttpServletRequest request, HttpServletResponse response, Object handler)
					throws ServletException {
				//String newLocale = request.getParameter(getParamName());
				LocaleResolver localeResolver = localeResolver();
				String defaultLang = localeResolver.resolveLocale(request).getLanguage();

				String newLocale = "ko";
				if(request.getRequestURI().toString().length() >= 3){
					newLocale = "/en".equals(request.getRequestURI().toString().substring(0,3)) ? "en" : "ko";
				}

		        //최초접속 이면서 도메인만 호출했을때 브라우저 언어가 영어일경우 영문으로 리다이렉트
//		        if("/".equals(request.getRequestURI()) && StringUtils.isEmpty(defaultLang)) {
//		        	String acceptLang = request.getHeader("Accept-Language");
//		        	String firstLang = acceptLang.split(",")[0];
//		        	if (firstLang.indexOf("en") > -1) {
//		        		newLocale = "en";
//		        	}
//		        }

				if (!newLocale.equals(defaultLang)) {
					if (checkHttpMethod(request.getMethod())) {
						if (localeResolver == null) {
							throw new IllegalStateException(
									"No LocaleResolver found: not in a DispatcherServlet request?");
						}
						try {
							localeResolver.setLocale(request, response, parseLocaleValue(newLocale));
						} catch (IllegalArgumentException ex) {
							if (isIgnoreInvalidLocale()) {
								logger.debug("Ignoring invalid locale value [" + newLocale + "]: " + ex.getMessage());
							} else {
								throw ex;
							}
						}
					}
				}
				return true;
			}
			private boolean checkHttpMethod(String currentMethod) {
				String[] configuredMethods = getHttpMethods();
				if (ObjectUtils.isEmpty(configuredMethods)) {
					return true;
				}
				for (String configuredMethod : configuredMethods) {
					if (configuredMethod.equalsIgnoreCase(currentMethod)) {
						return true;
					}
				}
				return false;
			}
		};
		return localeChangeInterceptor;
	}


	// 뷰 템플릿 설정
	@Bean
	public LiteDeviceDelegatingViewResolver liteDeviceAwareViewResolver() {

		String resolverPrefix = "";

		InternalResourceViewResolver delegate = new InternalResourceViewResolver();
		delegate.setPrefix(mvcViewPrefix);
		delegate.setSuffix(mvcViewSurffix);

		LiteDeviceDelegatingViewResolver resolver = new LiteDeviceDelegatingViewResolver(delegate);

		return resolver;

	}

	// 디바이스 설정
	@Bean
	public DeviceHandlerMethodArgumentResolver deviceHandlerMethodArgumentResolver() {
		return new DeviceHandlerMethodArgumentResolver();
	}

	// 사이트 프리퍼런스 설정
	@Bean
	public SitePreferenceHandlerMethodArgumentResolver sitePreferenceHandlerMethodArgumentResolver() {
		return new SitePreferenceHandlerMethodArgumentResolver();
	}

	// 디바이스 / 사이트 프리퍼런스 리졸버 등록
	@Override
	public void addArgumentResolvers(List<HandlerMethodArgumentResolver> argumentResolvers) {
		argumentResolvers.add(deviceHandlerMethodArgumentResolver());
		argumentResolvers.add(sitePreferenceHandlerMethodArgumentResolver());
	}

	// 리소스 설정
	@Override
	public void addResourceHandlers(ResourceHandlerRegistry registry) {
		registry.addResourceHandler("/resources/**").addResourceLocations("/resources/");
		registry.addResourceHandler("/SmartEditor/**").addResourceLocations("/SmartEditor/");
		
		//font , 이미지 캐시 설정
		registry.addResourceHandler("/resources/asset/fonts/**") 
	    .addResourceLocations("/resources/asset/fonts/") 
	    .setCacheControl(CacheControl.maxAge(365, TimeUnit.DAYS));
		
		registry.addResourceHandler("/resources/asset/images/**") 
	    .addResourceLocations("/resources/asset/images/") 
	    .setCacheControl(CacheControl.maxAge(365, TimeUnit.DAYS));

		if(!"loc".equals(activeProfile))
			registry.addResourceHandler("/upload/**").addResourceLocations("file://" + uploadPath)
			.setCacheControl(CacheControl.maxAge(365, TimeUnit.DAYS))
			;
		else
			registry.addResourceHandler("/upload/**").addResourceLocations("file:///" + uploadPath);

		registry.addResourceHandler("/robots.txt").addResourceLocations("/WEB-INF/views/robots.txt");
        registry.addResourceHandler("swagger-ui.html").addResourceLocations("classpath:/META-INF/resources/");
        registry.addResourceHandler("/webjars/**")
        .addResourceLocations("classpath:/META-INF/resources/webjars/");
	}
	
	/**
	 * XSS 필터
	 * @return
	 */
	@Bean
    public FilterRegistrationBean getFilterRegistrationBean(){
        FilterRegistrationBean registrationBean = new FilterRegistrationBean();
        registrationBean.setFilter(new XssEscapeServletFilter());
        registrationBean.setOrder(1);
        return registrationBean;
    }
	
	// 인터셉터 설정
	@Override
	public void addInterceptors(InterceptorRegistry registry) {
		//언어
		registry.addInterceptor(LangInterceptor()).addPathPatterns("/**")
				.excludePathPatterns(
						Arrays.asList("/error/**", "/swagger-ui.html", "/webjars/**", "/SmartEditor/**", "/jsp/**", "/resources/**", "/upload/**")
				);

		//공통
		registry.addInterceptor(commonInterceptor).addPathPatterns("/**")
				.excludePathPatterns(
					Arrays.asList("/error/**", "/swagger-ui.html", "/webjars/**", "/SmartEditor/**", "/jsp/**", "/resources/**", "/upload/**")
				);

		//디바이스 TODO(사용유무)
		registry.addInterceptor(deviceResolverHandlerInterceptor()).addPathPatterns("/**")
				.excludePathPatterns(
					Arrays.asList("/SmartEditor/**", "/swagger-ui.html", "/webjars/**", "/resources/**", "/error/**", "/upload/**")
				);
	}
}
