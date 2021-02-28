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
}
























