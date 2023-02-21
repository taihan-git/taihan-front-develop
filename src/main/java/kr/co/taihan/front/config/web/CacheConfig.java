package kr.co.taihan.front.config.web;

import org.springframework.cache.annotation.EnableCaching;
import org.springframework.context.annotation.Configuration;


/**
 * 캐시 설정.
 * 본 프로젝트에서는 ehcache를 캐시 구현체로 사용하고 있는데,
 * 캐시 설정은 ehchache-config.xml에 기술하며,
 * 그 파일의 위치는 application.yml에 지정하였다.
 */
@Configuration
@EnableCaching
public class CacheConfig {

}
