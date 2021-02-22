package com.yaneodo.admin.board;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/admin/memberList/memberlist.do")
public class MemberList extends HttpServlet {

	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		
		req.setCharacterEncoding("UTF-8");

		RequestDispatcher dispatcher = req.getRequestDispatcher("/WEB-INF/views/admin/memberList/memberlist.jsp");
		dispatcher.forward(req, resp);

	}

}