package dao;

import java.util.List;

import org.apache.ibatis.session.SqlSession;

import dto.SeatDTO;
import lombok.RequiredArgsConstructor;
@RequiredArgsConstructor
public class SeatDAO {

	final SqlSession sqlSession;
	
	//�α��� üũ
	public List<SeatDTO> selectList(int idx) {
		return sqlSession.selectList("st.selectList", idx);
	}
}
