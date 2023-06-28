package com.icia.movie.service;


import java.util.List;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.web.servlet.ModelAndView;

import com.icia.movie.dao.RDAO;
import com.icia.movie.dto.REVIEW;

@Service
public class RService {
	
	@Autowired
	private RDAO rdao;

	@Autowired
	private HttpServletRequest request;

	private ModelAndView mav;
	
	// 관람평 목록
	public List<REVIEW> rList(int mvNum) {
		System.out.println("[2] controller → service => mvNum : " + mvNum);

		List<REVIEW> list = rdao.rList(mvNum);

		System.out.println("[4] dao → service => list : " + list);
		return list;
	}

	// 관람평 등록
	public List<REVIEW> rRegister(REVIEW review) {
		System.out.println("[2] controller → service => review : " + review);
		mav = new ModelAndView();
		
		try {
			rdao.rRegister(review);
		} catch (Exception e) {
			e.printStackTrace();
		}

		List<REVIEW> list = rdao.rList(review.getMvNum());

		System.out.println("[4] dao → service => list : " + list);
		return list;
	}

	// 관람평 수정
	public List<REVIEW> rModify(REVIEW review) {
		System.out.println("[2] controller → service => review : " + review);

		try {
			rdao.rModify(review);
		} catch (Exception e) {
			e.printStackTrace();
		}

		List<REVIEW> list = rdao.rList(review.getMvNum());

		System.out.println("[4] dao → service => list : " + list);
		return list;
	}

	// 관람평 삭제
	public List<REVIEW> rDelete(REVIEW review) {
		System.out.println("[2] controller → service => review : " + review);

		try {
			rdao.rDelete(review);
		} catch (Exception e) {
			e.printStackTrace();
		}

		List<REVIEW> list = rdao.rList(review.getMvNum());

		System.out.println("[4] dao → service => list : " + list);
		return list;
	}


}
