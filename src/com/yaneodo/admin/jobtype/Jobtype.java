package com.yaneodo.admin.jobtype;

import java.io.IOException;
import java.util.ArrayList;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;


/**
 * 직무 종류를 요청하는 서블릿
 * @author 윤지봉
 *
 */
@WebServlet("/admin/jobtype/jobtype.do")
public class Jobtype extends HttpServlet {

	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		
		
		
		//1. 데이터 확인 -> seq -> 관리자 로그인 확인
		
		//2. DB작업 -> select
		//3. 결과 처리
		
		
		//1. 로그인 확인
		
		
		//2.
		JobtypeDAO dao = new JobtypeDAO();
		
		ArrayList<JobtypeDTO> list = dao.getlist();

		
		req.setAttribute("list", list);

			
		

		RequestDispatcher dispatcher = req.getRequestDispatcher("/WEB-INF/views/admin/jobtype/jobtype.jsp");
		dispatcher.forward(req, resp);
	}
}
