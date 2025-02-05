package dao;

import java.util.HashMap;

import org.apache.ibatis.session.SqlSession;

import org.springframework.stereotype.Repository;

import dto.MemberDTO;

import lombok.RequiredArgsConstructor;

@Repository
@RequiredArgsConstructor
public class MemberDAO {
	
	final SqlSession sqlSession;
	
	//로그인 체크
	public MemberDTO selectOne(String id) {
		return sqlSession.selectOne("mem.loginCheck",id);
	}

	
	//회원가입
	public int insert(MemberDTO dto) {
		return sqlSession.insert("mem.member_insert",dto);
	}

	public int delete(HashMap<String,Object> map) {
		return sqlSession.delete("mem.delete",map);
	}
	
	
	public MemberDTO selectOne(int idx) {
		return sqlSession.selectOne("mem.member_one",idx);
	}

	public int update(MemberDTO dto) {
		return sqlSession.update("mem.member_modify",dto);
	}

}
