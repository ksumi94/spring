package com.korea.cgv;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import dao.MovieDAO;
import dto.MovieDTO;
import lombok.RequiredArgsConstructor;
import util.Common;

@Controller
@RequiredArgsConstructor
public class HomeController {
	
	final MovieDAO movieDAO;
	
	@Autowired
	HttpServletRequest request;
	
	
	@RequestMapping(value = {"/", "movie_home"})
	public String movie_home() {
		return Common.Board.VIEW_PATH+"movie_home.jsp";
	}
	/*
	@RequestMapping(value = {"/", "movie_home"})
	public String movie_home() {
		return "movie_home.jsp";
	}
	*/
	@RequestMapping("movie_chart")
	public String movie_chart() {
		return Common.Board.VIEW_PATH+"movie_chart.jsp";
	}
	
   @RequestMapping("info")
   public String info(Model model, @RequestParam(value = "idx", required = false) int idx) {
      MovieDTO dto = movieDAO.selectOne(idx);
      model.addAttribute("dto", dto);
      /*
       * System.out.println(dto);
       */
      return Common.Board.VIEW_PATH+"movie_info.jsp";
   
   }
	
}
