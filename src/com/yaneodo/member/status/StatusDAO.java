package com.yaneodo.member.status;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.HashMap;

import com.yaneodo.DBUtil;

public class StatusDAO {
	private Connection conn;
	private Statement stat;
	private PreparedStatement pstat;
	private ResultSet rs;
	
	public StatusDAO() {
		conn = DBUtil.open();
	}
	
	/*지원 목록 가져오기*/
	public ArrayList<StatusDTO> list(HashMap<String, String> map, String seq) {

		try {
			String where="";
			
			if(map.get("status")!=null) {
				where = String.format("and status = '%s'", map.get("status"));
			} else if(map.get("status") == null) {
				where = "and status != '작성중'";
			}
			String sql = String.format("select * from (select a.*, rownum as rnum from (select * from vwApplyStatus where seq=? %s order by applydate desc) a ) where rnum between %s and %s",where,map.get("begin"),map.get("end")) ;
			
			pstat = conn.prepareStatement(sql);
			pstat.setString(1, seq);
			rs = pstat.executeQuery();
			ArrayList<StatusDTO> list = new ArrayList<StatusDTO>();
			while(rs.next()) {
				StatusDTO dto = new StatusDTO();
				dto.setCname(rs.getString("cname"));
				dto.setApplyDate(rs.getString("applydate"));
				dto.setJob(rs.getString("job"));
				dto.setApplyStatus(rs.getString("status"));
				
				list.add(dto);
				
			}
			return list;
		} catch (Exception e) {
			System.out.println(e);
		}
		return null;
	}
	/*지원현황 전체 카운트 (작성중 제외)*/
	public int cntAll(String seq) {
		try {
		
			String sql = String.format("select count(*) as cnt from vwApplyStatus where seq=? and status != '작성중'");
			
			pstat = conn.prepareStatement(sql);
			pstat.setString(1, seq);
			rs = pstat.executeQuery();
			if(rs.next()) {
				return rs.getInt("cnt");
			}
			
		} catch (Exception e) {
			System.out.println(e);
		}
		return 0;
	}
	/*작성중 카운트*/
	public int cntWriting(String seq) {
		try {
		
			String sql = String.format("select count(*) as cnt from vwApplyStatus where seq=? and status = '작성중'");
			
			pstat = conn.prepareStatement(sql);
			pstat.setString(1, seq);
			rs = pstat.executeQuery();
			if(rs.next()) {
				return rs.getInt("cnt");
			}
			
		} catch (Exception e) {
			System.out.println(e);
		}
		return 0;
	}

	/*지원 완료 카운트*/
	public int cntComplete(String seq) {
		try {
		
			String sql = String.format("select count(*) as cnt from vwApplyStatus where seq=? and status ='지원 완료'");
			
			pstat = conn.prepareStatement(sql);
			pstat.setString(1, seq);
			rs = pstat.executeQuery();
			if(rs.next()) {
				return rs.getInt("cnt");
			}
			
		} catch (Exception e) {
			System.out.println(e);
		}
		return 0;
	}
	/*서류 통과 카운트*/
	public int cntResumePass(String seq) {
		try {
		
			String sql = String.format("select count(*) as cnt from vwApplyStatus where seq=? and status ='서류 통과'");
			
			pstat = conn.prepareStatement(sql);
			pstat.setString(1, seq);
			rs = pstat.executeQuery();
			if(rs.next()) {
				return rs.getInt("cnt");
			}
			
		} catch (Exception e) {
			System.out.println(e);
		}
		return 0;
	}
	
	/* 최종합격 카운트*/
	public int cntPass(String seq) {
		try {
		
			String sql = String.format("select count(*) as cnt from vwApplyStatus where seq=? and status ='최종 합격'");
			
			pstat = conn.prepareStatement(sql);
			pstat.setString(1, seq);
			rs = pstat.executeQuery();
			if(rs.next()) {
				return rs.getInt("cnt");
			}
			
		} catch (Exception e) {
			System.out.println(e);
		}
		return 0;
	}
	
	/* 불합격 카운트*/
	public int cntFail(String seq) {
		try {
		
			String sql = String.format("select count(*) as cnt from vwApplyStatus where seq=? and status ='불합격'");
			
			pstat = conn.prepareStatement(sql);
			pstat.setString(1, seq);
			rs = pstat.executeQuery();
			if(rs.next()) {
				return rs.getInt("cnt");
			}
			
		} catch (Exception e) {
			System.out.println(e);
		}
		return 0;
	}
	
	/*지원현황 페이징위한 총 개시물 수 */
	public int getTotalCount(HashMap<String, String> map,String seq) {
		try {
			String where ="";
			
			if(map.get("status")==null || map.get("status") =="") {
				where = "and status !='지원중'";
			} else {
				where = String.format("and status = '%s'",map.get("status"));
			}
			
			String sql = String.format("select count(*) as cnt from vwApplyStatus where seq=? %s", where);
			
			pstat = conn.prepareStatement(sql);
			pstat.setString(1, seq);
			
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
