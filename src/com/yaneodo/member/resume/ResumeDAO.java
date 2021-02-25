package com.yaneodo.member.resume;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.Statement;
import java.util.ArrayList;

import com.yaneodo.DBUtil;
import com.yaneodo.jobnotice.JobNoticeDTO;
import com.yaneodo.member.MemberDTO;

public class ResumeDAO {
	
	
	private Connection conn;
	private Statement stat;
	private PreparedStatement pstat;
	private ResultSet rs;
	
	public ResumeDAO() {
		//DB 연결
		conn = DBUtil.open();
	}
	
	
	public void close() {
		try {
			conn.close();
		} catch (Exception e) {
			System.out.println(e);
		}
	}

	
	
	// 회원번호에 해당하는 이력서목록 반환
	public ArrayList<ResumeDTO> list(String seq) {
	
		try {
			
			String sql = String.format("select * from tblResume where customerSeq = ?");

			pstat = conn.prepareStatement(sql);
			pstat.setString(1, seq);
			rs = pstat.executeQuery();

			//ResultSet -> ArrayList<DTO>
			ArrayList<ResumeDTO> list = new ArrayList<ResumeDTO>();

			while (rs.next()) {
				
				ResumeDTO dto = new ResumeDTO();
				
				dto.setResumeSeq(rs.getString("resumeSeq"));
				dto.setCustomerSeq(rs.getString("customerSeq"));
				dto.setWriteDate(rs.getString("writeDate"));
				dto.setEditDate(rs.getString("editDate"));
				dto.setOrgfileName(rs.getString("orgfileName"));
				dto.setFileName(rs.getString("fileName"));
				dto.setIntroduce(rs.getString("introduce"));
				
				
				list.add(dto);
			
			} 
			
			return list;
			
		
		} catch (Exception e) {
			System.out.println(e);
		}

		return null;
	}


	
	
}
