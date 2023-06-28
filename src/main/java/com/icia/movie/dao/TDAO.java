package com.icia.movie.dao;

import java.util.List;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.icia.movie.dto.PAGING;
import com.icia.movie.dto.SEARCH;
import com.icia.movie.dto.THEATER;

@Repository
public class TDAO {
	@Autowired
	private SqlSessionTemplate sql;

	// tRegister : 상영관등록
	public void tRegister(THEATER theater) {
		System.out.println("[3] service → dao : " + theater);
		sql.insert("Theater.tRegister", theater);
	}

	public int tCount() {
		return sql.selectOne("Theater.tCount");
	}

	// tList : 상영관목록
	public List<THEATER> tList(PAGING paging) {
		System.out.println("[3] service → dao");
		return sql.selectList("Theater.tList", paging);
	}

	// tView : 상영관 상세보기
	public THEATER tView(int tNum) {
		System.out.println("[3] service → dao : " + tNum);
		return sql.selectOne("Theater.tView", tNum);
	}

	// mModify : 상영관 수정
	public void mModify(THEATER theater) {
		System.out.println("[3] service → dao");
		sql.update("Theater.tModify", theater);
	}

	// tDelete : 상영관 삭제
	public int tDelete(int tNum) {
		System.out.println("[3] service → dao");
		return sql.delete("Theater.tDelete", tNum);
	}

	public List<THEATER> tSearch(SEARCH search) {
		System.out.println("[3] service → dao");
		return sql.selectList("Theater.tSearch", search);
	}
	
	

}
