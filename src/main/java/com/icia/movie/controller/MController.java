package com.icia.movie.controller;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import com.icia.movie.dto.MEMBER;
import com.icia.movie.service.MService;

@Controller
public class MController {

	@Autowired
	private MService msvc;

	@Autowired
	private HttpSession session;

	private ModelAndView mav;

	// 프로젝트 시작
	@RequestMapping(value = "/", method = RequestMethod.GET)
	public String index() {
		return "index";
	}

	// indexForm : 메인 페이지 이동
	@RequestMapping(value = "/indexForm", method = RequestMethod.GET)
	public String indexForm() {
		return "index";
	}

	// joinForm : 회원가입 페이지 이동
	@RequestMapping(value = "/joinForm", method = RequestMethod.GET)
	public String joinForm() {
		return "member/join";
	}

	// idCheck : 아이디 중복 체크
	@RequestMapping(value = "/idCheck", method = RequestMethod.GET)
	public @ResponseBody String idCheck(@RequestParam("mId") String mId) {
		// ResponseBody를 추가하면 return값이 jsp가 아닌 data로 반환된다.
		String result = msvc.idCheck(mId);
		return result;
	}

	// mJoin : 회원가입
	@RequestMapping(value = "/mJoin", method = RequestMethod.POST)
	public ModelAndView mJoin(@ModelAttribute MEMBER member) {

		System.out.println("\n================ 회원가입 ================");
		System.out.println("[1] jsp → controller : " + member);

		mav = msvc.mJoin(member);
		System.out.println("[5] service → controller => mav : " + mav + "\n");

		return mav;
	}

	// loginForm : 로그인 페이지 이동
	@RequestMapping(value = "/loginForm", method = RequestMethod.GET)
	public String loginForm() {
		return "member/login";
	}

	// mLogin : 로그인
	@RequestMapping(value = "/mLogin", method = RequestMethod.POST)
	public ModelAndView mLogin(@ModelAttribute MEMBER member) {
		System.out.println("\n================ 로그인 ================");
		System.out.println("[1] jsp → controller : " + member);

		mav = msvc.mLogin(member);
		System.out.println("[5] service → controller => mav : " + mav + "\n");
		return mav;
	}

	// mLogout : 로그아웃
	@RequestMapping(value = "/mLogout", method = RequestMethod.GET)
	public ModelAndView mLogout(@ModelAttribute MEMBER member) {

		System.out.println("\n================ 로그아웃 ================");
		System.out.println("[1] jsp → controller : " + member);

		mav = msvc.mLogout(member);
		System.out.println("[5] service → controller => mav : " + mav + "\n");

		return mav;
	}

	// mView : 회원정보 상세보기
	@RequestMapping(value = "/mView", method = RequestMethod.GET)
	public ModelAndView mView(@RequestParam("mId") String mId) {
		System.out.println("\n================ 회원 상세보기 ================");
		System.out.println("[1] jsp → controller : " + mId);

		mav = msvc.mView(mId);
		System.out.println("[5] service → controller => mav : " + mav);

		return mav;
	}

	// mModiForm : 회원수정 페이지로 이동
	@RequestMapping(value = "/mModiForm", method = RequestMethod.GET)
	public ModelAndView mModiForm(@RequestParam("mId") String mId) {
		System.out.println("\n================ 수정페이지이동 ================");
		System.out.println("[1] jsp → controller");

		mav = msvc.mModiForm(mId);
		System.out.println("[5] service → controller => mav : " + mav);

		return mav;
	}

	// mModify : 회원수정
	@RequestMapping(value = "/mModify", method = RequestMethod.POST)
	public ModelAndView mModify(@ModelAttribute MEMBER member) {

		System.out.println("\n================ 회원수정 ================");
		System.out.println("[1] jsp → controller : " + member);

		mav = msvc.mModify(member);
		System.out.println("[5] service → controller => mav : " + mav + "\n");

		return mav;
	}

	// mDelete : 회원삭제
	@RequestMapping(value = "/mDelete", method = RequestMethod.GET)
	public ModelAndView mDelete(@RequestParam("mId") String mId) {
		System.out.println("\n================ 회원삭제 ================");
		System.out.println("[1] jsp → controller : " + mId);
		mav = msvc.mDelete(mId);
		System.out.println("[5] service → controller" + "\n");
		return mav;
	}

}
