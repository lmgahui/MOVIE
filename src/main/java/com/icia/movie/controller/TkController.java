package com.icia.movie.controller;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import com.icia.movie.dto.TICKET;
import com.icia.movie.service.TkService;

@Controller
public class TkController {

	@Autowired
	private TkService tksvc;

	@Autowired
	private HttpSession session;

	private ModelAndView mav;

	// tkRegiForm : 예매 페이지 이동
	@RequestMapping(value = "/tkRegiForm", method = RequestMethod.GET)
	public String tkRegiForm() {
		return "ticket/register";
	}

	// tkRegister : 예매등록
	@RequestMapping(value = "/tkRegister", method = RequestMethod.POST)
	public ModelAndView tkRegister(@ModelAttribute TICKET ticket) {

		System.out.println("\n================ 예매등록 ================");
		System.out.println("[1] jsp → controller : " + ticket);

		mav = tksvc.tkRegister(ticket);
		System.out.println("[5] service → controller => mav : " + mav + "\n");

		return mav;
	}

}
