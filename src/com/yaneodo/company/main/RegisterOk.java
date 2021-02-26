package com.yaneodo.company.main;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.oreilly.servlet.MultipartRequest;
import com.oreilly.servlet.multipart.DefaultFileRenamePolicy;


@WebServlet("/company/main/registerok.do")
public class RegisterOk extends HttpServlet {

	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
	
		req.setCharacterEncoding("UTF-8");
		
	//	companyMemberSeq -> 세션
		
		String name = "";
		String country = "";
		String region = "";
		String address = "";
		String regNum = "";
		String sales = "";
		String industry = "";
		String employeeNum = "";
		String introduction ="";
		String establishment = "";
		String email = "";
		String webAddress = "";
		String photo = "";
		int result = 0;
		
		
		try {
			
			MultipartRequest multi = new MultipartRequest(
									req,
									req.getRealPath("/images/company"),
									1024 * 1024 * 10,
									"UTF-8",
									new DefaultFileRenamePolicy()
									);
			
			//System.out.println(req.getRealPath("/images/company"));

			name = multi.getParameter("name");
			country = multi.getParameter("country");
			region = multi.getParameter("region");
			address = multi.getParameter("address");
			regNum = multi.getParameter("regNum");
			sales = multi.getParameter("sales");
			industry = multi.getParameter("industry");
			employeeNum = multi.getParameter("employeeNum");
			introduction = multi.getParameter("introduction");
			establishment = multi.getParameter("establishment");
			email = multi.getParameter("email");
			webAddress = multi.getParameter("webAddress");
			//기본이미지?
			photo = multi.getFilesystemName("photo") != null ? 
						multi.getFilesystemName("photo") : "nopic.png";
			
						
			CompanyDAO dao = new CompanyDAO();
			CompanyDTO dto = new CompanyDTO();
						
			dto.setName(name);
			
			
			
			
			
		} catch (Exception e) {
			System.out.println(e);
		}
		
		
		
		
		
		
		
		
		
	}

	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		
		


	}
}

