package com.icia.movie.controller;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import com.icia.movie.dto.SEARCH;
import com.icia.movie.dto.THEATER;
import com.icia.movie.service.TService;

@Controller
public class TController {

	@Autowired
	private TService tsvc;

	@Autowired
	private HttpSession session;

	private ModelAndView mav;
	
	// tRegiForm : 상영관등록 페이지 이동
	@RequestMapping(value = "/tRegiForm", method = RequestMethod.GET)
	public String tRegiForm() {
		return "theater/register";
	}
	
	// tRegister : 상영관등록
	@RequestMapping(value = "/tRegister", method = RequestMethod.POST)
	public ModelAndView tRegister(@ModelAttribute THEATER theater) {
		System.out.println("\n================ 상영관등록 ================");
		System.out.println("[1] jsp → controller : " + theater);

		mav = tsvc.tRegister(theater);
		System.out.println("[5] service → controller => mav : " + mav + "\n");
		return mav;
	}
	
	// tList : 상영관목록
	@RequestMapping(value = "/tList", method = RequestMethod.GET)
	public ModelAndView tList(@RequestParam(value = "page", required = false, defaultValue = "1") int page) {

		System.out.println("\n================ 상영관목록 ================");
		System.out.println("[1] jsp → controller");

		mav = tsvc.tList(page);
		System.out.println("[5] service → controller => mav : " + mav + "\n");

		return mav;
	}
	
	// tView : 상영관 상세보기
	@RequestMapping(value = "/tView", method = RequestMethod.GET)
	public ModelAndView tView(@RequestParam("tNum") int tNum) {
		System.out.println("\n================ 상영관상세보기 ================");
		System.out.println("[1] jsp → controller : " + tNum);

		mav = tsvc.tView(tNum);
		System.out.println("[5] service → controller => mav : " + mav + "\n");

		return mav;
	}
	
	// tModiForm : 상영관수정 페이지 이동
	@RequestMapping(value="/tModiForm", method = RequestMethod.GET)
	public ModelAndView tModiForm(@RequestParam("tNum") int tNum) {
		System.out.println("[1] jsp → controller");
		mav = tsvc.tModiForm(tNum);
		
		System.out.println("[5] service → controller => mav : " + mav + "\n");
		return mav;
	}
	
	// tModify : 상영관 수정
	@RequestMapping(value = "/tModify", method = RequestMethod.POST)
	public ModelAndView tModify(@ModelAttribute THEATER theater) {

		System.out.println("\n================ 상영관수정 ================");
		System.out.println("[1] jsp → controller : " + theater);

		mav = tsvc.tModify(theater);
		System.out.println("[5] service → controller => mav : " + mav + "\n");

		return mav;
	}
	
	// tDelete : 상영관 삭제
	@RequestMapping(value = "/tDelete", method = RequestMethod.GET)
	public ModelAndView tDelete(@RequestParam("tNum") int tNum) {
		System.out.println("\n================ 상영관삭제 ================");
		System.out.println("[1] jsp → controller : " + tNum);
		mav = tsvc.mDelete(tNum);
		System.out.println("[5] service → controller" + "\n");
		return mav;
	}
	
	// tSearch : 상영관검색
	@RequestMapping(value="/tSearch", method = RequestMethod.GET)
	public ModelAndView tSearch(@ModelAttribute SEARCH search) {
		System.out.println("\n================ 상영관검색 ================");
		System.out.println("[1] jsp → controller");
		mav = tsvc.tSearch(search);
		
		System.out.println("[5] service → controller => mav : " + mav + "\n");
		return mav;
	}
	
}
