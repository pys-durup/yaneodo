package com.yaneodo.company.main;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.Statement;

import com.yaneodo.DBUtil;
import com.yaneodo.member.MemberDTO;

public class CmemberDAO {

	private Connection conn;
	private Statement stat;
	private PreparedStatement pstat;
	private ResultSet rs;
	
	public CmemberDAO() {
		conn = DBUtil.open();
	}
	
	
	public void close() {
		try {
			conn.close();
		} catch (Exception e) {
			System.out.println(e);
		}
	}
	
	
	//LoginOk Servlet -> 기업회원 로그인 요청
	public int login(CmemberDTO dto) {
		
		try {
			
			String sql = "select count(*) as cnt from tblCompanyMember where email = ? and password = ?";
			
			pstat = conn.prepareStatement(sql);
			pstat.setString(1, dto.getEmail());
			pstat.setString(2, dto.getPassword());
			rs = pstat.executeQuery();
			
			if (rs.next()) {
				
				int result =  rs.getInt("cnt");
				System.out.println(result);
				return result;

				//return rs.getInt("cnt");
						
			}
			
		} catch (Exception e) {
			System.out.println(e);
		}	

		return 0;
	}

	//LoginOk Servlet -> 기업회원 정보 가져오기
	public CmemberDTO getMember(String email) {
		
		try {
			
			String sql = "select companyMemberSeq, managerName, state from tblCustomer where email = ?";
			
			pstat = conn.prepareStatement(sql);
			pstat.setString(1, email);
			rs = pstat.executeQuery();
			
			if (rs.next()) {
				
				CmemberDTO dto = new CmemberDTO();
				
				dto.setCompanyMemberSeq(rs.getString("companyMemberSeq"));
				dto.setManagerName(rs.getString("managerName"));
				dto.setState(rs.getString("state"));
				
				return dto;
				}
				
			} catch (Exception e) {
				System.out.println(e);
			}
		
			return null;
		}
		
	
	
	
	
	
	
	
	
	
	
	
	

}
