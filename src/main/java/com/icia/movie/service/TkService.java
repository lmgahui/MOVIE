package com.icia.movie.service;

import java.util.List;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.web.servlet.ModelAndView;

import com.icia.movie.dao.TKDAO;
import com.icia.movie.dto.SCHEDULE;
import com.icia.movie.dto.TICKET;

@Service
public class TkService {

	@Autowired
	private TKDAO tkdao;

	@Autowired
	private HttpServletRequest request;

	private ModelAndView mav;

	// tkRegister : 예매등록
	public ModelAndView tkRegister(TICKET ticket) {
		System.out.println("[2] controller → service : " + ticket);
		mav = new ModelAndView();

		try {
			// 트라이문에 들어가는건 보이드
			tkdao.tkRegister(ticket);
			System.out.println("[4] dao → service");

			mav.setViewName("index");

		} catch (Exception e) {
			mav.setViewName("ticket/register");

			// 오류가 난 부분을 알려준다.
			e.printStackTrace();
		}

		System.out.println("[4] dao → service => mav : " + mav);
		return mav;
	}

}
