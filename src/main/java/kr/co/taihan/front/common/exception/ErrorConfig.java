//package kr.co.taihan.front.common.exception;
//
//import org.springframework.boot.web.server.ErrorPage;
//import org.springframework.boot.web.server.WebServerFactoryCustomizer;
//import org.springframework.boot.web.servlet.server.ConfigurableServletWebServerFactory;
//import org.springframework.context.annotation.Configuration;
//import org.springframework.http.HttpStatus;
//
//@Configuration
//public class ErrorConfig implements WebServerFactoryCustomizer<ConfigurableServletWebServerFactory> {
//
//  public void customize(ConfigurableServletWebServerFactory  container) {
//      container.addErrorPages(new ErrorPage(HttpStatus.NOT_FOUND, "/error/404"));
//      container.addErrorPages(new ErrorPage(HttpStatus.INTERNAL_SERVER_ERROR, "/error/500"));
//      container.addErrorPages(new ErrorPage("/error/default"));
//  }
//}
