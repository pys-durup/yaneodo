package com.yaneodo.member.resume;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/member/resume/languageedit.do")
public class LanguageEdit extends HttpServlet {

	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {


			String rseq = req.getParameter("rseq");
			LanguageDTO dto = new LanguageDTO();
			ResumeDAO dao = new ResumeDAO();
			
			
			
			dto.setLanguageseq("laseq");
			dto.setLanguagetype("language");
			dto.setGrade("level");
			
			int result2 = dao.editDate(rseq);
			int result = dao.languageEdit(dto);
			//결과처리
			if(result==1 && result2==1) {
				resp.sendRedirect("/yaneodo/member/resume/resume_write.do?rseq="+rseq);
			} else {
				
				resp.setCharacterEncoding("UTF-8");
				PrintWriter writer=resp.getWriter();
				writer.print("<html><head><meta charset='utf-8'></head><body>");
				writer.print("<script>");
				writer.print("alert('수정에 실패하였습니다.');");
				writer.print("history.back();");
				writer.print("</script>");
				writer.print("</body></html>");
				
				writer.close();

				
		}

	}
}
