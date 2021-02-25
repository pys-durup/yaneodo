package com.yaneodo.company.volunteer;

import java.io.IOException;
import java.util.ArrayList;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.yaneodo.member.resume.EducationDTO;
import com.yaneodo.member.resume.ExperienceDTO;
import com.yaneodo.member.resume.ResumeDAO;

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
		VolunteerDAO vdao = new VolunteerDAO();
		ResumeDAO rdao = new ResumeDAO();
		
		VolunteerViewDTO vdto = vdao.getView(aseq, tempSession);
		
		String rseq = vdto.getRseq(); // 사용자의 이력서 번호
		System.out.println("rseq : " + rseq);
		
		
		//2.1 이력서 정보를 가진 태그 동적 생성하기.
		String resumeData = ""; // 동적 태그 저장
		
		// 경력
		ArrayList<ExperienceDTO> elist = rdao.getExperienceList(rseq);
		
		if (elist.size() > 0) {
			for (ExperienceDTO dto : elist) {
				resumeData += String.format("<div class=\"row\">\r\n"
					+ "                                    <div class=\"col-md-2 subtitle\">\r\n"
					+ "                                        경력\r\n"
					+ "                                    </div>\r\n"
					+ "                                    <div class=\"col-md-10\">\r\n"
					+ "                                        <div class=\"subtitle\">\r\n"
					+ "                                            <div><span>%s</span></div>\r\n"
					+ "                                            <div style=\"text-align: right;\"><span>%s ~ %s</span></div>\r\n"
					+ "                                        </div>\r\n"
					+ "                                        <div class=\"text\">%s</div>\r\n"
					+ "                                        <div class=\"text\"><span>%s</span>\r\n"
					+ "                                        </div>\r\n"
					+ "                                    </div>\r\n"
					+ "                                </div>",
															dto.getCompany(),
															dto.getStartdate(),
															dto.getEnddate(),
															dto.getField(),
															dto.getJob());
			}
		}
		
		// 학력
		ArrayList<EducationDTO> edlist = rdao.getEducationList(rseq);
		
		if (elist.size() > 0) {
			for (EducationDTO dto : edlist) {
				resumeData += String.format("<div class=\"row\">\r\n"
						+ "                                    <div class=\"col-md-2 subtitle\">\r\n"
						+ "                                        학력\r\n"
						+ "                                    </div>\r\n"
						+ "                                    <div class=\"col-md-10\">\r\n"
						+ "                                        <div class=\"subtitle\">\r\n"
						+ "                                            <div><span>%s | %s</span></div>\r\n"
						+ "                                            <div style=\"text-align: right;\"><span>%s</span></div>\r\n"
						+ "                                        </div>\r\n"
						+ "                                        <div class=\"text\">%s</div>\r\n"
						+ "                                        <div class=\"text\">입학일 : %s</div>\r\n"
						+ "                                        <div class=\"text\">졸업일 : %s</div>\r\n"
						+ "                                    </div>\r\n"
						+ "                                </div>",dto.getSchoolname(), 
																	dto.getMajor(), 
																	dto.getState(), 
																	dto.getSchooltype(), 
																	dto.getStartdate(), 
																	dto.getEnddate() );
			}
		}
		
		
		
		
		/*
		if (elist.size() > 0) {
			for (EducationDTO dto : edlist) {
				resumeData += String.format("", );
			}
		}
		*/
		
		
		//3.
		req.setAttribute("vdto", vdto); // 사용자 정보를 반환
		
		req.setAttribute("resumeData", resumeData);
		
		
		


		RequestDispatcher dispatcher = req.getRequestDispatcher("/WEB-INF/views/company/volunteer/view.jsp");
		dispatcher.forward(req, resp);
	}

}