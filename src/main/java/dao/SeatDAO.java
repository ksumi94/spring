package dao;

import java.util.List;

import org.apache.ibatis.session.SqlSession;

import dto.SeatDTO;
import lombok.RequiredArgsConstructor;
@RequiredArgsConstructor
public class SeatDAO {

	final SqlSession sqlSession;
	
	//로그인 체크
	public List<SeatDTO> selectList(int idx) {
		return sqlSession.selectList("st.selectList", idx);
	}
}
