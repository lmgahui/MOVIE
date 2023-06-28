package com.icia.movie.service;

import java.util.List;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;
import org.springframework.stereotype.Service;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import com.icia.movie.dao.MVDAO;
import com.icia.movie.dao.SDAO;
import com.icia.movie.dao.TDAO;
import com.icia.movie.dto.MEMBER;
import com.icia.movie.dto.MOVIE;
import com.icia.movie.dto.PAGING;
import com.icia.movie.dto.SCHEDULE;
import com.icia.movie.dto.THEATER;

@Service
public class SService {
	@Autowired
	private SDAO sdao;

	@Autowired
	private MVDAO mvdao;

	@Autowired
	private HttpSession session;

	private ModelAndView mav;

	// 등록
	public ModelAndView sRegister(SCHEDULE schedule) {
		System.out.println("[2] controller → service : " + schedule);
		mav = new ModelAndView();

		try {
			// 트라이문에 들어가는건 보이드
			sdao.sRegister(schedule);
			System.out.println("[4] dao → service");

			mav.setViewName("redirect:/sList");

		} catch (Exception e) {
			mav.setViewName("schedule/register");

			e.printStackTrace();
		}

		System.out.println("[4] dao → service => mav : " + mav);
		return mav;
	}

	// sList : 상영정보 목록
	public ModelAndView sList() {
		System.out.println("[2] controller → service");
		mav = new ModelAndView();

		List<SCHEDULE> sList = sdao.sList();

		mav.addObject("list", sList);

		mav.setViewName("schedule/sList");

		System.out.println("[4] dao → service : " + sList);
		return mav;
	}

	// smList : 상영정보 목록(예매)
	public ModelAndView smList() {
		System.out.println("[2] controller → service");
		mav = new ModelAndView();

		List<SCHEDULE> smList = sdao.smList();

		mav.addObject("list", smList);

		mav.setViewName("ticket/register");

		System.out.println("[4] dao → service : " + smList);
		return mav;
	}

	// smvList : 해당영화 상영정보 목록
	public ModelAndView smvList(int mvNum) {
		System.out.println("[2] controller → service");

		mav = new ModelAndView();

		MOVIE movie = mvdao.mvView(mvNum);
		List<SCHEDULE> smvList = sdao.smvList(mvNum);
		System.out.println(smvList);

		// Model
		mav.addObject("mvlist", movie);
		mav.addObject("list", smvList);

		// View
		mav.setViewName("schedule/list");

		System.out.println("[4] dao → service => mav : " + mav);

		return mav;
	}

	// sView : 상영정보 상세보기
	public ModelAndView sView(int sNum) {
		System.out.println("[2] controller → service : " + sNum);
		mav = new ModelAndView();

		SCHEDULE schedule = sdao.sView(sNum);

		mav.addObject("view", schedule);
		mav.setViewName("schedule/view");

		System.out.println("[4] dao → service : " + schedule);
		return mav;
	}

	// sModiForm : 상영정보 수정 페이지 이동
	public ModelAndView sModiForm(int sNum) {
		System.out.println("[2] controller → service");
		mav = new ModelAndView();

		SCHEDULE schedule = sdao.sView(sNum);

		mav.addObject("modify", schedule);
		mav.setViewName("schedule/modify");

		System.out.println("[4] dao → service => mav : " + mav);
		return mav;
	}

	// sModify : 상영정보 수정
	public ModelAndView sModify(SCHEDULE schedule) {
		System.out.println("[2] controller → service");
		mav = new ModelAndView();

		try {
			// 트라이문에 들어가는건 보이드
			sdao.sModify(schedule);
			System.out.println("[4] dao → service");

			mav.setViewName("redirect:/sList");

		} catch (Exception e) {
			mav.setViewName("schedule/modify");

			// 오류가 난 부분을 알려준다.
			e.printStackTrace();
		}

		System.out.println("[4] dao → service => mav : " + mav);
		return mav;
	}

	// sDelete : 상영정보 삭제
	public ModelAndView sDelete(int sNum) {
		System.out.println("[2] controller → service");
		mav = new ModelAndView();

		SCHEDULE schedule = sdao.sView(sNum);

		int result = sdao.sDelete(sNum);

		if (result > 0) {
			mav.setViewName("redirect:/sList");
		} else {
			mav.setViewName("redirect:/sView?sNum=" + schedule);
		}

		System.out.println("[4] dao → service => mav : " + mav);
		return mav;
	}

}
