package kr.co.taihan.front.common.interceptor;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import kr.co.d2.d2jwork.util.WebMessageUtil;
import kr.co.taihan.front.dao.SearchMapper;
import kr.co.taihan.front.model.RcmdSearch;
import org.apache.commons.lang3.StringUtils;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.i18n.LocaleContextHolder;
import org.springframework.context.support.MessageSourceAccessor;
import org.springframework.mobile.device.Device;
import org.springframework.mobile.device.DeviceUtils;
import org.springframework.mobile.device.view.LiteDeviceDelegatingViewResolver;
import org.springframework.stereotype.Component;
import org.springframework.util.ObjectUtils;
import org.springframework.web.servlet.LocaleResolver;
import org.springframework.web.servlet.handler.HandlerInterceptorAdapter;

import kr.co.d2.d2jwork.util.CookieUtil;
import kr.co.taihan.front.dao.GlobalMapper;
import kr.co.taihan.front.model.SeoModel;

/**
 * 공통 인터셉터
 * 
 * CommonInterceptor.java
 * 
 * @Company : digitalDigm Inc
 * @Author : Richard Song
 * @Date : 2017. 10. 30. 
 * 
 *  수정일                   수정자                  수정내용
 *  -------------   ------------    ---------------------------
 *  2017. 10. 30.   Richard Song          최초 생성
 *
 */
@Component
public class CommonInterceptor extends HandlerInterceptorAdapter {

    private static final Logger logger = LoggerFactory.getLogger(CommonInterceptor.class);

    @Autowired
    MessageSourceAccessor msa;

    @Autowired
    LiteDeviceDelegatingViewResolver resolver;

    @Autowired
    LocaleResolver localeResolver;
    
    @Autowired
    GlobalMapper globalMapper;

    @Autowired
    SearchMapper searchMapper;

