package com.icia.movie.dto;

import lombok.Data;

@Data
public class SCHEDULE {
	
	private int sNum;			// 영화 상영정보 번호
	private String sDate;		// 영화 상영 날짜
	private String sTime;		// 영화 상영 시간
	private int tNum;			// 상영관 번호
	private int mvNum;			// 영화 번호
	
	private String mvTitle; 	// 영화 이름
	private String tThtr; 		// 상영관 이름
	
}
