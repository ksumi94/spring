package com.korea.cgv;

import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.List;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import dao.TheaterDAO;
import dto.TheaterDTO;
import lombok.RequiredArgsConstructor;
import util.Common;

@Controller
@RequiredArgsConstructor
public class TheaterController {

	final TheaterDAO theater_dao;
	
	@Autowired
	HttpServletRequest request;
	
	
	@RequestMapping("theater")
	public ModelAndView theater (@RequestParam(value = "idx", defaultValue = "1")int idx,
							@RequestParam(value = "area", defaultValue = "CGV강남")String area,
							@RequestParam(value = "date", required = false)String date) {
		
		ModelAndView mav = new ModelAndView();

        mav.setViewName(Common.Board.VIEW_PATH + "theater.jsp");
        mav.addObject("theater_idx", idx); // idx 파라미터 추가
        mav.addObject("name", area); // area 파라미터 추가

        //System.out.println(today);
        return mav;
        
		//return Common.Board.VIEW_PATH+"theater.jsp";
	}
	
	
	@RequestMapping("selectCity")
	@ResponseBody
	public List<TheaterDTO> selectCity (@RequestParam(value = "area", defaultValue = "서울")String area){
		
		List<TheaterDTO> list = theater_dao.selectOneCity(area);
		System.out.println(list.get(1).getTheater_name());
		
		return list;
	}
	
	


}
