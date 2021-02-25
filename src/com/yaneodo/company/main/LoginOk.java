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
			
			HttpSession session = req.getSession();
			session.setAttribute("email", dto.getEmail()); 	

			CmemberDTO rdto = dao.getMember(email);
			session.setAttribute("seq", rdto.getCompanyMemberSeq());
			session.setAttribute("managerName", rdto.getManagerName());
			session.setAttribute("state", rdto.getState());

			resp.sendRedirect("/yaneodo/company/main/index.do");
			//return;
			
		} else {
			//해당 이메일 정보 없음 -> 회원가입
			
			resp.setCharacterEncoding("UTF-8");
			PrintWriter writer = resp.getWriter();
			
			writer.print("<html><head><meta charset='utf-8'></head><body>");
			writer.print("<script>");
			writer.print("alert('입력한 이메일이 존재하지 않습니다.');");
			writer.print("location.href='/yaneodo/company/main/index.do';"); 
			writer.print("</script>");
			writer.print("</body></html>");
			
			writer.close();
			
			//resp.sendRedirect("/yaneodo/member/register.do");

		}

	}
}
