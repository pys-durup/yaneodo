package com.yaneodo.company.main;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

@WebServlet("/company/main/loginok.do")
public class LoginOk extends HttpServlet {

	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {

		String email = req.getParameter("email");
		String password = req.getParameter("password");
		
		System.out.println(email);
		System.out.println(password);

		CmemberDAO dao = new CmemberDAO();
		CmemberDTO dto = new CmemberDTO();
		
		dto.setEmail(email);
		dto.setPassword(password);
		
		int result = dao.login(dto);
		
		//결과 처리
		if (result == 1) {
			
			//기업 승인 여부 가져오기 (1:승인 or 0:미승인 or null:미등록)
			CmemberDTO rdto = dao.getMember(email);
			
			HttpSession session = req.getSession();
			session.setAttribute("email", dto.getEmail());
			
			session.setAttribute("seq", rdto.getCompanyMemberSeq());
			session.setAttribute("state", rdto.getState());
			
			System.out.println(rdto.getState());
			
			
			//승인 여부에 따라 페이지 분기
			if (rdto.getState().equals("1")) {
				
				//승인 O: 기업 관리 메인 페이지
				resp.sendRedirect("/yaneodo/company/account/main.do");
				return;
				
				//승인 X : 기업 메인
			} else {
				resp.sendRedirect("/yaneodo/company/main/index.do");
				
			}

			
		} else {

			resp.setCharacterEncoding("UTF-8");
			PrintWriter writer = resp.getWriter();
			
			writer.print("<html><head><meta charset='utf-8'></head><body>");
			writer.print("<script>");
			writer.print("alert('아이디/비밀번호를 다시 확인해주세요.');");
			writer.print("location.href='/yaneodo/company/main/index.do';"); 
			writer.print("</script>");
			writer.print("</body></html>");
			
			writer.close();


		}

	}
}
