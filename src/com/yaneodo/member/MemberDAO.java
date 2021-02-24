package com.yaneodo.member;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.Statement;

import com.yaneodo.DBUtil;

public class MemberDAO {

	private Connection conn;
	private Statement stat;
	private PreparedStatement pstat;
	private ResultSet rs;
	
	public MemberDAO() {
		conn = DBUtil.open();
	}

	public void close() {
		try {
			conn.close();
		} catch (Exception e) {
			System.out.println(e);
		}
	}

	
	//Login servlet -> 로그인 요청
	public int login(MemberDTO dto) {
		
		try {
			
			String sql = "select count(*) as cnt from tblCustomer where email = ? and password = ?";
			
			pstat = conn.prepareStatement(sql);
			pstat.setString(1, dto.getEmail());
			pstat.setString(2, dto.getpassword());
			rs = pstat.executeQuery();
			
			if (rs.next()) {
				return rs.getInt("cnt");
			}

			
		} catch (Exception e) {
			System.out.println(e);
		}	
		
		return 0;
		
	}
	
	//Login servlet -> 회원정보 요청
	public MemberDTO getMember(String email) {
		
		try {
			
			String sql = "select customerSeq, email, name, nickName, lastJoin from tblCustomer where email = ?";
			
			pstat = conn.prepareStatement(sql);
			pstat.setString(1, email);
			rs = pstat.executeQuery();
			
			if (rs.next()) {
				
				MemberDTO dto = new MemberDTO();
				
				dto.setSeq(rs.getString("customerSeq"));
				dto.setEmail(rs.getString("email"));
				dto.setPhoto(rs.getString("name"));
				dto.setNickName(rs.getString("nickName"));
				dto.setLastJoin(rs.getString("lastJoin"));
				
				return dto;
			}

			
		} catch (Exception e) {
			System.out.println(e);
		}
		
		
		return null;
	}

	//RegisterOk -> 회원가입 요청 
	public int add(MemberDTO dto) {
		
		try {
			
			String sql = "insert into tblCustomer(customerSeq, name, nickName, email, phone, birth, gender, password, joinDate, lastJoin) "
					+ "values (customerSeq.nextVal, ?, ?, ?, ?, ?, ?, ?, sysdate, sysdate)";
			
			pstat = conn.prepareStatement(sql);
			
			pstat.setString(1, dto.getName());
			pstat.setString(2, dto.getNickName());
			pstat.setString(3, dto.getEmail());
			pstat.setString(4, dto.getPhone());
			pstat.setString(5, dto.getBirth());
			pstat.setString(6, dto.getGender());
			pstat.setString(7, dto.getpassword());

			return pstat.executeUpdate();
			
			
		} catch (Exception e) {
			System.out.println(e);
		}
		
		
		return 0;
	}



	
	
	
	
	
	
	
	
	
	
	
	
	
}




