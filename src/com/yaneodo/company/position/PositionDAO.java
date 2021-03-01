package com.yaneodo.company.position;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.Statement;
import java.util.ArrayList;

import com.yaneodo.DBUtil;

public class PositionDAO {


	private Connection conn;
	private Statement stat;
	private PreparedStatement pstat;
	private ResultSet rs;
	
	public PositionDAO() {
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

	
	/**
	 * 모집 공고 목록을 리턴하는 메서드
	 * @param tempsession 기업회원번호
	 * @return
	 */
	public ArrayList<JobOpeningDTO> getPositionList(String session) {
		
		try {
			
			String sql = "select * from tbljobOpening where companyseq = (select companyseq from tblcompany where companymemberseq = ?)";
			
			pstat = conn.prepareStatement(sql);
			pstat.setString(1, session);
			
			rs = pstat.executeQuery();
			
			ArrayList<JobOpeningDTO> list = new ArrayList<JobOpeningDTO>();
			
			while (rs.next()) {
				JobOpeningDTO dto = new JobOpeningDTO();
				
				dto.setJobopeningseq(rs.getString("jobopeningseq"));
				dto.setCompanyseq(rs.getString("companyseq"));
				dto.setTitle(rs.getString("title"));
				dto.setStartdate(rs.getString("startdate").substring(0, 10));
				dto.setEnddate(rs.getString("enddate").substring(0, 10));
				dto.setJob(rs.getString("job"));
				dto.setPlace(rs.getString("place"));
				dto.setDescription(rs.getString("description"));
				dto.setPhoto(rs.getString("photo"));
						
				list.add(dto);
				
			}
			
			return list;
			
		} catch (Exception e) {
			System.out.println(e);
		}
		
		return null;
	}

	
	/**
	 * 모집 공고 하나의 데이터를 리턴하는 메서드
	 * @param jseq 모집공고 번호
	 * @return
	 */
	public JobOpeningDTO getPositionView(String jseq) {
		
		try {
			
			String sql = "select j.*, c.name as name, c.region as region from tbljobopening j inner join tblCompany c on j.companyseq = c.companyseq  where jobOpeningSeq = ?"
					+ "";
			
			pstat = conn.prepareStatement(sql);
			pstat.setString(1, jseq);
			
			rs = pstat.executeQuery();
			
			if (rs.next()) {
				JobOpeningDTO dto = new JobOpeningDTO();
				
				dto.setJobopeningseq(rs.getString("jobopeningseq"));
				dto.setCompanyseq(rs.getString("companyseq"));
				dto.setTitle(rs.getString("title"));
				dto.setStartdate(rs.getString("startdate").substring(0,10));
				dto.setEnddate(rs.getString("enddate").substring(0,10));
				dto.setJob(rs.getString("job"));
				dto.setPlace(rs.getString("place"));
				dto.setDescription(rs.getString("description"));
				dto.setPhoto(rs.getString("photo"));
				
				dto.setName(rs.getString("name"));
				dto.setRegion(rs.getString("region"));
				
				return dto;
			}
			
		} catch (Exception e) {
			System.out.println(e);
		}
		
		return null;
	}

	/**
	 * 모집 공고에 등록된 태그 목록을 가져오는 메서드
	 * @param jobopeningseq 모집공고 번호
	 * @return
	 */
	public ArrayList<String> getTagList(String jseq) {
		
		try {
			
			String sql = "select tagname from tblseltag st inner join tblTag t on st.tagseq = t.tagseq where jobopeningseq = ?";
			
			pstat = conn.prepareStatement(sql);
			pstat.setString(1, jseq);
			
			rs = pstat.executeQuery();
			
			ArrayList<String> list = new ArrayList<String>();
			
			while (rs.next()) {
				
				list.add(rs.getString("tagname"));
				
			}
			
			return list;
			
		} catch (Exception e) {
			System.out.println(e);
		}
		
		return null;
	}
}
























