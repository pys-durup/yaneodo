package com.yaneodo.admin.board;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.Statement;
import java.util.ArrayList;

import com.yaneodo.DBUtil;

public class MemberDAO {
	
	private Connection conn;
	private Statement stat;
	private PreparedStatement pstat;
	private ResultSet rs;
	
	public MemberDAO() {
		
		//DB연결
		conn = DBUtil.open();
	}
	
	public void close() {
		
		try {
			
			conn.close();
			
		} catch (Exception e) {		
			System.out.println(e);			
		}
		
	}

	//MemberList 서블릿
	public ArrayList<MemberDTO> list() {
		
		try {
			
			String sql = "select * from tblCustomer";
			
			pstat = conn.prepareStatement(sql);
			rs = pstat.executeQuery();
			
			ArrayList<MemberDTO> list = new ArrayList<MemberDTO>();
			
			while (rs.next()) {
				
				MemberDTO dto = new MemberDTO();
				
				dto.setSeq(rs.getString("customerSeq"));
				dto.setPhoto(rs.getString("photo"));
				dto.setName(rs.getString("name"));
				dto.setNickname(rs.getString("nickname"));
				dto.setEmail(rs.getString("email"));
				dto.setPhone(rs.getString("phone"));
				dto.setJoinDate(rs.getString("joindate"));
				dto.setLastJoin(rs.getString("lastjoin"));
				
				list.add(dto);
				
			}
			
			return list;
			
		} catch (Exception e) {
			System.out.println(e);
		}
		
		return null;
	}

}




















