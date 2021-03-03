package com.yaneodo.admin.tag;

import java.io.IOException;
import java.util.ArrayList;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * 태그 이름을 요청하는 서블릿
 * 
 * @author 윤지봉
 *
 */
@WebServlet("/admin/tag/tag.do")
public class Tag extends HttpServlet {

	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {

		
		//1. 데이터 확인 -> seq -> 관리자 로그인 확인
		
		//2. DB작업 -> select
		//3. 결과 처리
		
		
		//1. 로그인 확인
		
		
		//2.
		TagDAO dao = new TagDAO();
		
		ArrayList<TagDTO> list = dao.gettaglist();

		
		req.setAttribute("list", list);
		
		
		
		ArrayList<TagDTO> clist = dao.getlist();

		
		req.setAttribute("clist", clist);
		
		RequestDispatcher dispatcher = req.getRequestDispatcher("/WEB-INF/views/admin/tag/tag.jsp");
		dispatcher.forward(req, resp);
	}
}

