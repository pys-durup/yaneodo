package com.yaneodo.company.volunteer;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.HashMap;

import com.yaneodo.DBUtil;

public class VolunteerDAO {
	
	private Connection conn;
	private Statement stat;
	private PreparedStatement pstat;
	private ResultSet rs;
	
	public VolunteerDAO() {
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

	// List 서블릿에서 지원자 목록을 리턴받는다
	public ArrayList<VolunteerDTO> list(HashMap<String, String> map) {
		
		try {
			
			String where = "";
			
			if (map.size() > 0 ) {
				where = "where ";
			}
		
			
			if (map.get("search") != null) {
				// 검색어가 있을때 > 검색중일때
				where = String.format("name like '%%%s%%' or subject like '%%%s%%' or content like '%%%s%%'", map.get("search"), map.get("search"), map.get("search"));
			}
			
			if (map.get("isread") != null) {
				// 매치업 탭을 클릭했을때
				if (map.size() == 1) {
					where += String.format("isread = '%s'", map.get("isread"));					
				} else {
					where += String.format("and isread = '%s'", map.get("isread"));
				}
				                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                              
			}
			
			// 페이징 이전 쿼리
			String sql = String.format("select * from vwVolunteer %s order by pseq desc", where);
			
			System.out.println(sql);
			
			pstat = conn.prepareStatement(sql);
			rs = pstat.executeQuery();
			
			//ResultSet -> ArrayList<DTO>
			ArrayList<VolunteerDTO> list = new ArrayList<VolunteerDTO>();
			
			while (rs.next()) {
				//레코드 1줄 -> DTO 1개
				VolunteerDTO dto = new VolunteerDTO();
				
				dto.setPseq(rs.getString("pseq"));
				dto.setCmseq(rs.getString("cmseq"));
				dto.setName(rs.getString("name"));
				dto.setJob(rs.getString("job"));
				dto.setIsread(rs.getString("isread"));
				dto.setIsdibs(rs.getString("isdibs"));
				dto.setAsseq(rs.getString("asseq"));
				
				list.add(dto);
			}
			
			return list;
			
			
		} catch (Exception e) {
			System.out.println(e);
		}
		
		return null;
	}
}
