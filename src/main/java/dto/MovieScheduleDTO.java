package dto;

import lombok.Data;

@Data
public class MovieScheduleDTO {
	// 영화 넘버
	private int idx;
	
	// 상영관 고유번호
	private int movie_idx;
	
	//극장 번호
	private int theater_idx;
	
	// 영화 날자
	private String movie_date;
	
	// 영화 시작시간
	private String movie_start;
	
	// 영화 회차
	private int movie_turn;
}
