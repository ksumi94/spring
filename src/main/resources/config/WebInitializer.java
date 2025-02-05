package config;

import javax.servlet.Filter;

import org.springframework.web.filter.CharacterEncodingFilter;
import org.springframework.web.servlet.support.AbstractAnnotationConfigDispatcherServletInitializer;

import context.Context_1_dataSource;
import context.Context_2_myBatis;
import context.Context_3_dao;
import mvc.Servlet_Context;

public class WebInitializer extends AbstractAnnotationConfigDispatcherServletInitializer {
	
	//AbstractAnnotationConfigDispatcherServletInitializer
	//스프링에서 제공하는 클래스로 웹 어플리케이션의 초기화를 위한 편리한 방법을 제공한다.
	//이 클래스를 사용하면 자바 기반 설정 클래스를 이용하여 DispatcherServler 및 ContextLoaderListener를 등록할 수 있다.
	//이를 통해 web.xml을 사용하지 않고도 웹 어플리케이션의 초기화를 설정할 수 있다.
	//해당 클래스를 상속받아 필요한 설정을 오버라이드하여 사용한다.
	
	@Override
	protected Class<?>[] getRootConfigClasses() {
		return new Class[] {Context_1_dataSource.class,
							Context_2_myBatis.class,
							Context_3_dao.class};
	}
	
	
	@Override
	protected Class<?>[] getServletConfigClasses() {
		// TODO Auto-generated method stub
		return new Class[] {Servlet_Context.class};
	}

	@Override
	protected String[] getServletMappings() {
		
		return new String[] {"/"};
	}

	@Override
	protected Filter[] getServletFilters() {
		CharacterEncodingFilter characterEncodingFilter = new CharacterEncodingFilter();
		characterEncodingFilter.setEncoding("UTF-8");
		characterEncodingFilter.setForceEncoding(true);
		return new Filter[] {characterEncodingFilter};
	}
	
	
	
	
}
