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
		
		// 맵에 세션정보도 넣는다
		map.put("session", tempSession);
		
		
		//1.
		String search = req.getParameter("search");
		
		if (!(search == null || search.equals(""))) {
			// 검색중일 때
			// map에 search키값을 가지는 검색어를 넣어놓는다
			map.put("search", search);
			
		}
		
		
		
		//2. 
		MatchDAO dao = new MatchDAO();
		
		ArrayList<ProfileDTO> list = dao.listProfile(map); // 프로필 목록
		ArrayList<String> jlist = dao.listJob(); // 직무목록
		
		
		
		//3.
		req.setAttribute("list", list); // Profile list
		req.setAttribute("jlist", jlist);
		
		
		
		
		RequestDispatcher dispatcher = req.getRequestDispatcher("/WEB-INF/views/company/match/list.jsp");
		dispatcher.forward(req, resp);
	}

}