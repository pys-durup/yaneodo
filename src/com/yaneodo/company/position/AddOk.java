package com.yaneodo.company.position;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.oreilly.servlet.MultipartRequest;
import com.oreilly.servlet.multipart.DefaultFileRenamePolicy;

@WebServlet("/company/position/addok.do")
public class AddOk extends HttpServlet {

	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {

		
		// 1.
		req.setCharacterEncoding("UTF-8");
		
		String tempsession = "1"; //기업회원 번호
		
		String title = "";
		String image = "";
		String job = "";
		String[] tag;
		String place = "";
		String description = "";
		
	
		// 첨부파일 올리기
		try {

			// 객체를 생성하는 순간 파일 업로드가 완료
			MultipartRequest multi = new MultipartRequest(req, req.getRealPath("/files"), 1024 * 1024 * 100, "UTF-8",
					new DefaultFileRenamePolicy());
			
			System.out.println(req.getRealPath("/files"));

			
			title = multi.getParameter("title");
			job = multi.getParameter("job");
			tag = multi.getParameterValues("tag");
			place = multi.getParameter("place");
			description = multi.getParameter("description");
			
			image = multi.getFilesystemName("image");

			System.out.println("image 파일명 : " + image);
			System.out.println(title);
			System.out.println(job);
			System.out.println(tag[0] + " " + tag[1]);
			System.out.println(place);
			System.out.println(description);

		} catch (Exception e) {
			System.out.println(e);
		}
		
		
		
		
		RequestDispatcher dispatcher = req.getRequestDispatcher("/WEB-INF/views/company/position/addok.jsp");
		dispatcher.forward(req, resp);
	}

}