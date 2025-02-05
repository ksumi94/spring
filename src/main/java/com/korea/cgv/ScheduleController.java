package com.korea.cgv;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import dao.ScheduleDAO;
import dao.SeatDAO;
import dto.ScheduleDTO;
import dto.SeatDTO;
import dto.SelectMovieScheduleDTO;
import lombok.RequiredArgsConstructor;
import util.Common;

@Controller
@RequiredArgsConstructor
public class ScheduleController {

	final SeatDAO seat_DAO;
	final ScheduleDAO schedule_DAO;
	
	@Autowired
	HttpServletRequest request;
	
	@RequestMapping("seat")
	public String seat(Model model, @RequestParam(value = "idx", defaultValue = "664")int idx) {
		
		List<SeatDTO> list = seat_DAO.selectList(idx);
		SelectMovieScheduleDTO dto = schedule_DAO.selectOneSchedule(idx);
		
		model.addAttribute("list",list);
		model.addAttribute("dto",dto);
		
		System.out.println(dto.getSubject());
		
		return Common.Board.VIEW_PATH+"seatSelect_re.jsp";
	}
	
	@RequestMapping("select_date_movie")
	@ResponseBody
	public List<ScheduleDTO> select_date_movie(int idx, String date){
		
		HashMap<String, Object> map = new HashMap<String, Object>();
		map.put("theater_idx",idx );
		map.put("date", date);
		List<ScheduleDTO> list = schedule_DAO.selectMovie(map);
		
		return list;
	}
	
	@RequestMapping("select_schedule")
	@ResponseBody
	public List<ScheduleDTO> select_schedule(int idx, String date, int subject){
		System.out.println("컨트롤러 파라미터");
		System.out.println(idx);
		System.out.println(date);
		System.out.println(subject);
		HashMap<String, Object> map = new HashMap<String, Object>();
		map.put("idx", idx);
		map.put("date", date);
		map.put("subject", subject);
		
		List<ScheduleDTO> list =  schedule_DAO.selectSchedule(map);
		
		/*
		 * for(int i=0; i<8; i++) { System.out.println(list.get(i).getMovie_start()); }
		 */
		
		
		return list;
	}

	
	@RequestMapping("ticketing")
	@ResponseBody
	public Object ticketing(@RequestParam(value = "idx", defaultValue = "")int idx) {
		
		int res = schedule_DAO.updateIdx(idx);
		
		
		if( res != 0) {
			 return res;
		}

		return null;
	}
		
}