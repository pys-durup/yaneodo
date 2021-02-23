package com.yaneodo.jobnotice;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.HashMap;

import com.yaneodo.DBUtil2;


public class JobNoticeDAO {

	private Connection conn;
	private Statement stat;
	private PreparedStatement pstat;
	private ResultSet rs;

	public JobNoticeDAO() {
		//DB 연결
		conn = DBUtil2.open();
		
	}
	
	public void close() {
		try {
			conn.close();		
		} catch (Exception e) {
			System.out.println(e);
		}
	}
	
	
	
	//목록 조회
	public ArrayList<JobNoticeDTO> list(HashMap<String, String> map) {

		try {

			String where = "";

//			if (map.get("search") != null) {
//
//				// 검색 중..
//				where = String.format("where name like '%%%s%%' or subject like '%%%s%%' or content like '%%%s%%'",
//						map.get("search"), map.get("search"), map.get("search"));
//
//			}

			// String sql = String.format("select * from vwBoard %s order by seq desc",
			// where);

			String sql = String.format("select * from vwJobOpening");

			System.out.println(sql);

			pstat = conn.prepareStatement(sql);
			rs = pstat.executeQuery();

			//ResultSet -> ArrayList<DTO>
			ArrayList<JobNoticeDTO> list = new ArrayList<JobNoticeDTO>();

			while (rs.next()) {
				// 레코드 1줄 -> DTO 1개
				JobNoticeDTO dto = new JobNoticeDTO();

				dto.setJobOpeningSeq(rs.getString("jobOpeningSeq"));
				dto.setCompanySeq(rs.getString("companySeq"));
				dto.setTitle(rs.getString("title"));
				dto.setStartDate(rs.getString("startDate"));
				dto.setEndDate(rs.getString("endDate"));
				dto.setJob(rs.getString("job"));
				dto.setPlace(rs.getString("place"));
				dto.setDescription(rs.getString("description"));
				dto.setPhoto(rs.getString("photo"));
			

			
			
				list.add(dto); // ***

			}

			return list;

		} catch (Exception e) {
			System.out.println(e);
		}

		return null;
	}

}