package com.icia.movie.dao;

import java.util.List;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.icia.movie.dto.MOVIE;
import com.icia.movie.dto.PAGING;
import com.icia.movie.dto.SEARCH;

@Repository
public class MVDAO {
	@Autowired
	private SqlSessionTemplate sql;

	// mvRegister : 영화등록
	public void mvRegister(MOVIE movie) {
		System.out.println("[3] service → dao : " + movie);
		sql.insert("Movie.mvRegister", movie);
	}

	// mvCount : 영화갯수
	public int mvCount() {
		return sql.selectOne("Movie.mvCount");
	}

	// mvList : 영화목록
	public List<MOVIE> mvList(PAGING paging) {
		System.out.println("[3] service → dao");
		return sql.selectList("Movie.mvList", paging);
	}

	// mvView : 영화상세보기
	public MOVIE mvView(int mvNum) {
		System.out.println("[3] service → dao : " + mvNum);
		return sql.selectOne("Movie.mvView", mvNum);
	}
	
	// mvModify : 영화수정
	public void mvModify(MOVIE movie) {
		System.out.println("[3] service → dao : " + movie);
		sql.update("Movie.mvModify", movie);
	}

	// mvDelete : 영화삭제
	public int mvDelete(int mvNum) {
		System.out.println("[3] service → dao : " + mvNum);
		return sql.delete("Movie.mvDelete", mvNum);
	}
	
	// mvSearch : 영화검색
	public List<MOVIE> mvSearch(SEARCH search) {
		System.out.println("[3] service → dao");
		return sql.selectList("Movie.mvSearch", search);
	}


}
