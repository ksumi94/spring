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
	//���������� �����ϴ� Ŭ������ �� ���ø����̼��� �ʱ�ȭ�� ���� ���� ����� �����Ѵ�.
	//�� Ŭ������ ����ϸ� �ڹ� ��� ���� Ŭ������ �̿��Ͽ� DispatcherServler �� ContextLoaderListener�� ����� �� �ִ�.
	//�̸� ���� web.xml�� ������� �ʰ� �� ���ø����̼��� �ʱ�ȭ�� ������ �� �ִ�.
	//�ش� Ŭ������ ��ӹ޾� �ʿ��� ������ �������̵��Ͽ� ����Ѵ�.
	
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
