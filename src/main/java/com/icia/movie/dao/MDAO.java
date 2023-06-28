package com.icia.movie.dao;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.icia.movie.dto.MEMBER;

@Repository
public class MDAO {
	@Autowired
	private SqlSessionTemplate sql;

	// 아이디 중복 체크
	public String idCheck(String mId) {
		return sql.selectOne("Member.idCheck", mId);
	}

	// 회원가입
	public void mJoin(MEMBER member) {
		System.out.println("[3] service → dao : " + member);
		sql.insert("Member.mJoin", member);
	}

	// 로그인
	public String mLogin(String mId) {
		System.out.println("[3] service → dao => mid : " + mId);
		return sql.selectOne("Member.mLogin", mId);
	}

	// 회원 상세정보
	public MEMBER mView(String mId) {
		System.out.println("[3] service → dao => mid : " + mId);
		return sql.selectOne("Member.mView", mId);
	}
	
	// 회원 수정
	public void mModify(MEMBER member) {
		System.out.println("[3] service → dao");
		sql.update("Member.mModify", member);
	}

	// 회원 탈퇴
	public int mDelete(String mId) {
		System.out.println("[3] service → dao");
		return sql.delete("Member.mDelete", mId);
	}

}
