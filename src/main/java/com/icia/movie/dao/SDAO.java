package com.icia.movie.dao;

import java.util.List;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.icia.movie.dto.PAGING;
import com.icia.movie.dto.SCHEDULE;

@Repository
public class SDAO {
	@Autowired
	private SqlSessionTemplate sql;

	// sRegister : 상영정보 등록
	public void sRegister(SCHEDULE schedule) {
		System.out.println("[3] service → dao : " + schedule);
		sql.insert("Schedule.sRegister", schedule);
	}

	// sList : 상영정보 목록
	public List<SCHEDULE> sList() {
		System.out.println("[3] service → dao");
		return sql.selectList("Schedule.sList");
	}

	// smList : 상영정보 목록(예매)
	public List<SCHEDULE> smList() {
		System.out.println("[3] service → dao");
		return sql.selectList("Schedule.smList");
	}

	// smvList : 해당영화 상영정보 목록
	public List<SCHEDULE> smvList(int mvNum) {
		System.out.println("[3] service → dao");
		return sql.selectList("Schedule.smvList", mvNum);
	}

	// sView : 상영정보 상세보기
	public SCHEDULE sView(int sNum) {
		System.out.println("[3] service → dao : " + sNum);
		return sql.selectOne("Schedule.sView", sNum);
	}

	// sModify : 상영정보 수정
	public void sModify(SCHEDULE schedule) {
		System.out.println("[3] service → dao");
		sql.update("Schedule.sModify", schedule);

	}

	// sDelete : 상영정보 삭제
	public int sDelete(int sNum) {
		System.out.println("[3] service → dao");
		return sql.delete("Schedule.sDelete", sNum);
	}

	// sCount : 상영정보 갯수
	public int sCount() {
		return sql.selectOne("Schedule.sCount");
	}

}
