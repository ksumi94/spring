package com.korea.cgv;

import java.util.HashMap;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.stereotype.Repository;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import dao.MemberDAO;
import dao.MovieDAO;
import dto.MemberDTO;
import lombok.RequiredArgsConstructor;
import util.Common;

@Controller
@Repository
@RequiredArgsConstructor
public class MemberController {

	final MemberDAO memberDAO;
	
	@Autowired
	HttpServletRequest request;
	
	@Autowired
	HttpSession session;
	

	
	@RequestMapping("login")
	@ResponseBody
	public String login(String id, String pwd) {
		MemberDTO dto = memberDAO.selectOne(id);
		
		
		if(dto == null) {
			return "[{param':'no_id'}]";
		}
		
		
		if(!pwd.equals(dto.getM_pwd())){
			return "[{'param':'no_pwd'}]";
					
		}
		
		session.setAttribute("id",dto);
		
		return "[{'param':'clear'}]";
		
		
	}
	
	
	  @RequestMapping("movie_login")
	   public String movie_login() {
	      return Common.Board.VIEW_PATH+"movie_login.jsp";
	   }

	    
	   
	   @RequestMapping("logout")
	   public String logout() {
	      session.removeAttribute("id");
	      return Common.Board.VIEW_PATH+"movie_home.jsp";
	   }
	
	
	@RequestMapping("naver")
	public String naver() {
		return Common.Board.VIEW_PATH+"movie_login.jsp";
	}
	
	
	
	

	@RequestMapping("member_insert")
	public String member_insert() throws Exception{
		return Common.Board.VIEW_PATH+"member_insert.jsp";
	}
	
	
	@RequestMapping("member_insert_db")
	public String member_insert(MemberDTO dto) throws Exception{
		int res = memberDAO.insert(dto);	
		
		if(res > 0) {
			return Common.Board.VIEW_PATH+"join_finish.jsp" ;
		}
		return null;
		
	}
	
	
	@RequestMapping("id_check")
	@ResponseBody
	public String id_check(String id) {
		MemberDTO dto = memberDAO.selectOne(id);
		
		
		if(dto == null) {
			return "[{'res':'yes'}]";
		}
		return "[{'res':'no'}]";
		
	}
	
	
	
	@RequestMapping("delete")
	@ResponseBody 
	public String delete(int idx, String pwd) {
		
		HashMap<String, Object> map = new HashMap<String, Object>();
		map.put("idx", idx);
		map.put("pwd", pwd);
		
		int res = memberDAO.delete(map);
		
		String result = "no";
		
		if(res == 1) {
			result = "yes";
		}
		
		String finRes = String.format("[{'res':'%s'}]", result);
		
		return finRes;
		
	}
	
	
	
	
	@RequestMapping("modify")
	public String modify(MemberDTO dto, HttpServletRequest request) {
		String id = request.getRemoteAddr();
		dto.setM_id(id);
		
		int res = memberDAO.update(dto);
		
		return Common.Board.VIEW_PATH+"main.jsp";
	}
	
	
	@RequestMapping("member_modify")
	public String member_modify(Model model, @RequestParam(value = "idx", defaultValue = "1") int idx) {
		
		MemberDTO dto = memberDAO.selectOne(idx);
		
		model.addAttribute(dto);
		
		return Common.Board.VIEW_PATH+"member_modify.jsp";
		
	}

}