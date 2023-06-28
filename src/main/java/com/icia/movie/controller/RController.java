package com.icia.movie.controller;

import java.util.List;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import com.icia.movie.dto.REVIEW;
import com.icia.movie.service.RService;

@Controller
public class RController {

	@Autowired
	private RService rsvc;

	@Autowired
	private HttpSession session;

	private ModelAndView mav;
	
	// rList : 관람평목록
	@RequestMapping(value = "/rList", method = RequestMethod.POST)
	public @ResponseBody List<REVIEW> rList(@RequestParam("mvNum") int mvNum) {
		System.out.println("\n================ 관람평 목록 ================");
		System.out.println("[1] jsp → cotroller => mvNum : " + mvNum);
		List<REVIEW> list = rsvc.rList(mvNum);
		System.out.println("[5] service → controller : " + list);
		return list;
	}

	// rRegister : 관람평등록
	@RequestMapping(value="rRegister", method = RequestMethod.POST)
	public  @ResponseBody List<REVIEW> rRegister(@ModelAttribute REVIEW review){
		System.out.println("\n================ 관람평 등록 ================");
		System.out.println("[1] jsp → cotroller => review : " + review);
		List<REVIEW> list = rsvc.rRegister(review);
		System.out.println("[5] service → controller : " + review );
		return list;
	}
	
	// rModify : 관람평수정
	@RequestMapping(value="rModify", method = RequestMethod.POST)
	public @ResponseBody List<REVIEW> rModify(@ModelAttribute REVIEW review){
		System.out.println("\n================ 관람평 수정 ================");
		System.out.println("[1] jsp → cotroller => review : " + review);
		List<REVIEW> list = rsvc.rModify(review);
		System.out.println("[5] service → controller : " + list );
		return list;
	}
	
	// rDelete : 관람평삭제
	@RequestMapping(value="rDelete", method = RequestMethod.POST)
	public @ResponseBody List<REVIEW> rDelete(@ModelAttribute REVIEW review){
		System.out.println("\n================ 관람평 삭제 ================");
		System.out.println("[1] jsp → cotroller => review : " + review);
		List<REVIEW> list = rsvc.rDelete(review);
		System.out.println("[5] service → controller : " + list );
		return list;
	}



}
