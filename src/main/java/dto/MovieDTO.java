package dto;

import java.sql.Date;

import org.springframework.format.annotation.DateTimeFormat;

import lombok.Data;

@Data
public class MovieDTO {
   
   private int idx,age,runtime;
   private String subject, director, actor, category, detail_text;
   @DateTimeFormat(pattern = "yyyy-MM-dd")
   private Date open_date;
}
