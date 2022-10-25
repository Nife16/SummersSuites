package com.claim.SummersLuxurySuites;

import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;
import org.springframework.boot.builder.SpringApplicationBuilder;
import org.springframework.boot.web.servlet.support.SpringBootServletInitializer;
import org.springframework.context.annotation.ComponentScan;

@SpringBootApplication
@ComponentScan(basePackages = "com.claim")
public class SummersLuxurySuitesApplication extends SpringBootServletInitializer {

	@Override
	protected SpringApplicationBuilder configure(SpringApplicationBuilder application) {
		return application.sources(SummersLuxurySuitesApplication.class);
	}
	
	public static void main(String[] args) {
		SpringApplication.run(SummersLuxurySuitesApplication.class, args);
	}

}
