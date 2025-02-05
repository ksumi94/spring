package context;

import javax.sql.DataSource;

import org.apache.ibatis.session.SqlSessionFactory;
import org.mybatis.spring.SqlSessionFactoryBean;
import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.Configuration;
import org.springframework.core.io.ClassPathResource;

import lombok.RequiredArgsConstructor;

@Configuration
@RequiredArgsConstructor
public class Context_2_myBatis {

	final DataSource ds;
	
	//1. setterInjection
	//2. constructorInjection >> ����
	//3. @Autowired �� �ص���.
	
	//SqlSessionFactoryBean�� �������� FactoryBean �������̽��� �����Ѵ�.
	//�� ������ �������� SqlSessionFactoryBean ��ü�� �����ϴ� ���� �ƴ϶�
	//Factory ���� getObject() �޼��带 ȣ���� ����� �����ϴ� �ǹ��̴�.
	//�� ��� �������� ���ø����̼� ���� ������ SqlSessionFactory�� �����ϰ�
	//sqlSessionFactory��� �̸����� �����Ѵ�.
	@Bean
	public SqlSessionFactory factoryBean() throws Exception {
		SqlSessionFactoryBean factoryBean = new SqlSessionFactoryBean();
		
		factoryBean.setDataSource(ds);
		
		//mapper�� �˰��ִ� ��θ� ����.
		factoryBean.setConfigLocation(new ClassPathResource("config/mybatis/mybatis-config.xml"));
		return factoryBean.getObject();
	}
	
	//Mybatis������ SqlSession ��ü�� �����ϱ� ���� SqlSessionFactory ��ü�� ����Ѵ�.
	//Mybatis Spring ���� ����� ����ϸ� SqlSessionFactory�� ���� ����� �ʿ䰡 ����.
	//�ֳ��ϸ� ������ Ʈ����� ������ ���� �ڵ����� Ŀ�� �Ǵ� �ѹ��� �����ϰ� �ݾ�����,
	//�����忡 ������ SqlSession��ü�� Spring Bean�� ���Ե� �� �ֱ� �����̴�.
	
	//SqlSessionTemplate Ŭ������ SqlSession�� �����ϰ� �ڵ忡�� SqlSession�� ��ü�ϴ� ������ �Ѵ�.
	//SQL�� ó���ϴ� Mybatis Method�� ȣ���� ��, SqlSessionTemplate�� SqlSession�� ������ Spring transaction����
	//���� �� �ֵ��� �������ش�.
	//SqlSessionTemplate�� �ʿ��� �������� Session�� �ݰ�, Commit �ϰų� Rollback�ϴ� ���� ������
	//SqlSession�� ����������Ŭ�� �����Ѵ�.0
	
	@Bean
	public SqlSessionTemplate sqlSessionBean() throws Exception {
		return new SqlSessionTemplate(factoryBean());
	}
	
	
}
