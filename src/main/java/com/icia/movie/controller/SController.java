package com.icia.movie.controller;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import com.icia.movie.dto.SCHEDULE;
import com.icia.movie.dto.THEATER;
import com.icia.movie.service.SService;

@Controller
public class SController {
	@Autowired
	private SService ssvc;

	@Autowired
	private HttpSession session;

	private ModelAndView mav;

	// sRegiForm : 상영정보등록 페이지 이동
	@RequestMapping(value = "/sRegiForm", method = RequestMethod.GET)
	public String sRegiForm() {
		return "schedule/register";
	}

	// sRegister : 상영정보등록
	@RequestMapping(value = "/sRegister", method = RequestMethod.POST)
	public ModelAndView sRegister(@ModelAttribute SCHEDULE schedule) {
		System.out.println("\n================ 상영정보등록 ================");
		System.out.println("[1] jsp → controller : " + schedule);

		mav = ssvc.sRegister(schedule);
		System.out.println("[5] service → controller => mav : " + mav + "\n");
		return mav;
	}

	// sList : 상영정보 목록(관리자)
	@RequestMapping(value = "/sList", method = RequestMethod.GET)
	public ModelAndView sList() {
		System.out.println("\n================ 상영정보목록 ================");
		System.out.println("[1] jsp → controller");

		mav = ssvc.sList();
		System.out.println("[5] service → controller => mav : " + mav + "\n");

		return mav;
	}

	// smList : 상영정보 목록(예매)
	@RequestMapping(value = "/smList", method = RequestMethod.GET)
	public ModelAndView smList() {
		System.out.println("\n================ 상영정보목록 ================");
		System.out.println("[1] jsp → controller");

		mav = ssvc.smList();
		System.out.println("[5] service → controller => mav : " + mav + "\n");

		return mav;
	}

	// smvList : 해당영화 상영정보 목록
	@RequestMapping(value = "/smvList", method = RequestMethod.GET)
	public ModelAndView smvList(@RequestParam("mvNum") int mvNum) {

		System.out.println("\n================ 상영정보목록 ================");
		System.out.println("[1] jsp → controller");

		mav = ssvc.smvList(mvNum);
		System.out.println("[5] service → controller => mav : " + mav + "\n");

		return mav;
	}

	// sView : 상영정보 상세보기
	@RequestMapping(value = "/sView", method = RequestMethod.GET)
	public ModelAndView sView(@RequestParam("sNum") int sNum) {
		System.out.println("\n================ 상영정보상세보기 ================");
		System.out.println("[1] jsp → controller : " + sNum);

		mav = ssvc.sView(sNum);
		System.out.println("[5] service → controller => mav : " + mav + "\n");

		return mav;
	}

	// sModiForm : 상영관수정 페이지 이동
	@RequestMapping(value = "/sModiForm", method = RequestMethod.GET)
	public ModelAndView sModiForm(@RequestParam("sNum") int sNum) {
		System.out.println("[1] jsp → controller");
		mav = ssvc.sModiForm(sNum);

		System.out.println("[5] service → controller => mav : " + mav + "\n");
		return mav;
	}

	// sModify : 상영 수정
	@RequestMapping(value = "/sModify", method = RequestMethod.POST)
	public ModelAndView sModify(@ModelAttribute SCHEDULE schedule) {

		System.out.println("\n================ 상영정보수정 ================");
		System.out.println("[1] jsp → controller : " + schedule);

		mav = ssvc.sModify(schedule);
		System.out.println("[5] service → controller => mav : " + mav + "\n");

		return mav;
	}

	// sDelete : 상영정보삭제
	@RequestMapping(value = "/sDelete", method = RequestMethod.GET)
	public ModelAndView sDelete(@RequestParam("sNum") int sNum) {
		System.out.println("\n================ 상영정보삭제 ================");
		System.out.println("[1] jsp → controller : " + sNum);
		mav = ssvc.sDelete(sNum);
		System.out.println("[5] service → controller" + "\n");
		return mav;
	}

}
