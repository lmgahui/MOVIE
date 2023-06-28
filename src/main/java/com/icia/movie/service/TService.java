package com.icia.movie.service;

import java.util.List;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.web.servlet.ModelAndView;

import com.icia.movie.dao.TDAO;
import com.icia.movie.dto.PAGING;
import com.icia.movie.dto.SEARCH;
import com.icia.movie.dto.THEATER;

@Service
public class TService {

	@Autowired
	private TDAO tdao;

	@Autowired
	private HttpServletRequest request;

	private ModelAndView mav;

	// tRegister : 상영관등록
	public ModelAndView tRegister(THEATER theater) {
		System.out.println("[2] controller → service : " + theater);
		mav = new ModelAndView();
		
		String tAddr = "(" + theater.getAddr1() + ")" + theater.getAddr2() + ", " + theater.getAddr3();
		theater.setTAddr(tAddr);
		
		try {
			// 트라이문에 들어가는건 보이드
			tdao.tRegister(theater);
			System.out.println("[4] dao → service");

			mav.setViewName("redirect:/tList");

		} catch (Exception e) {
			mav.setViewName("theater/register");

			// 오류가 난 부분을 알려준다.
			e.printStackTrace();
		}
		
		System.out.println("[4] dao → service => mav : " + mav);
		return mav;
	}

	// tList : 상영관목록
	public ModelAndView tList(int page) {
		System.out.println("[2] controller → service");

		mav = new ModelAndView();

		int block = 5;
		int limit = 5;
		int tCount = tdao.tCount();
		int maxPage = (int) (Math.ceil((double) tCount / limit));

		if (page > maxPage) {
			page = maxPage;
		}

		int startRow = (page - 1) * limit + 1;
		int endRow = page * limit;
		int startPage = (((int) (Math.ceil((double) page / block))) - 1) * block + 1;
		int endPage = startPage + block - 1;

		if (endPage > maxPage) {
			endPage = maxPage;
		}

		// 페이징 객체 생성
		PAGING paging = new PAGING();

		paging.setPage(page);
		paging.setStartRow(startRow);
		paging.setEndRow(endRow);
		paging.setMaxPage(maxPage);
		paging.setStartPage(startPage);
		paging.setEndPage(endPage);
		paging.setLimit(limit);

		// 페이징 목록 불러오기
		List<THEATER> tList = tdao.tList(paging);

		// Model
		mav.addObject("list", tList);
		mav.addObject("paging", paging);

		// View
		mav.setViewName("theater/list");

		System.out.println("[4] dao → service => mav : " + mav);

		return mav;
	}

	// tView : 상영관 상세보기
	public ModelAndView tView(int tNum) {
		System.out.println("[2] controller → service : " + tNum);
		mav = new ModelAndView();

		THEATER theater = tdao.tView(tNum);

		mav.addObject("view", theater);
		mav.setViewName("theater/view");

		System.out.println("[4] dao → service : " + theater);
		return mav;
	}

	// tModiForm : 상영관수정 페이지 이동
	public ModelAndView tModiForm(int tNum) {
		System.out.println("[2] controller → service");
		mav = new ModelAndView();

		THEATER theater = tdao.tView(tNum);

		mav.addObject("modify", theater);
		mav.setViewName("theater/modify");

		System.out.println("[4] dao → service => mav : " + mav);
		return mav;
	}

	// tModify : 상영관 수정
	public ModelAndView tModify(THEATER theater) {
		System.out.println("[2] controller → service");
		mav = new ModelAndView();

		String tAddr = "(" + theater.getAddr1() + ")" + theater.getAddr2() + ", " + theater.getAddr3();
		theater.setTAddr(tAddr);

		
		try {
			// 트라이문에 들어가는건 보이드
			tdao.mModify(theater);
			System.out.println("[4] dao → service");

			mav.setViewName("redirect:/tList");

		} catch (Exception e) {
			mav.setViewName("theater/modify");

			// 오류가 난 부분을 알려준다.
			e.printStackTrace();
		}
		
		System.out.println("[4] dao → service => mav : " + mav);
		return mav;
	}

	// mDelete : 상영관 삭제
	public ModelAndView mDelete(int tNum) {
		System.out.println("[2] controller → service");
		mav = new ModelAndView();
		
		THEATER theater = tdao.tView(tNum);
		
		int result = tdao.tDelete(tNum);
		
		if(result > 0) {
			mav.setViewName("redirect:/tList");
		} else {
			mav.setViewName("redirect:/tView?tNum="+theater.getTNum());
		}
		
		System.out.println("[4] dao → service => mav : " + mav);
		return mav;
	}

	// tSearch : 상영관 검색
	public ModelAndView tSearch(SEARCH search) {
		System.out.println("[2] controller → service");
		mav = new ModelAndView();
		
		List<THEATER> sList = tdao.tSearch(search);
		
		mav.addObject("list", sList);
		mav.setViewName("theater/list");
		
		System.out.println("[4] dao → service => mav : " + mav);
		return mav;
	}
	
	
	

	
	
}
