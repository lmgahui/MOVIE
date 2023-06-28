package com.icia.movie.service;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;
import org.springframework.stereotype.Service;
import org.springframework.web.servlet.ModelAndView;

import com.icia.movie.dao.MDAO;
import com.icia.movie.dto.MEMBER;

@Service
public class MService {

	@Autowired
	private MDAO mdao;

	@Autowired
	private BCryptPasswordEncoder pwEnc;

	@Autowired
	private HttpSession session;

	private ModelAndView mav;

	// 아이디 중복 체크
	public String idCheck(String mId) {
		String result = null;

		String checkId = mdao.idCheck(mId);

		if (checkId == null) {
			// 아이디 사용가능
			result = "OK";
		} else {
			// 아이디 사용불가능
			result = "NO";
		}

		return result;
	}

	// 회원가입
	public ModelAndView mJoin(MEMBER member) {
		System.out.println("[2] controller → service : " + member);
		mav = new ModelAndView();

		String mAddr = "(" + member.getAddr1() + ")" + member.getAddr2() + ", " + member.getAddr3();
		member.setMAddr(mAddr);

		member.setMPw(pwEnc.encode(member.getMPw()));

		try {
			// 트라이문에 들어가는건 보이드
			mdao.mJoin(member);
			System.out.println("[4] dao → service");

			mav.setViewName("index");

		} catch (Exception e) {
			mav.setViewName("member/join");

			// 오류가 난 부분을 알려준다.
			e.printStackTrace();
		}

		System.out.println("[4] dao → service => mav : " + mav);
		return mav;
	}

	// mLogin : 로그인
	public ModelAndView mLogin(MEMBER member) {
		System.out.println("[2] controller → service : " + member);
		mav = new ModelAndView();

		String encPw = mdao.mLogin(member.getMId());

		String mPw = member.getMPw();

		if (pwEnc.matches(mPw, encPw)) {
			session.setAttribute("loginId", member.getMId());
			mav.setViewName("index");
		} else {
			mav.setViewName("member/login");
		}

		System.out.println("[4] dao → service => mav : " + mav);
		return mav;
	}

	// mLogout : 로그아웃
	public ModelAndView mLogout(MEMBER member) {
		System.out.println("[2] controller → service");
		mav = new ModelAndView();

		mav.setViewName("redirect:/indexForm");
		session.invalidate();

		System.out.println("[4] dao → service => mav : " + mav);
		return mav;
	}

	// mView : 회원정보 상세보기
	public ModelAndView mView(String mId) {
		System.out.println("[2] controller → service : " + mId);
		mav = new ModelAndView();

		MEMBER member = mdao.mView(mId);

		mav.addObject("view", member);
		mav.setViewName("member/view");

		System.out.println("[4] dao → service : " + member);
		return mav;
	}

	// mModiForm : 회원수정 페이지로 이동
	public ModelAndView mModiForm(String mId) {
		System.out.println("[2] controller → service");
		mav = new ModelAndView();

		MEMBER member = mdao.mView(mId);

		mav.addObject("modify", member);
		mav.setViewName("member/modify");

		System.out.println("[4] dao → service => mav : " + mav);
		return mav;
	}

	// mModify : 회원수정
	public ModelAndView mModify(MEMBER member) {
		System.out.println("[2] controller → service");
		mav = new ModelAndView();

		String mAddr = "(" + member.getAddr1() + ")" + member.getAddr2() + ", " + member.getAddr3();
		member.setMAddr(mAddr);

		member.setMPw(pwEnc.encode(member.getMPw()));

		try {
			// 트라이문에 들어가는건 보이드
			mdao.mModify(member);
			System.out.println("[4] dao → service");

			mav.setViewName("index");

		} catch (Exception e) {
			mav.setViewName("member/mModify");

			// 오류가 난 부분을 알려준다.
			e.printStackTrace();
		}

		System.out.println("[4] dao → service => mav : " + mav);
		return mav;
	}

	// mDelete : 회원삭제
	public ModelAndView mDelete(String mId) {
		System.out.println("[2] controller → service");
		mav = new ModelAndView();

		MEMBER member = mdao.mView(mId);

		int result = mdao.mDelete(mId);

		if (result > 0) {
			mav.setViewName("index");
		} else {
			mav.setViewName("redirect:/mView?mId=" + member);
		}

		System.out.println("[4] dao → service => mav : " + mav);
		return mav;
	}

}
