package com.yaneodo.company.match;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.HashMap;

import com.yaneodo.DBUtil;
import com.yaneodo.company.volunteer.VolunteerDTO;
import com.yaneodo.member.profile.ProfileDTO;

public class MatchDAO {

	private Connection conn;
	private Statement stat;
	private PreparedStatement pstat;
	private ResultSet rs;
	
	public MatchDAO() {
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

	/**
	 * match/list 서블릿에서 요청 프로필 목록을 리턴하는 메서드
	 * @param map 
	 * @return 
	 */
	public ArrayList<ProfileDTO> listProfile(HashMap<String, String> map) {
		
		try {
			
			String where = "";
			int count = map.size();
			System.out.println("listProfile map.size() : " + map.size());
		
			if (map.size() > 3) {
				where = "where ";
			}
			
			if (map.get("search") != null) {
				// 검색어가 있을때 > 검색중일때
				where += String.format("(jobtype like '%%%s%%' or company like '%%%s%%' or major like '%%%s%%' or school like '%%%s%%')", map.get("search"), map.get("search"), map.get("search"), map.get("search") );
				count--;
			}
			
			if (map.get("jobtype") != null) {
				// 직무가 선택되었을때 
				if (count == map.size()) {
					where += String.format(" jobtype = '%s'", map.get("jobtype"));
					count--;
				} else {
					where += String.format(" and jobtype = '%s'", map.get("jobtype"));
				}	                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                 
			}
			
			if (map.get("isdibs") != null) {
				// 찜목록 선택되었을때 
				if (count == map.size()) {
					where += String.format(" profileseq in (select profileseq from tbldibs where companymemberseq = '%s')", map.get("session"));
					count--;
				} else {
					where += String.format(" and profileseq in (select profileseq from tbldibs where companymemberseq = '%s')", map.get("session"));
				}	                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                 
			}
			
			
			
			if (map.get("isread") != null) {
				
				if (map.get("isread").equals("1")) {
					// 열람한목록 선택되었을때 
					if (count == map.size()) {
						where += String.format(" profileseq in (select profileseq from tblresumeread where companymemberseq = '%s')", map.get("session"));
						count--;
					} else {
						where += String.format(" and profileseq in (select profileseq from tblresumeread where companymemberseq = '%s')", map.get("session"));
					}	                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                 
				} else {
					// 미열람목록 선택되었을때
					if (count == map.size()) {
						where += String.format(" profileseq not in (select profileseq from tblresumeread where companymemberseq = '%s')", map.get("session"));
						count--;
					} else {
						where += String.format(" and profileseq not in (select profileseq from tblresumeread where companymemberseq = '%s')", map.get("session"));
					}	        					
				}
			}
			
			
			if (map.get("ismatch") != null) {
				// 면접제안 목록
				if (count == map.size()) {
					where += String.format(" profileseq in (select profileseq from tblresumeread rr inner join tblmatchup m on rr.resumereadseq = m.resumereadseq where rr.companymemberseq = %s)", map.get("session"));
					count--;
				} else {
					where += String.format(" and profileseq in (select profileseq from tblresumeread rr inner join tblmatchup m on rr.resumereadseq = m.resumereadseq where rr.companymemberseq = %s)", map.get("session"));
				}	                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                 
			}
			
			//페이징 이전 쿼리
			//String sql = String.format("select * from vwMatchList %s", where);
			
			String sql = String.format("select * from (select a.*, rownum as rnum from (select * from vwMatchList %s order by profileseq desc) a) where rnum between %s and %s", where, map.get("begin"), map.get("end"));
			
			System.out.println(sql);
			pstat = conn.prepareStatement(sql);
			rs = pstat.executeQuery();
			
			//ResultSet -> ArrayList<DTO>
			ArrayList<ProfileDTO> list = new ArrayList<ProfileDTO>();
			
			while (rs.next()) {
				ProfileDTO dto = new ProfileDTO();
				
				dto.setProfileseq(rs.getString("profileseq"));
				dto.setResumeseq(rs.getString("resumeseq"));
				dto.setJobtype(rs.getString("jobtype"));
				dto.setSchool(rs.getString("school"));
				dto.setMajor(rs.getString("major"));
				dto.setCompany(rs.getString("company"));
				dto.setCareer(rs.getString("career"));
				dto.setIntroduction(rs.getString("introduction"));
				
				list.add(dto);
			}
			
			return list;
			
		} catch (Exception e) {
			System.out.println(e);
		}
		return null;
	}

	/**
	 * match/list 서블릿에서 요청 직무의 종류를 리턴하는 메서드
	 * @return
	 */
	public ArrayList<String> listJob() {
		
		try {
			
			String sql = "select type from tblJob";
			
			stat = conn.createStatement();
			rs = stat.executeQuery(sql);
			
			ArrayList<String> list = new ArrayList<String>();
			
			while (rs.next()) {
				list.add(rs.getString("type"));
			}
			
			return list;
			
		} catch (Exception e) {
			System.out.println(e);
		}
		return null;
	}

	/**
	 * match/list 서블릿에서 프로필의 총 개수를 리턴
	 * @return
	 */
	public int getTotalCount(HashMap<String, String> map) {
		
		try {
			
			String where = "";
			int count = map.size();
			System.out.println("getTotalCount map.size() : " + map.size());
		
			if (map.size() > 3) {
				where = "where ";
			}
			
			if (map.get("search") != null) {
				// 검색어가 있을때 > 검색중일때
				where += String.format("(jobtype like '%%%s%%' or company like '%%%s%%' or major like '%%%s%%' or school like '%%%s%%')", map.get("search"), map.get("search"), map.get("search"), map.get("search") );
				count--;
			}
			
			if (map.get("jobtype") != null) {
				// 직무가 선택되었을때 
				if (count == map.size()) {
					where += String.format(" jobtype = '%s'", map.get("jobtype"));
					count--;
				} else {
					where += String.format(" and jobtype = '%s'", map.get("jobtype"));
				}	                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                 
			}
			
			if (map.get("isdibs") != null) {
				// 찜목록 선택되었을때 
				if (count == map.size()) {
					where += String.format(" profileseq in (select profileseq from tbldibs where companymemberseq = '%s')", map.get("session"));
					count--;
				} else {
					where += String.format(" and profileseq in (select profileseq from tbldibs where companymemberseq = '%s')", map.get("session"));
				}	                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                 
			}
			
			
			
			if (map.get("isread") != null) {
				
				if (map.get("isread").equals("1")) {
					// 열람한목록 선택되었을때 
					if (count == map.size()) {
						where += String.format(" profileseq in (select profileseq from tblresumeread where companymemberseq = '%s')", map.get("session"));
						count--;
					} else {
						where += String.format(" and profileseq in (select profileseq from tblresumeread where companymemberseq = '%s')", map.get("session"));
					}	                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                 
				} else {
					// 미열람목록 선택되었을때
					if (count == map.size()) {
						where += String.format(" profileseq not in (select profileseq from tblresumeread where companymemberseq = '%s')", map.get("session"));
						count--;
					} else {
						where += String.format(" and profileseq not in (select profileseq from tblresumeread where companymemberseq = '%s')", map.get("session"));
					}	        					
				}
			}
			
			
			if (map.get("ismatch") != null) {
				// 면접제안 목록
				if (count == map.size()) {
					where += String.format(" profileseq in (select profileseq from tblresumeread rr inner join tblmatchup m on rr.resumereadseq = m.resumereadseq where rr.companymemberseq = %s)", map.get("session"));
					count--;
				} else {
					where += String.format(" and profileseq in (select profileseq from tblresumeread rr inner join tblmatchup m on rr.resumereadseq = m.resumereadseq where rr.companymemberseq = %s)", map.get("session"));
				}	                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                 
			}
			
			String sql = String.format("select count(*) as cnt from vwMatchList %s", where);
			
			System.out.println(sql);
			
			stat = conn.createStatement();
			rs = stat.executeQuery(sql);
			
			if (rs.next()) {
				return rs.getInt("cnt");
			}
			
			
		} catch (Exception e) {
			System.out.println(e);
		}
		return 0;
	}
}
