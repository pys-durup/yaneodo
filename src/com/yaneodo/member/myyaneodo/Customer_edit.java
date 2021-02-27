package com.yaneodo.member.myyaneodo;


import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.yaneodo.member.MemberDAO;
import com.yaneodo.member.MemberDTO;


@WebServlet("/member/myyaneodo/customer_edit.do")
public class Customer_edit extends HttpServlet {

	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {

		HttpSession session = req.getSession();
		
		MemberDAO dao = new MemberDAO();
		MemberDTO dto = dao.getInfo((String)session.getAttribute("seq"));

		
		req.setAttribute("dto", dto);
		
		
		RequestDispatcher dispatcher = req.getRequestDispatcher("/WEB-INF/views//member/myyaneodo/customer_edit.jsp");
		dispatcher.forward(req, resp);


		
	}

}
