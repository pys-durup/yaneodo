package com.yaneodo.admin.gain;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/admin/gain/gain.do")
public class Gain extends HttpServlet {

	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {

		
		//1.데이터 가져오기
		//2. DB작업하기 -> select
		//3. 결과처리
		
		
		//1.
		String date = req.getParameter("date");
		
		//2. 
		GainDAO dao = new GainDAO();
		GainDTO dto = dao.getgain(date); 
		
		req.setAttribute("dto", dto);
		
		
		RequestDispatcher dispatcher = req.getRequestDispatcher("/WEB-INF/views/admin/gain/gain.jsp");
		dispatcher.forward(req, resp);
	}
}
