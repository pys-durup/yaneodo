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
		//DB 연결
		conn = DBUtil.open();
	}
	
	public void close() {
		try {
			conn.close();
		} catch (Exception e) {
			System.out.println("MemberDAO.close()");
		}
	}
	
	

	//회원정보 반환 (필요하신분 쓰세여)
	public MemberDTO get(String seq) {
		
		try {
			
			String sql = "";
			
			pstat = conn.prepareStatement(sql);
			pstat.setString(1, seq);
			
			rs = pstat.executeQuery();
			
			
			if(rs.next()) {
				
				MemberDTO dto = new MemberDTO();
				
				dto.setCustomerSeq(rs.getString("customerSeq"));
				dto.setPhoto(rs.getString("photo"));
				dto.setName(rs.getString("name"));
				dto.setNickName(rs.getString("nickName"));
				dto.setEmail(rs.getString("email"));
				dto.setPassword(rs.getString("password"));
				dto.setPhone(rs.getString("phone"));
				dto.setBirth(rs.getString("birth"));
				dto.setGender(rs.getString("gender"));
				dto.setJoinDate(rs.getString("joinDate"));
				dto.setLastJoin(rs.getString("lastJoin"));
				
	
				return dto;
			}
			
		} catch (Exception e) {
			System.out.println(e);
		}
		
		return null;
	}
	
	
	//프로필 View -> 회원 프로필정보 반환
	public MemberDTO getProfile(String seq) {
		
		try {
			
			String sql = "select * from vwProfile where customerSeq = ?";
			
			pstat = conn.prepareStatement(sql);
			pstat.setString(1, seq);
			
			rs = pstat.executeQuery();
			
			
			if(rs.next()) {
				
				MemberDTO dto = new MemberDTO();
				
				dto.setProfileSeq(rs.getString("profileSeq"));
				dto.setResumeSeq(rs.getString("resumeSeq"));
				dto.setJobSeq(rs.getString("jobSeq"));
				dto.setIsWorkSeq(rs.getString("isWorkSeq"));
				dto.setSchool(rs.getString("school"));
				dto.setMajor(rs.getString("major"));
				dto.setCompany(rs.getString("company"));
				dto.setCareer(rs.getString("career"));
				
				//회원번호, 회원이름
				dto.setCustomerSeq(rs.getNString("customerSeq"));
				dto.setName(rs.getNString("customerName"));
				
			
	
				return dto;
			}
			
		} catch (Exception e) {
			System.out.println(e);
		}
		
		return null;
	}


	// 프로필 EditOk -> 프로필수정
	public int editProfile(MemberDTO dto) {
		
		try {
			
			String sql = "update tblProfile p set school = ?, major = ?, company = ?"
					+ "  where (select r.customerSeq from tblResume r where p.resumeSeq = r.resumeSeq) = ?"; //이력서번호로 회원번호찾아야함
			
			pstat = conn.prepareStatement(sql);
			pstat.setString(1, dto.getSchool());
			pstat.setString(2, dto.getMajor());
			pstat.setString(3, dto.getCompany());
			pstat.setString(4, dto.getCustomerSeq()); //회원번호
			
			
			return pstat.executeUpdate();
			
		} catch (Exception e) {
			System.out.println(e);
		} 
	
		return 0;
	}
	

	
	//Login servlet -> 로그인 요청
	public int login(MemberDTO dto) {
		
		try {
			
			String sql = "select count(*) as cnt from tblCustomer where email = ? and password = ?";
			
			pstat = conn.prepareStatement(sql);
			pstat.setString(1, dto.getEmail());
			pstat.setString(2, dto.getPassword());
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
				
				dto.setCustomerSeq(rs.getString("customerSeq"));
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
			pstat.setString(7, dto.getPassword());

			return pstat.executeUpdate();
			
			
		} catch (Exception e) {
			System.out.println(e);
		}
		
		
		return 0;
	}



	
	
	
	
	
	
	
	
	
	
	
	
	
}




