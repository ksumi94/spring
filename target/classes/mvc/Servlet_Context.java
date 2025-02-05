package mvc;

import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.Configuration;
import org.springframework.web.servlet.config.annotation.EnableWebMvc;
import org.springframework.web.servlet.config.annotation.ResourceHandlerRegistry;
import org.springframework.web.servlet.config.annotation.WebMvcConfigurer;

import com.korea.cgv.HomeController;
import com.korea.cgv.MemberController;
import com.korea.cgv.MovieController;
import com.korea.cgv.ScheduleController;
import com.korea.cgv.TheaterController;

import dao.MemberDAO;
import dao.MovieDAO;
import dao.ScheduleDAO;
import dao.SeatDAO;
import dao.TheaterDAO;


@Configuration  //���� Ŭ������ ������������ �˸��� ������̼�
@EnableWebMvc  //������̼� ����� SpringMVC�� ������ �� �ʿ��� Bean �������� �ڵ����� ���ִ� ������̼�
//@ComponentScan(basePackages = {"dao","controller"})
public class Servlet_Context implements WebMvcConfigurer {
	
	@Override
	public void addResourceHandlers(ResourceHandlerRegistry registry) {
		registry.addResourceHandler("/resources/**").addResourceLocations("/resources/");
	}
	
	/*
	 * @Bean public InternalResourceViewResolver resolver() {
	 * InternalResourceViewResolver resolver = new InternalResourceViewResolver();
	 * resolver.setViewClass(JstlView.class); resolver.setPrefix("/WEB-INF/views/");
	 * resolver.setSuffix(".jsp");
	 * 
	 * return resolver; }
	 */
	
	@Bean
	public TheaterController theaterController(TheaterDAO theaterDAO) {
		return new TheaterController(theaterDAO);
	}
	
	@Bean
	public ScheduleController scheduleController (SeatDAO seatDAO, ScheduleDAO scheduleDAO) {
		return new ScheduleController(seatDAO, scheduleDAO);
	}
	
	@Bean
	public HomeController homeController(MovieDAO movieDAO) {
		return new HomeController(movieDAO);
	}
	
	@Bean
	public MemberController memberController(MemberDAO memberDAO) {
		return new MemberController(memberDAO);
	}
	
	@Bean
	public MovieController movieController(MovieDAO movieDAO) {
		return new MovieController(movieDAO);
	}
}
