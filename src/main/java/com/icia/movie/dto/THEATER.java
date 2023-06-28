package com.icia.movie.dto;

import lombok.Data;

@Data
public class THEATER {
	
	private int tNum;			// 상영관 번호
	private String tThtr;		// 영화 상영관 이름
	private String tAddr;		// 상영관 주소
	
	private String addr1;	// 우편번호
	private String addr2;	// 주소
	private String addr3;	// 상세주소
}
