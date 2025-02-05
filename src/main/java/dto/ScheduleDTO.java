package dto;

import lombok.Getter;
import lombok.Setter;

@Getter
@Setter
public class ScheduleDTO {

	private int idx,movie_idx,age,runtime,theater_idx;
	private String movie_start,subject,category,open_date,theater_name,location,movie_date;
}
