package com.korea.cgv.config;

import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.Configuration;
import org.springframework.web.servlet.config.annotation.EnableWebMvc;
import org.springframework.web.servlet.view.InternalResourceViewResolver;

@Configuration
@EnableWebMvc
public class WebMvcConfig {
	@Bean
    public InternalResourceViewResolver viewResolver() {
        InternalResourceViewResolver resolver = new InternalResourceViewResolver();
        // JSP 파일이 위치한 폴더
        resolver.setPrefix("/WEB-INF/views/");
        // JSP 파일 확장자
        resolver.setSuffix(".jsp");
        return resolver;
    }
}
