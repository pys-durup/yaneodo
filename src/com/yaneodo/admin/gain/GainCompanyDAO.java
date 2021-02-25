package com.yaneodo.admin.gain;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.Statement;
import java.util.ArrayList;

import com.yaneodo.DBUtil2;

public class GainCompanyDAO {

	private Connection conn;
	private Statement stat;
	private PreparedStatement pstat;
	private ResultSet rs;
	
	public GainCompanyDAO() {
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


	public ArrayList<GainCompanyDTO> getGainCompanys() {

		try {
			
			
			
				String sql = "select * from vwgainall";      
			

				stat = conn.createStatement();
				
				rs = stat.executeQuery(sql);
				
				ArrayList<GainCompanyDTO> list = new ArrayList<GainCompanyDTO>();
				
				while(rs.next()) {
					
					GainCompanyDTO dto = new GainCompanyDTO();
				
					dto.setName(rs.getString("name"));
					dto.setA(rs.getString("a"));
					dto.setB(rs.getString("b"));
					dto.setC(rs.getString("c"));
					dto.setD(rs.getString("d"));
					dto.setE(rs.getString("e"));
					dto.setUsed(rs.getString("used"));
					
					list.add(dto);
				}
				
				return list;
			
			
			
		} catch (Exception e) {
			System.out.println(e);
		}
		return null;
	}


	public ArrayList<GainCompanyDTO> getGainCompany(String name) {
		try {
			
			name = "%" + name +"%";
			
			String sql = "select * from vwgainall where name like ?";

			pstat = conn.prepareStatement(sql);
			
			pstat.setString(1,name);
			
			rs = pstat.executeQuery();
			
			
			ArrayList<GainCompanyDTO> list = new ArrayList<GainCompanyDTO>();
			
			while(rs.next()) {
				
				GainCompanyDTO dto = new GainCompanyDTO();
			
				dto.setName(rs.getString("name"));
				dto.setA(rs.getString("a"));
				dto.setB(rs.getString("b"));
				dto.setC(rs.getString("c"));
				dto.setD(rs.getString("d"));
				dto.setE(rs.getString("e"));
				dto.setUsed(rs.getString("used"));
				
				list.add(dto);
			}
			
			return list;
			
		
	} catch (Exception e) {
		System.out.println(e);
	}
	return null;
	}
}
