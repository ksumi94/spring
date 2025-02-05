package dao;

import java.util.List;

import org.apache.ibatis.session.SqlSession;

import dto.TheaterDTO;
import lombok.RequiredArgsConstructor;

@RequiredArgsConstructor
public class TheaterDAO {
final SqlSession sqlSession;
	
	public List<TheaterDTO> selectOneCity(String area){
		
		List<TheaterDTO> list = sqlSession.selectList("t.selectOne", area);
		return list;
	}
}
