package dao;

import java.util.List;
import java.util.Map;

import org.apache.ibatis.session.SqlSession;

import dto.MovieDTO;
import dto.MovieScheduleDTO;
import dto.TheaterAreaInfoDTO;
import lombok.RequiredArgsConstructor;

@RequiredArgsConstructor
public class MovieDAO {
	
	final SqlSession sqlSession;

	public List<MovieScheduleDTO> select(){
		
		return sqlSession.selectList("s.movie_schedule");
	}
	
	public List<MovieDTO> movieList() {
	      return sqlSession.selectList("m.movieInfo");
	   }
	   
	  //��ȭ ������ �Է��ϱ�
	public int insert(MovieDTO dto) {
	int res = sqlSession.insert("m.movie_insert", dto);
	      
	      return res;
	   }
	
	// ��ȭ�� ���� ����
	public List<TheaterAreaInfoDTO> areaSelect(){
		
				
		return sqlSession.selectList("a.theater_area");
	}

	// ��ȭ ��ȭ�� ajax
	public List<MovieScheduleDTO> select(Map<String, Integer> map) {
		System.out.println(map);
		return sqlSession.selectList("s.movieSchedule",map);
	}
	
   public MovieDTO selectOne(int idx) {
	      /*
	       * System.out.println("dao����"); System.out.println(idx);
	       */
	      return sqlSession.selectOne("m.movie_one", idx);
	   }
}
