package dto;

import lombok.Getter;
import lombok.Setter;

@Getter
@Setter
public class SeatDTO {

	private int idx,theater_num,seat_order, use_seat;
	private String area, detail_area, theater_name,seat_row,seat_col;
}
