package com.icia.movie.dao;

import java.util.List;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.icia.movie.dto.REVIEW;

@Repository
public class RDAO {
	@Autowired
	private SqlSessionTemplate sql;
	
	public List<REVIEW> rList(int mvNum) {
		System.out.println("[3] service → dao : " + mvNum);
		return sql.selectList("Review.rList", mvNum);
	}

	public void rRegister(REVIEW review) {
		System.out.println("[3] service → dao : " + review);
		sql.insert("Review.rRegister", review);
	}

	public void rModify(REVIEW review) {
		System.out.println("[3] service → dao : " + review);
		sql.update("Review.rModify", review);
	}

	public void rDelete(REVIEW review) {
		System.out.println("[3] service → dao : " + review);
		sql.delete("Review.rDelete", review);
	}
	


	

}
