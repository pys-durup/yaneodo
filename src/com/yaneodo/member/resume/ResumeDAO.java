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

	
	
	/***
	 * 회원번호 해당하는 이력서 목록조회
	 * @author 혜승
	 * @param seq
	 * @return
	 */
	public ArrayList<ResumeDTO> list(String seq) {
	
		try {
			
			String sql = String.format("select* from tblresume where customerseq = (select customerseq from tblcustomer where customerseq =?)");

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

	/***
	 * 이력서 작성하기선택시, 이력서생성
	 * @author 혜승
	 * @param dto 
	 * @param seq
	 */
	
	public int resumeWrite(MemberDTO dto, String seq) {
		try {
			
			String sql ="insert into tblresume (resumeseq, customerseq,orgfilename,filename,introduce,name,phone,email,writedate,editdate) values (resumeseq.nextval,?,?,?,'',?,?,?,default,default)";
			
			pstat = conn.prepareStatement(sql);
			pstat.setString(1, seq);
			pstat.setString(2, dto.getName());
			pstat.setString(3, dto.getName());
			pstat.setString(4, dto.getName());
			pstat.setString(5, dto.getPhone());
			pstat.setString(6, dto.getEmail());
			
			int result = pstat.executeUpdate();
			
			return result;
			
			
		} catch (Exception e) {
			System.out.println(e);
		}
		return 0;
		
	}

	/***
	 * 최신에 생성된 이력서 번호가져오기
	 * @author 혜승
	 * @param seq
	 * @return
	 */
	public String newResume(String seq) {
		try {
			String sql ="select max(resumeseq) as rseq from tblresume where customerseq = (select customerseq from tblcustomer where customerseq = "+seq+")";
			
			stat = conn.createStatement();
			rs = stat.executeQuery(sql);
			
			if(rs.next()) {
				return rs.getString("rseq");
			}
			
		} catch (Exception e) {
			System.out.println(e);
		}
		return null;
	}



	
}
