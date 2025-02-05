package dao;

import java.util.HashMap;
import java.util.List;

import org.apache.ibatis.session.SqlSession;

import dto.ScheduleDTO;
import dto.SelectMovieScheduleDTO;
import lombok.RequiredArgsConstructor;

@RequiredArgsConstructor
public class ScheduleDAO {

	final SqlSession sqlSession;
	
	public SelectMovieScheduleDTO selectOneSchedule(int idx){
		
		SelectMovieScheduleDTO dto = sqlSession.selectOne("s.selectOne", idx);
		return dto;
	}
	
	public List<ScheduleDTO> selectMovie(HashMap<String, Object> map){
		
		List<ScheduleDTO> list = sqlSession.selectList("s.selectMovie", map);
		
		return list;
	}
	
	public List<ScheduleDTO> selectSchedule(HashMap<String, Object> map){

		List<ScheduleDTO> list = sqlSession.selectList("s.selectSchedule", map);
		
		return list;
	}
	
	public int updateIdx(int idx) {
		int res = sqlSession.update("s.updateIdx", idx);
		
		return res;
	}
}
