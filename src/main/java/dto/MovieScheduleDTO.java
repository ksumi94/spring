package dto;

import lombok.Data;

@Data
public class MovieScheduleDTO {
	// ��ȭ �ѹ�
	private int idx;
	
	// �󿵰� ������ȣ
	private int movie_idx;
	
	//���� ��ȣ
	private int theater_idx;
	
	// ��ȭ ����
	private String movie_date;
	
	// ��ȭ ���۽ð�
	private String movie_start;
	
	// ��ȭ ȸ��
	private int movie_turn;
}
