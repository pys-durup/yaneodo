package com.yaneodo.company.volunteer;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/company/volunteer/view.do")
public class View extends HttpServlet {

	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		
		// 1. 데이터 가져오기 (pseq + 여러 상태유지 정보)
		// 2. DB 작업
		// 3. jsp 페이지에 돌려주기
		
		
		String tempSession = "1"; // 기업회원번호 임의 세션
		
		//1.
		String search = req.getParameter("search");
		String isread = req.getParameter("isread");
		String job = req.getParameter("job"); 
		String aseq = req.getParameter("aseq"); // 지원공고 seq 정보
		String page = req.getParameter("page"); // 페이지 정보
		
 		
		//2. 
		VolunteerDAO dao = new VolunteerDAO();
		VolunteerViewDTO vdto = dao.getView(aseq, tempSession);
		
		
		//3.
		req.setAttribute("vdto", vdto); // 사용자 정보
		


		RequestDispatcher dispatcher = req.getRequestDispatcher("/WEB-INF/views/company/volunteer/view.jsp");
		dispatcher.forward(req, resp);
	}

}