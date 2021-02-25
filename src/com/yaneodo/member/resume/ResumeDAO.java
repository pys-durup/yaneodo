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

	/**
	 * Company/volunteer/view 서블릿에서 이력서 경력정보를 리턴받는다
	 * @param resq 이력서 번호
	 * @return
	 */
	public ArrayList<ExperienceDTO> getExperienceList(String rseq) {
		
		try {
			
			String sql = "select * from tblExperience where resumeseq = ?";
			
			pstat = conn.prepareStatement(sql);
			pstat.setString(1, rseq);
			
			rs = pstat.executeQuery();
			
			ArrayList<ExperienceDTO> list = new ArrayList<ExperienceDTO>();
			
			while (rs.next()) {

				ExperienceDTO dto = new ExperienceDTO();
				
				dto.setExperienceseq(rs.getString("experienceseq"));
				dto.setResumeseq(rs.getString("resumeseq"));
				dto.setCompany(rs.getString("company"));
				dto.setField(rs.getString("field"));
				dto.setJob(rs.getString("job"));
				dto.setStartdate(rs.getString("startdate").substring(0,11));
				dto.setEnddate(rs.getString("enddate").substring(0,11));
			
				list.add(dto);
			
			}
			
			return list;
			
		} catch (Exception e) {
			System.out.println(e);
		}
		
		return null;
	}

	/**
	 * Company/volunteer/view 서블릿에서 이력서 학력정보를 리턴받는다
	 * @param resq 이력서 번호
	 * @return
	 */
	public ArrayList<EducationDTO> getEducationList(String rseq) {
try {
			
			String sql = "select * from tblEducation where resumeseq = ?";
			
			pstat = conn.prepareStatement(sql);
			pstat.setString(1, rseq);
			
			rs = pstat.executeQuery();
			
			ArrayList<EducationDTO> list = new ArrayList<EducationDTO>();
			
			while (rs.next()) {

				EducationDTO dto = new EducationDTO();
				
				dto.setEducationseq(rs.getString("educationseq"));
				dto.setResumeseq(rs.getString("resumeseq"));
				dto.setSchooltype(rs.getString("schooltype"));
				dto.setSchoolname(rs.getString("schoolname"));
				dto.setMajor(rs.getString("major"));
				dto.setStartdate(rs.getString("startdate").substring(0,11));
				dto.setEnddate(rs.getString("enddate").substring(0,11));
				dto.setState(rs.getString("state"));
				
			
				list.add(dto);
			
			}
			
			return list;
			
		} catch (Exception e) {
			System.out.println(e);
		}
		
		return null;
	}


	
	
}
