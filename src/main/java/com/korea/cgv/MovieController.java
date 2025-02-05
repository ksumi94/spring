package com.korea.cgv;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import dao.MovieDAO;
import dto.MovieDTO;
import dto.MovieScheduleDTO;
import dto.TheaterAreaInfoDTO;
import lombok.RequiredArgsConstructor;
import util.Common;

@Controller
@RequiredArgsConstructor
public class MovieController {

	final MovieDAO movieDAO;
	
	@Autowired
	HttpServletRequest request;
	
	@Autowired
	HttpSession session;
	
	
	@RequestMapping("movieTimes")
	@ResponseBody
	public  List<MovieScheduleDTO> movieTimes(int movie_idx, int theater_idx ) {
		
		Map<String, Integer> map = new HashMap<String, Integer>();
		
		map.put("movie", movie_idx);
		map.put("theater", theater_idx);
		
		List<MovieScheduleDTO> dto = movieDAO.select(map);
		
		if(dto == null) {

			return null;
		}
		
		return dto;
	}
	
	
	
	
	
	@RequestMapping("movie_schedule")
	public String movie_schedule(Model m) {
		
		List<MovieScheduleDTO> list = movieDAO.select();
		List<MovieDTO> list2 = movieDAO.movieList();
		List<TheaterAreaInfoDTO> area = movieDAO.areaSelect();
		
		m.addAttribute("list",list);
		m.addAttribute("movie_select",list2);
		m.addAttribute("areaSelect",area);
			
		return Common.Board.VIEW_PATH+"movie_schedule.jsp";
	}
	
	@RequestMapping("insertform")
	public String insertform() {
		return Common.Board.VIEW_PATH+"movieInsert.jsp";
	}
	
	@RequestMapping("insert")
	public String insert(MovieDTO dto) {
	      
	     int res = movieDAO.insert(dto);
	      
	      if(res > 0) {
	         return Common.Board.VIEW_PATH+"movieInsert.jsp";
	      }
	      
	      return null;
	   }
	
	
}	
	
