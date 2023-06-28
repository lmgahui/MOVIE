package com.icia.movie.controller;

import java.io.IOException;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import com.icia.movie.dto.MOVIE;
import com.icia.movie.dto.SEARCH;
import com.icia.movie.service.MvService;

@Controller
public class MvController {

	@Autowired
	private MvService mvsvc;

	@Autowired
	private HttpSession session;

	private ModelAndView mav;

	// mvRegiForm : 영화등록 페이지 이동
	@RequestMapping(value = "/mvRegiForm", method = RequestMethod.GET)
	public String mvRegiForm() {
		return "movie/register";
	}

	// mvRegister : 영화등록
	@RequestMapping(value = "/mvRegister", method = RequestMethod.POST)
	public ModelAndView mvRegister(@ModelAttribute MOVIE movie) {

		System.out.println("\n================ 영화등록 ================");
		System.out.println("[1] jsp → controller : " + movie);

		mav = mvsvc.mvRegister(movie);
		System.out.println("[5] service → controller => mav : " + mav + "\n");

		return mav;
	}
	
	// mvList : 영화목록
	@RequestMapping(value = "/mvList", method = RequestMethod.GET)
	public ModelAndView mvList(@RequestParam(value = "page", required = false, defaultValue = "1") int page) {

		System.out.println("\n================ 영화목록 ================");
		System.out.println("[1] jsp → controller");

		mav = mvsvc.mvList(page);
		System.out.println("[5] service → controller => mav : " + mav + "\n");

		return mav;
	}

	// mvView : 영화 상세보기
	@RequestMapping(value = "/mvView", method = RequestMethod.GET)
	public ModelAndView mvView(@RequestParam("mvNum") int mvNum) {
		System.out.println("\n================ 영화상세보기 ================");
		System.out.println("[1] jsp → controller : " + mvNum);

		mav = mvsvc.mvView(mvNum);
		System.out.println("[5] service → controller => mav : " + mav + "\n");

		return mav;
	}

	// mvModiForm : 영화수정 페이지 이동
	@RequestMapping(value="/mvModiForm", method = RequestMethod.GET)
	public ModelAndView mvModiForm(@RequestParam("mvNum") int mvNum) {
		System.out.println("[1] jsp → controller");
		mav = mvsvc.mvModiForm(mvNum);
		
		System.out.println("[5] service → controller => mav : " + mav + "\n");
		return mav;
	}

	// mvModify : 영화수정
	@RequestMapping(value = "/mvModify", method = RequestMethod.POST)
	public ModelAndView mvModify(@ModelAttribute MOVIE movie) throws IllegalStateException, IOException {
		System.out.println("\n================ 영화수정 ================");
		System.out.println("[1] jsp → controller : " + movie);

		mav = mvsvc.mvModify(movie);
		System.out.println("[5] service → controller => mav : " + mav + "\n");

		return mav;
	}
	
	// mvDelete : 영화삭제
	@RequestMapping(value = "/mvDelete", method = RequestMethod.GET)
	public ModelAndView mvDelete(@RequestParam("mvNum") int mvNum) {
		System.out.println("\n================ 영화삭제 ================");
		System.out.println("[1] jsp → controller : " + mvNum);
		
		mav = mvsvc.mvDelete(mvNum);
		System.out.println("[5] service → controller => mav : " + mav + "\n");
		return mav;
	}
	
	// mvSearch : 영화검색
	@RequestMapping(value="/mvSearch", method = RequestMethod.GET)
	public ModelAndView mvSearch(@ModelAttribute SEARCH search) {
		System.out.println("\n================ 영화검색 ================");
		System.out.println("[1] jsp → controller");
		mav = mvsvc.mvSearch(search);
		
		System.out.println("[5] service → controller => mav : " + mav + "\n");
		return mav;
	}
	
}
