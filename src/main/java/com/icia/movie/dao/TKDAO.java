package com.icia.movie.dao;

import java.util.List;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.icia.movie.dto.SCHEDULE;
import com.icia.movie.dto.TICKET;

@Repository
public class TKDAO {
	@Autowired
	private SqlSessionTemplate sql;

	// tkRegister : 예매등록
	public void tkRegister(TICKET ticket) {
		System.out.println("[3] service → dao : " + ticket);
		sql.insert("Ticket.tkRegister", ticket);
	}

}
