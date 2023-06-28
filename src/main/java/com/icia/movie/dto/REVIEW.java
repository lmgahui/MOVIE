package com.icia.movie.dto;

import lombok.Data;

@Data
public class REVIEW {

	private int rNum;				// 리뷰 작성 번호
	private int mvNum;				// 영화 번호
	private String rWriter;			// 리뷰 작성자
	private String rContent;		// 리뷰 내용
	private String rDate;			// 리뷰 작성 날짜
	
}