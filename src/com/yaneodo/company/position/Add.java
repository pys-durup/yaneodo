package com.yaneodo.company.position;

import java.io.IOException;
import java.util.ArrayList;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.yaneodo.company.match.MatchDAO;

@WebServlet("/company/position/add.do")
public class Add extends HttpServlet {

	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {

		
		//1. DB 접속 Select 로 
		MatchDAO dao = new MatchDAO();
		
		ArrayList<String> jlist = dao.listJob(); // 직무목록
		
		
		
		//2. jsp 페이지에 리턴
		req.setAttribute("jlist", jlist);
		
		
		
		
		RequestDispatcher dispatcher = req.getRequestDispatcher("/WEB-INF/views/company/position/add.jsp");
		dispatcher.forward(req, resp);
	}

}