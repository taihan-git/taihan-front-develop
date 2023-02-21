package kr.co.taihan.front;

import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.EnableAutoConfiguration;
import org.springframework.boot.autoconfigure.SpringBootApplication;
import org.springframework.transaction.annotation.EnableTransactionManagement;

@EnableAutoConfiguration
@SpringBootApplication(scanBasePackages = {Application.BASE_PACKAGES})
@EnableTransactionManagement
public class Application {
	
	public static final String BASE_PACKAGES = "kr.co.taihan.front";
	
	public static void main(String[] args) {
		SpringApplication.run(Application.class, args);
	}
}
