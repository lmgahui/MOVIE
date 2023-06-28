package com.icia.movie.dto;

import lombok.Data;

@Data
public class MEMBER {
	
	private String mId;			// 회원 아이디
	private String mPw;			// 회원 비밀번호
	private String mName;		// 회원 이름
	private String mEmail;		// 회원 이메일
	private String mPhone;		// 회원 연락처
	private String mBirth;		// 회원 생년월일
	private String mGender;		// 회원 성별
	private String mAddr;		// 회원 주소
	
	private String addr1;	// 우편번호
	private String addr2;	// 주소
	private String addr3;	// 상세주소
	
}