    @Override
    public boolean preHandle(HttpServletRequest request,
            HttpServletResponse response, Object obj) throws Exception {

        final String requestUrl         = request.getRequestURL().toString();
        final String requestUri         = request.getRequestURI();
        final String queryString        = request.getQueryString();
        final String method             = request.getMethod();
        final String userAgent          = request.getHeader("user-agent");

        String serverId = msa.getMessage("con.server.id");
        String domain = msa.getMessage("con.web.url");
        String staticUrl = msa.getMessage("con.static.url");
        String sslDomain = msa.getMessage("con.ssl.url");
        String uploadUrl = msa.getMessage("con.upload.url");
        String protocol = "http";
        String sign = "W";


        Device device = DeviceUtils.getCurrentDevice(request);

        //고객 테스트를 위해 잠시 주석처리
//        if(userAgent.indexOf("Trident") > -1) {
//            response.sendRedirect("/error/ie");
//            return false;
//        }


        //path별 언어 설정
//        if(requestUri.contains("en"))
//            localeResolver.setLocale(request,response,Locale.ENGLISH);
//        else
//            localeResolver.setLocale(request,response,Locale.KOREA);


        String lang = LocaleContextHolder.getLocale().getLanguage();    //default언어 셋

        long trId = System.currentTimeMillis();
        request.setAttribute("TRID", trId);
        request.setAttribute("CON_PROTOCOL"     , protocol); // FIXME 사용여부 확인. & 오타	-> 오타는 수정완료 사용여부는 없는것으로 확인
        request.setAttribute("CON_DOMAIN"       , domain);
        request.setAttribute("CON_SSL_DOMAIN"   , sslDomain);
        request.setAttribute("CON_STATIC_URL"   , staticUrl);
        request.setAttribute("CON_REQUEST_URI"			, requestUri);
        request.setAttribute("LANG"             , lang);
        request.setAttribute("SIGN"             , sign);
        request.setAttribute("SERVER_ID"        , serverId);
        request.setAttribute("REQURL"      , requestUri);
        request.setAttribute("CON_UPLOAD_URL", uploadUrl);
        
//        if("/".equals(request.getRequestURI()) && "en".equals(lang)) {
//        	response.sendRedirect("/en");
//        }
        
        SeoModel seo = new SeoModel();
        String defaultTitle = "";
        String defaultDescription = "";
        String defaultImage = "";
        if("en".equals(lang)) {
        	defaultTitle = "Taihan Cable & Solution";
            defaultDescription = "";
            defaultImage = "https://www.taihan.com/resources/asset/images/default_en.jpg";
        }else {
        	defaultTitle = "대한전선";
            defaultDescription = "We Connect the World, 고객에게 최고의 가치를 제공하는 케이블&솔루션 기업 대한전선입니다.";
            defaultImage = "https://www.taihan.com/resources/asset/images/default.jpg";
        }
    	try {
    		if(StringUtils.isEmpty(requestUri)) {
        		seo.setUri("/");
        	}else {
        		seo.setUri(requestUri);
        	}
    		
    		SeoModel result = globalMapper.selectSeoResult(seo);
        	
//    		if(result == null) {
//    			globalMapper.insertSeoUri(seo);
//    		}
    		
        	if(ObjectUtils.isEmpty(result)) {
        		result.setTitle(defaultTitle);
        		result.setDescription(defaultDescription);
        	}
        	if(StringUtils.isEmpty(result.getTitle())) {
        		result.setTitle(defaultTitle);
        	}
        	if(StringUtils.isEmpty(result.getDescription())) {
        		result.setDescription(defaultDescription);
        	}
        	
        	request.setAttribute("SEO_TITLE", result.getTitle());
        	request.setAttribute("SEO_DESCRIPTION", result.getDescription());
    	}catch(Exception e) {
    		request.setAttribute("SEO_TITLE", defaultTitle);
        	request.setAttribute("SEO_DESCRIPTION", defaultDescription);
    	}
    	request.setAttribute("SEO_IMAGE", defaultImage);

        //헤더 공통 추천 검색어 세팅
        request.setAttribute("rcmdSearchList", searchMapper.selectRcmdSchList(new RcmdSearch(lang)));


        
//      if ("real".equals(serverId)) {
//
//          String url;
//          if (request.isSecure()) {
//              url = sslDomain;
//          } else {
//              url = domain;
//          }
//          url += requestUri
//                  + (StringUtil.isNotEmpty(queryString) ? "?" + queryString   : "");
//
//          response.sendRedirect(url);
//          return false;
//      }
        
        logger.info("################ REQUEST ################");
        logger.info("# Host           = {}", request.getRemoteHost());
        logger.info("# Method         = {}", method);
        logger.info("# RequestURL     = {}", requestUrl);
        logger.info("# QueryString    = {}", queryString);

        logger.debug("# Protocol       = {}", request.getProtocol());
        logger.debug("# RequestURI     = {}", requestUri);
        logger.debug("# ContextPath    = {}", request.getContextPath());
        logger.debug("# ServletPath    = {}", request.getServletPath());
        logger.debug("# PathInfo       = {}", request.getPathInfo());
        logger.debug("# Method         = {}", method);
        logger.debug("# User-Agent     = {}", userAgent);
        logger.debug("# Accept-Language= {}", request.getHeader("Accept-Language"));
        logger.info("# DEVICE         = {}", device.getDevicePlatform());
        logger.info("# LANG           = {}", lang);
        logger.info("# DOMAIN         = {}", domain);
        logger.info("#########################################");
        
        // 서비스 아이디별 view resolver 세팅
        // 리드, 딜러앱 따로 작업하기에 해당 부분 막음 
        /*
        if (requestUri.startsWith("/dealer")) {
            resolver.setNormalPrefix("dealer/");
            resolver.setMobilePrefix("dealer/");
            resolver.setTabletPrefix("dealer/");
        } else if (requestUri.startsWith("/lead")) {
            resolver.setNormalPrefix("lead/");
            resolver.setMobilePrefix("lead/");
            resolver.setTabletPrefix("lead/");
        } else {
            resolver.setNormalPrefix("");
            resolver.setMobilePrefix("");
            resolver.setTabletPrefix("");
        }*/
        return true;
    }

    @Override
    public void afterCompletion(HttpServletRequest request, HttpServletResponse response,
                                Object handler, Exception ex) throws Exception {
        long trId = (long) request.getAttribute("TRID");
        logger.info("#####REQUEST_END[{}] : {}ms", trId, System.currentTimeMillis() - trId);
    }
}
