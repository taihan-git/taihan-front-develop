package kr.co.taihan.front.config.web;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Value;
import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.Configuration;
import org.springframework.context.annotation.PropertySource;
import org.springframework.context.support.MessageSourceAccessor;

import springfox.documentation.builders.ApiInfoBuilder;
import springfox.documentation.builders.PathSelectors;
import springfox.documentation.builders.RequestHandlerSelectors;
import springfox.documentation.service.ApiInfo;
import springfox.documentation.spi.DocumentationType;
import springfox.documentation.spring.web.plugins.ApiSelectorBuilder;
import springfox.documentation.spring.web.plugins.Docket;
import springfox.documentation.swagger2.annotations.EnableSwagger2;

@Configuration
@EnableSwagger2

public class SwaggerConfig {
	@Autowired
	private MessageSourceAccessor mr;

    @Bean
	public Docket api() {
		ApiSelectorBuilder builder = new Docket(DocumentationType.SWAGGER_2)
				.groupName("sample")
				.apiInfo(apiInfo())
				.select()
				.apis(RequestHandlerSelectors.basePackage("kr.co.vwk.group.front.rest"));

		if ("prd".equals(mr.getMessage("con.server.id"))) {
			return builder.paths(PathSelectors.none()).build();
		} else {
			return builder.paths(PathSelectors.any()).build();
		}
	}

    
	private ApiInfo apiInfo() {
        return new ApiInfoBuilder()
                .title("Spring REST Sample with Swagger")
                .description("Spring REST Sample with Swagger")
                .termsOfServiceUrl("http://www-03.ibm.com/software/sla/sladb.nsf/sla/bm?Open")
                .license("Apache License Version 2.0")
                .licenseUrl("http://tech.d2.co.kr/LICENSE")
                .version("2.0")
                .build();
    }

}
