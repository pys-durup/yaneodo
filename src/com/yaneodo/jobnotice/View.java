package com.yaneodo.jobnotice;

import java.io.IOException;
import java.util.ArrayList;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;



@WebServlet("/jobnotice/view.do")
public class View extends HttpServlet {

	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {

		
		//1. 데이터 가져오기(seq) : 공고번호
		//2. DB 작업 -> select
		//3. 결과 반환 -> JSP 호출하기 + 전달
		
		HttpSession session = req.getSession();
		
		//1.
		String seq = req.getParameter("seq");
		String search = req.getParameter("search"); //검색어

		
		//2.
		JobNoticeDAO dao = new JobNoticeDAO();
		
		JobNoticeDTO dto = dao.get(seq);
		
		
		dao.close();//*****
		
		
		//2.1 데이터 조작
		//개행 문자 출력하기
		dto.setDescription(dto.getDescription().replace("\r\n", "<br>"));

		
		
		
		//3.
		req.setAttribute("dto", dto);

		
		RequestDispatcher dispatcher = req.getRequestDispatcher("/WEB-INF/views/jobnotice/view.jsp");
		dispatcher.forward(req, resp);
	}

}