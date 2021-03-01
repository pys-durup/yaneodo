package com.yaneodo.main;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.HashMap;

import com.yaneodo.DBUtil;
import com.yaneodo.member.MemberDTO;
import com.yaneodo.member.resume.ResumeDTO;


public class SearchDAO {

	private Connection conn;
	private Statement stat;
	private PreparedStatement pstat;
	private ResultSet rs;

	public SearchDAO() {
		
		conn = DBUtil.open();
		
	}
	
	
	public void close() {
		try {
			conn.close();		
		} catch (Exception e) {
			System.out.println(e);
		}
	}

	
	//Search servlet -> 기업 리스트 돌려주기 
	public ArrayList<SearchDTO> clist(String searchKey) {
		
		try {
					
			String sql = String.format("select companySeq, companyName, industry, companyPhoto from vwSearch where companyName like '%%%s%%'", searchKey);
			
			stat = conn.createStatement();
			rs = stat.executeQuery(sql);

			ArrayList<SearchDTO> list = new ArrayList<SearchDTO>();
			
			while (rs.next()) {
				
				SearchDTO dto = new SearchDTO();
				
				dto.setCompanySeq(rs.getString("companySeq"));
				dto.setCompanyName(rs.getString("companyName"));
				dto.setIndustry(rs.getString("industry"));
				dto.setCompanyPhoto(rs.getString("companyPhoto"));
		
				list.add(dto);
				
			}
			
			return list;
			
		} catch (Exception e) {
			System.out.println(e);
		}

		return null;
	}
	
	//Search servlet -> 직무 리스트 돌려주기 
	public ArrayList<SearchDTO> jlist(String searchKey) {
		
		try {
			
			String sql = String.format("select jobOpeningSeq, companyName, title, job, place, jobPhoto from vwSearch where title like '%%%s%%' or job like '%%%s%%'", searchKey, searchKey);
		
			
			stat = conn.createStatement();
			rs = stat.executeQuery(sql);

			ArrayList<SearchDTO> list = new ArrayList<SearchDTO>();
			
			while (rs.next()) {
				
				SearchDTO dto = new SearchDTO();
				
				dto.setJobOpeningSeq(rs.getString("jobOpeningSeq"));
				dto.setCompanyName(rs.getString("companyName"));
				dto.setTitle(rs.getString("title"));
				dto.setJob(rs.getString("job"));
				dto.setPlace(rs.getString("place"));
				dto.setJobPhoto(rs.getString("jobPhoto"));

				list.add(dto);		
				
			}		
			return list;
			
		} catch (Exception e) {
			System.out.println(e);
		}

		return null;
	}
	


}