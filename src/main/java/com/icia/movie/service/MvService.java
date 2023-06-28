package com.icia.movie.service;

import java.io.File;
import java.io.IOException;
import java.util.List;
import java.util.UUID;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.servlet.ModelAndView;

import com.icia.movie.dao.MVDAO;
import com.icia.movie.dto.MOVIE;
import com.icia.movie.dto.PAGING;
import com.icia.movie.dto.SEARCH;

@Service
public class MvService {

	@Autowired
	private MVDAO mvdao;

	@Autowired
	private HttpServletRequest request;

	private ModelAndView mav;

	// mvRegister : 영화등록
	public ModelAndView mvRegister(MOVIE movie) {
		System.out.println("[2] controller → service : " + movie);
		mav = new ModelAndView();

		String path = request.getServletContext().getRealPath("");

		System.out.println(path);

		String savePath = path.replace(".metadata\\.plugins\\org.eclipse.wst.server.core\\tmp0\\wtpwebapps\\", "")
				+ "src/main/webapp/resources/img/";

		MultipartFile mvImg = movie.getMvImg();

		String mvImgName = null;

		if (!mvImg.isEmpty()) {
			String uuid = UUID.randomUUID().toString().substring(0, 8);

			String ImgName = mvImg.getOriginalFilename();

			mvImgName = uuid + "_" + ImgName;
			movie.setMvImgName(mvImgName);

		}

		try {
			// 트라이문에 들어가는건 보이드
			mvdao.mvRegister(movie);
			System.out.println("[4] dao → service");

			// (3) 업로드
			try {
				mvImg.transferTo(new File(savePath + mvImgName));
			} catch (IllegalStateException | IOException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}

			mav.setViewName("redirect:/mvList");

		} catch (Exception e) {
			mav.setViewName("movie/register");

			// 오류가 난 부분을 알려준다.
			e.printStackTrace();
		}

		return mav;
	}

	// mvList : 영화목록
	public ModelAndView mvList(int page) {
		System.out.println("[2] controller → service");

		mav = new ModelAndView();

		int block = 5;
		int limit = 5;
		int mvCount = mvdao.mvCount();
		int maxPage = (int) (Math.ceil((double) mvCount / limit));

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
		List<MOVIE> mvList = mvdao.mvList(paging);

		// Model
		mav.addObject("list", mvList);
		mav.addObject("paging", paging);

		// View
		mav.setViewName("movie/list");

		System.out.println("[4] dao → service => mav : " + mav);

		return mav;
	}

	// mvView : 영화 상세보기
	public ModelAndView mvView(int mvNum) {
		System.out.println("[2] controller → service : " + mvNum);
		mav = new ModelAndView();

		MOVIE movie = mvdao.mvView(mvNum);

		mav.addObject("view", movie);
		mav.setViewName("movie/view");

		System.out.println("[4] dao → service : " + movie);
		return mav;
	}

	// mvModiForm : 영화수정 페이지 이동
	public ModelAndView mvModiForm(int mvNum) {
		System.out.println("[2] controller → service");
		mav = new ModelAndView();

		MOVIE movie = mvdao.mvView(mvNum);

		mav.addObject("modify", movie);
		mav.setViewName("movie/modify");

		System.out.println("[4] dao → service => mav : " + mav);
		return mav;
	}

	// mvModify : 영화수정
	public ModelAndView mvModify(MOVIE movie) throws IllegalStateException, IOException {
		System.out.println("[2] controller → service : " + movie);
		mav = new ModelAndView();

		String deleteFileName = movie.getMvImgName();

		String path = request.getServletContext().getRealPath("");

		System.out.println(path);

		String savePath = path.replace(".metadata\\.plugins\\org.eclipse.wst.server.core\\tmp0\\wtpwebapps\\", "")
				+ "src/main/webapp/resources/img/";

		File deleteFile = new File(savePath + deleteFileName);

		if (deleteFile.exists()) {
			System.out.println("파일존재o");
			deleteFile.delete();
		} else {
			System.out.println("파일존재x");
		}

		MultipartFile mvImg = movie.getMvImg();

		String mvImgName = null;

		if (!mvImg.isEmpty()) {
			String uuid = UUID.randomUUID().toString().substring(0, 8);

			String ImgName = mvImg.getOriginalFilename();

			mvImgName = uuid + "_" + ImgName;
			movie.setMvImgName(mvImgName);

		}

		try {
			// 트라이문에 들어가는건 보이드
			mvdao.mvModify(movie);
			System.out.println("[4] dao → service");

			// (3) 업로드
			try {
				mvImg.transferTo(new File(savePath + mvImgName));
			} catch (IllegalStateException | IOException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}

			mav.setViewName("redirect:/mvList");

		} catch (Exception e) {
			mav.setViewName("redirect:/mvModiForm?mvNum=" + movie.getMvNum());

			// 오류가 난 부분을 알려준다.
			e.printStackTrace();
		}

		return mav;
	}

	// 영화 삭제
	public ModelAndView mvDelete(int mvNum) {
		System.out.println("[2] controller → service => mvNum : " + mvNum);
		mav = new ModelAndView();

		MOVIE movie = mvdao.mvView(mvNum);

		int result = mvdao.mvDelete(mvNum);

		if (result > 0) {
			mav.setViewName("redirect:/mvList");

			if (fileDelete(movie.getMvImgName())) {
				System.out.println("파일 삭제 성공");
			}

		} else {
			mav.setViewName("redirect:/mvView?mvNum=" + movie);
		}

		System.out.println("[4] dao → service => mav : " + mav);
		return mav;
	}

	// 파일 삭제
	private boolean fileDelete(String mvImgName) {
		boolean result = false;

		String path = request.getServletContext().getRealPath("");

		String savePath = path.replace(".metadata\\.plugins\\org.eclipse.wst.server.core\\tmp0\\wtpwebapps\\", "")
				+ "src/main/webapp/resources/img/";
		
		// 기존 파일 설정
		File deleteFile = new File(savePath + mvImgName);

		// 파일 존재여부 확인
		if (deleteFile.exists()) {
			System.out.println("파일이 존재합니다.");

			// 파일 존재시 삭제
			if (deleteFile.delete()) {
				result = true;
			}

		} else {
			System.out.println("파일이 존재하지않습니다.");
		}
		
		return result;
	}

	// 영화검색
	public ModelAndView mvSearch(SEARCH search) {
		System.out.println("[2] controller → service");
		mav = new ModelAndView();
		
		List<MOVIE> sList = mvdao.mvSearch(search);
		
		mav.addObject("list", sList);
		mav.setViewName("movie/list");
		
		System.out.println("[4] dao → service => mav : " + mav);
		return mav;
	}

}
