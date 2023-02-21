//package kr.co.taihan.front.config.security;
//
//import java.util.Arrays;
//
//import org.springframework.beans.factory.annotation.Autowired;
//import org.springframework.beans.factory.annotation.Value;
//import org.springframework.context.annotation.Bean;
//import org.springframework.context.annotation.Configuration;
//import org.springframework.context.annotation.PropertySource;
//import org.springframework.core.annotation.Order;
//import org.springframework.security.config.annotation.authentication.builders.AuthenticationManagerBuilder;
//import org.springframework.security.config.annotation.method.configuration.EnableGlobalMethodSecurity;
//import org.springframework.security.config.annotation.web.builders.HttpSecurity;
//import org.springframework.security.config.annotation.web.configuration.EnableWebSecurity;
//import org.springframework.security.config.annotation.web.configuration.WebSecurityConfigurerAdapter;
//import org.springframework.web.cors.CorsConfiguration;
//import org.springframework.web.cors.CorsConfigurationSource;
//import org.springframework.web.cors.UrlBasedCorsConfigurationSource;
//
//import com.ulisesbocchio.jasyptspringboot.annotation.EnableEncryptableProperties;
//import kr.co.taihan.front.common.util.MessageUtils;
//
//@Configuration
//@Order(1)
//@EnableWebSecurity
//@EnableGlobalMethodSecurity(prePostEnabled = true)
//@EnableEncryptableProperties
//@PropertySource(value = {
//"classpath:/prop/security.properties" }, ignoreResourceNotFound = true)
//public class WebSecurityConfig extends WebSecurityConfigurerAdapter {
//
//	@Value("${app.admin.id}")
//	String adminId;
//
//	@Value("${app.admin.password}")
//	String adminPassword;
//
//    @Autowired
//    public void configureGlobal(AuthenticationManagerBuilder auth) throws Exception {
//        auth
//            .inMemoryAuthentication()
//                .withUser(adminId).password(adminPassword).roles("ADMIN");
//    }
//
//    @Override
//    protected void configure(HttpSecurity http) throws Exception {
//        http
//        	.csrf().disable()
//        	.headers().disable()
//            .authorizeRequests()
//                .antMatchers("/**").permitAll()
//                .and()
//            .formLogin()
//                .loginPage("/admin/login")
//                .defaultSuccessUrl("/admin")
//                .permitAll()
//                .and()
//            .logout()
//            	.logoutUrl("/admin/logout")
//            	.logoutSuccessUrl("/admin/login")
//                .permitAll()
//             .and()
//                .cors()
//             ;
//    }
//
//
//    @Bean
//    public CorsConfigurationSource corsConfigurationSource() {
//        CorsConfiguration configuration = new CorsConfiguration();
//
//        if ("prd".equals(MessageUtils.getMessage("con.server.id"))) {
//            configuration.setAllowedOrigins(Arrays.asList("https://vdl.vwk.co.kr"));
//        } else {
//            configuration.setAllowedOrigins(Arrays.asList("http://vdl-front.d2.co.kr"));
//        }
//
//        configuration.setAllowedHeaders(Arrays.asList("*"));
//        configuration.setAllowedMethods(Arrays.asList("*"));
//
//        configuration.setExposedHeaders(Arrays.asList("Authorization"));
//        configuration.setAllowCredentials(true);
//
//        UrlBasedCorsConfigurationSource source = new UrlBasedCorsConfigurationSource();
//        source.registerCorsConfiguration("/**", configuration);
//        return source;
//    }
//}
