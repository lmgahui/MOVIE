package com.icia.movie.dto;

import lombok.Data;

@Data
public class TICKET {

	private int tkNum;			// 예매 번호
	private String mId;			// 회원 아이디
	private int sNum;			// 영화 상영정보 번호
	private int tkPerson;		// 영화 관람 인원
	private String tkPrice;		// 예매 가격
	
	private String mvTitle; 	// 영화 이름
	private String tThtr; 		// 상영관 이름
	
}