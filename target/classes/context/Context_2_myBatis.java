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
	//2. constructorInjection >> 권장
	//3. @Autowired 로 해도됨.
	
	//SqlSessionFactoryBean은 스프링의 FactoryBean 인터페이스를 구현한다.
	//이 설정은 스프링이 SqlSessionFactoryBean 자체를 생성하는 것이 아니라
	//Factory 에서 getObject() 메서드를 호출한 결과를 리턴하는 의미이다.
	//이 경우 스프링은 어플리케이션 시작 지점에 SqlSessionFactory를 빌드하고
	//sqlSessionFactory라는 이름으로 저장한다.
	@Bean
	public SqlSessionFactory factoryBean() throws Exception {
		SqlSessionFactoryBean factoryBean = new SqlSessionFactoryBean();
		
		factoryBean.setDataSource(ds);
		
		//mapper를 알고있는 경로를 주입.
		factoryBean.setConfigLocation(new ClassPathResource("config/mybatis/mybatis-config.xml"));
		return factoryBean.getObject();
	}
	
	//Mybatis에서는 SqlSession 객체를 생성하기 위해 SqlSessionFactory 객체를 사용한다.
	//Mybatis Spring 연동 모듈을 사용하면 SqlSessionFactory를 직접 사용할 필요가 없다.
	//왜냐하면 스프링 트랜잭션 설정에 따라 자동으로 커밋 또는 롤백을 수행하고 닫아지는,
	//쓰레드에 안전한 SqlSession객체가 Spring Bean에 주입될 수 있기 때문이다.
	
	//SqlSessionTemplate 클래스는 SqlSession을 구현하고 코드에서 SqlSession을 대체하는 역할을 한다.
	//SQL을 처리하는 Mybatis Method를 호출할 때, SqlSessionTemplate는 SqlSession이 현재의 Spring transaction에서
	//사용될 수 있도록 보장해준다.
	//SqlSessionTemplate는 필요한 시점에서 Session을 닫고, Commit 하거나 Rollback하는 것을 포함한
	//SqlSession의 라이프사이클을 관리한다.0
	
	@Bean
	public SqlSessionTemplate sqlSessionBean() throws Exception {
		return new SqlSessionTemplate(factoryBean());
	}
	
	
}
