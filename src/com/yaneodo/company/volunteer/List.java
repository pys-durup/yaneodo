package com.yaneodo.company.volunteer;

import java.io.IOException;
import java.util.ArrayList;
import java.util.HashMap;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;


@WebServlet("/company/volunteer/list.do")
public class List extends HttpServlet {

	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {

		//1. 데이터 받아오기
		//2. DB 접근
		
		// 검색어를 저장해놓을 HashMap을 만든다
		HashMap<String,String> map = new HashMap<String,String>();
		
		String search = req.getParameter("search");
		String isread = req.getParameter("isread");
		
		System.out.println(isread);
		
		if (!(search == null || search.equals(""))) {
			// 검색중일 때
			// map에 search키값을 가지는 검색어를 넣어놓는다
			map.put("search", search);
			
		}
		
		if (!(isread == null || isread.equals(""))) {
			// 매치업 탭 클릭
			map.put("isread", isread);
		}
		
		
		//1.
		VolunteerDAO dao = new VolunteerDAO();
		
		ArrayList<VolunteerDTO> list = dao.list(map);
		
		
		
		
		//2. 
		req.setAttribute("list", list); // Select 해온 목록
		
		req.setAttribute("search", search); // 검색어
		
		

		
		RequestDispatcher dispatcher = req.getRequestDispatcher("/WEB-INF/views/company/volunteer/list.jsp");
		dispatcher.forward(req, resp);
	}

}