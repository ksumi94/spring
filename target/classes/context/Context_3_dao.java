package context;

import org.apache.ibatis.session.SqlSession;
import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.Configuration;

import dao.MemberDAO;
import dao.MovieDAO;
import dao.ScheduleDAO;
import dao.SeatDAO;
import dao.TheaterDAO;

@Configuration
public class Context_3_dao {
	
	@Bean
	public MovieDAO movieDAO(SqlSession sqlSession) {
		return new MovieDAO(sqlSession);
	}
	
	@Bean
	public SeatDAO seatDAO(SqlSession sqlSession) {
		return new SeatDAO(sqlSession);
	}

	@Bean
	public ScheduleDAO scheduleDAO(SqlSession sqlSession) {
		return new ScheduleDAO(sqlSession);
	}
	
	@Bean
	public TheaterDAO theaterDAO(SqlSession sqlSession) {
		return new TheaterDAO(sqlSession);
	}
	
	@Bean
	public MemberDAO memberDAO(SqlSession sqlSession) {
		return new MemberDAO(sqlSession);
	}
}