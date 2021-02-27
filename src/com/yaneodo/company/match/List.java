package com.yaneodo.company.match;

import java.io.IOException;
import java.util.ArrayList;
import java.util.HashMap;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.yaneodo.member.profile.ProfileDTO;

@WebServlet("/company/match/list.do")
public class List extends HttpServlet {

	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {

		
		// 1. 데이터 받아오기
		// 2. DB 작업
		// 3. JSP 페이지에 전달
		
		String tempSession = "1"; // 기업회원번호 임의 세션
		
		// 검색어를 저장해놓을 HashMap을 만든다
		HashMap<String,String> map = new HashMap<String,String>();
		map.put("session", tempSession);
		
		
		//1.
		String search = req.getParameter("search"); // 검색어
		String jobtype = req.getParameter("jobtype"); // 직무 select
		String isdibs = req.getParameter("isdibs"); // 찜목록
		String isread = req.getParameter("isread"); // 1 : 열람 or 0 : 미열람
		String ismatch = req.getParameter("ismatch"); // 면접제안
		
		System.out.println(search + jobtype);
		
		if (!(search == null || search.equals(""))) {
			// 검색중일 때
			// map에 search키값을 가지는 검색어를 넣어놓는다
			map.put("search", search);
		}
		
		if (!(jobtype == null || jobtype.equals(""))) {
			map.put("jobtype", jobtype);
		}
		
		if (!(isdibs == null || isdibs.equals(""))) {
			map.put("isdibs", isdibs);
		}
		
		
		if (!(isread == null || isread.equals(""))) {
			map.put("isread", isread);
		}
		
		if (!(ismatch == null || ismatch.equals(""))) {
			map.put("ismatch", ismatch);
		}
		
		
		// 페이징 처리
		int nowPage = 0;		//현재 페이지 번호
		int totalCount = 0;		//총 게시물 수
		int pageSize = 5;		//한페이지당 출력 개수
		int totalPage = 0;		//총 페이지 수
		int begin = 0;			//rnum 시작 번호
		int end = 0;			//rnum 끝 번호
		int n = 0;				//페이지바 관련 변수
		int loop = 0;			//페이지바 관련 변수
		int blockSize = 10;		//페이지바 관련 변수
		
		String page = req.getParameter("page");
		
		
		if (page == null ||  page == "") {
			// 기본 1page
			nowPage = 1;
		} else {
			nowPage = Integer.parseInt(page);
		}
		
		begin = ((nowPage - 1) * pageSize) + 1;
		end = begin + pageSize - 1;
		
		// Hashmap에 넣어준다
		map.put("begin", begin + "");
		map.put("end", end + "");
		
		
		//2. 
		MatchDAO dao = new MatchDAO();
		
		totalCount = dao.getTotalCount(map); // 총 게시물 수
		System.out.println("게시물 수 : " + totalCount);
		
		totalPage = (int)Math.ceil((double)totalCount / pageSize); // 총 페이지 수
		System.out.println(totalPage);
		
		String pagebar = "";
		
		
		
		
		
		
		
		ArrayList<String> jlist = dao.listJob(); // 직무목록
		ArrayList<ProfileDTO> list = dao.listProfile(map); // 프로필 목록
		
		
		
		
		//3.
		req.setAttribute("list", list); // Profile list
		req.setAttribute("jlist", jlist);
		req.setAttribute("search", search);
		req.setAttribute("jobtype", jobtype);
		req.setAttribute("isread", isread);
		req.setAttribute("isdibs", isdibs);
		req.setAttribute("ismatch", ismatch);
		
		
		
		
		RequestDispatcher dispatcher = req.getRequestDispatcher("/WEB-INF/views/company/match/list.jsp");
		dispatcher.forward(req, resp);
	}

}