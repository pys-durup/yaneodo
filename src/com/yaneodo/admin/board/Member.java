package com.yaneodo.admin.board;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;


@WebServlet("/admin/member/member.do")
public class Member extends HttpServlet {

	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {

		req.setCharacterEncoding("UTF-8");
		
		HttpSession session = req.getSession();
		
		//1. 데이터 가져오기(seq, page)
		String seq = req.getParameter("seq");
		String page = req.getParameter("page");
		
		
		//2. DB 작업 -> select
		MemberDAO dao = new MemberDAO();
		MemberDTO dto = dao.member(seq);
		
		
		
		RequestDispatcher dispatcher = req.getRequestDispatcher("/WEB-INF/views/admin/member/member.jsp");
		dispatcher.forward(req, resp);

	}

}