package dto;

import lombok.Getter;
import lombok.Setter;

@Getter
@Setter
public class SelectMovieScheduleDTO {
	
	private int idx, movie_idx, age, runtime;
	private String movie_date, subject, movie_start,theater_name,location;

}
