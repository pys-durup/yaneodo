package com.yaneodo.company.main;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.Statement;
import java.text.SimpleDateFormat;
import java.time.Year;
import java.util.Calendar;

import com.yaneodo.DBUtil;

public class CompanyDAO {

	private Connection conn;
	private Statement stat;
	private PreparedStatement pstat;
	private ResultSet rs;
	
	public CompanyDAO() {
		conn = DBUtil.open();
	}
	
	
	public void close() {
		
		try {
				conn.close();
		} catch (Exception e) {
			System.out.println(e);
		}
	}
	
	//company register servlet
	public int add(CompanyDTO dto) {
		
		try {
			
			String sql = "insert into tblCompany(companySeq, companyMemberSeq, name, country, region, address, regNum, sales, industry, employeeNum, introduction, establishment, email, webAddress, photo, state) values (companySeq.nextVal, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, '0')";
			
			pstat = conn.prepareStatement(sql);
			
			pstat.setString(1, dto.getCompanyMemberSeq());
			pstat.setString(2, dto.getName());
			pstat.setString(3, dto.getCountry());
			pstat.setString(4, dto.getRegion());
			pstat.setString(5, dto.getAddress());
			pstat.setString(6, dto.getRegNum());
			pstat.setString(7, dto.getSales());
			pstat.setString(8, dto.getIndustry());
			pstat.setString(9, dto.getEmployeeNum());
			pstat.setString(10, dto.getIntroduction());
			pstat.setString(11, dto.getEstablishment());
			pstat.setString(12, dto.getEmail());
			pstat.setString(13, dto.getWebAddress());
			pstat.setString(14, dto.getPhoto());
			
			return pstat.executeUpdate();
			
		} catch (Exception e) {
			System.out.println(e);
		}
		
		return 0;
	}


	
}
