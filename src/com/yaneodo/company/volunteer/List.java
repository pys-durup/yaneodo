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
import javax.servlet.http.HttpSession;


@WebServlet("/company/volunteer/list.do")
public class List extends HttpServlet {

	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {

		//1. 데이터 받아오기
		//2. DB 접근해서 받아오기
		//2.1 지원자 사이드메뉴 동적으로 생성하기
		//3. JSP페이지에 넘겨주기
		
		// 테스트용 임의 세션 생성 *************************************
//		HttpSession session = req.getSession();
//		session.setAttribute("cmseq", "1");
		
		String tempSession = "1";
		
		
		
		// 검색어를 저장해놓을 HashMap을 만든다
		HashMap<String,String> map = new HashMap<String,String>();
		
		// 맵에 세션정보도 넣는다
		map.put("session", tempSession);
		
		//1.
		String search = req.getParameter("search");
		String isread = req.getParameter("isread");
		String job = req.getParameter("job");
		
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
		
		if (!(job == null || job.equals(""))) {
			// 동적으로 생성한 탭 클릭했을때
			map.put("job", job);
		}
		
		
		//2. 
		VolunteerDAO dao = new VolunteerDAO();
		
		ArrayList<VolunteerDTO> list = dao.list(map);
		
		
		
		//2.1 지원자 사이드메뉴 동적으로 생성하기
		String sidemenu = "";
		
		// DB 에서 메뉴 데이터 받아오기.
		ArrayList<String> mlist = dao.mlist(tempSession);
		
		// 태그 만들기
		for (String menuname : mlist) {
			sidemenu += "<li class='side-list-item'"
					+ "onclick=\"location.href='/yaneodo/company/volunteer/list.do?job="+ menuname +"';\"> "+ menuname +"</li>";
		}
		
		
//		<li class='side-list-item side-list-item-selected'
//				onclick="location.href='/yaneodo/company/volunteer/list.do';">전체보기</li>
		
		
		
		
		//3. 
		req.setAttribute("list", list); // Select 해온 목록
		
		req.setAttribute("search", search); // 검색어
		
		req.setAttribute("job", job); // 사이드메뉴의 동적생성 탭인지
		
		req.setAttribute("isread", isread); // 사이드메뉴의 매치업 탭인지
		
		req.setAttribute("sidemenu", sidemenu); // 사이드메뉴 동적코드
		
		

		
		RequestDispatcher dispatcher = req.getRequestDispatcher("/WEB-INF/views/company/volunteer/list.jsp");
		dispatcher.forward(req, resp);
	}

}