package com.yaneodo.member;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.Statement;

import com.yaneodo.DBUtil2;

public class MemberDAO {
	
	private Connection conn;
	private Statement stat;
	private PreparedStatement pstat;
	private ResultSet rs;
	
	public MemberDAO() {
		conn = DBUtil2.open();
	}

	//Customer_editOk 서블릿 -> 회원정보수정
	public int edit(MemberDTO dto) {
		try {
			
			String sql ="update tblCustomer set name=?, nickName=?, birth=?, phone=? where customerseq=2";
			
			pstat = conn.prepareStatement(sql);
			pstat.setString(1, dto.getName());
			pstat.setString(2, dto.getNickName());
			pstat.setString(3, dto.getBirth());
			pstat.setString(4, dto.getPhone());
			
			
			return pstat.executeUpdate();
			
		} catch (Exception e) {
			System.out.println(e);
		}
		
		return 0;
	}

	//Customer_edit 서블릿 -> 회원정보가져오기
	public MemberDTO getInfo(int i) {
		try {
			
			String sql = "select * from tblCustomer where customerSeq =?";
			
			pstat = conn.prepareStatement(sql);
			pstat.setInt(1, i);
			
			rs = pstat.executeQuery();
			
			if(rs.next()) {
				MemberDTO dto = new MemberDTO();
				dto.setName(rs.getString("name"));
				dto.setBirth(rs.getString("birth"));
				dto.setNickName(rs.getString("nickName"));
				dto.setPhone(rs.getString("phone"));
				dto.setpassword(rs.getString("password"));
				dto.setPhoto(rs.getString("photo"));
				dto.setEmail(rs.getString("email"));
				dto.setSeq(rs.getString("customerSeq"));
				
				return dto;
			}
			
			
		} catch (Exception e) {
			System.out.println(e);
		}
		return null;
	}

	public int checkNick(String nickName) {
		try {
			String sql = "select count(*) as cnt from tblCustomer where nickName=? ";
			
			pstat = conn.prepareStatement(sql);
			pstat.setString(1, nickName);
			
			rs = pstat.executeQuery();
			if(rs.next()) {
				return rs.getInt("cnt");
			}
			
		} catch (Exception e) {
			System.out.println(e);
		}
		return 0;
	}


}
