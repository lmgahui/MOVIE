package com.icia.movie.dto;

import org.springframework.web.multipart.MultipartFile;

import lombok.Data;

@Data
public class MOVIE {
	
	private int	mvNum;				// 영화 번호
	private String mvTitle;			// 영화 제목
	private String mvCategory;		// 영화 장르
	private String mvPlot;			// 영화 줄거리
	private String mvDirector;		// 영화 감독
	private String mvActor;			// 영화 등장인물
	private String mvRelease;		// 영화 개봉일
	private String mvRuntime; 		// 영화 상영시간
	private String mvRating;		// 영화 상영등급
	
	private MultipartFile mvImg;	// 업로드 영화 포스터
	private String mvImgName;		// 업로드 영화 포스터 이름
	
	private String mvStill1;		// 영화 스틸컷1
	private String mvStill2;		// 영화 스틸컷2
	private String mvStill3;		// 영화 스틸컷3
	private String mvStill4;		// 영화 스틸컷4
	private String mvStill5;		// 영화 스틸컷5
	
}
