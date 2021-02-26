package com.yaneodo.admin.matchup;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.Statement;
import java.text.SimpleDateFormat;
import java.util.Calendar;
import java.util.Date;

import com.yaneodo.DBUtil;

public class MatchupDAO {
	
	private Connection conn;
	private Statement stat;
	private PreparedStatement pstat;
	private ResultSet rs;
	
	public MatchupDAO() {
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


	public String getgaintoday(String date) {
		
		String days = date.substring(2,4) +"/"+ date.substring(5,7)+"/"+date.substring(8);
		
		
		
		try {
			
			String sql = "select count(*) as count from tblmatchup where to_char(suggestdate,'yy/mm/dd') = ?";
			
			pstat = conn.prepareStatement(sql);
			pstat.setString(1, days);
			
			rs = pstat.executeQuery();
		
			
			

			if(rs.next()) {
			
				String today = rs.getString("count");
						
				return today;
			}
			
			
		} catch (Exception e) {
			System.out.println(e);
		}
		return null;
	}


	public String getgainyest(String date) {
Calendar cal = Calendar.getInstance();
		
		String days = "";
		
		
		try {
			
			SimpleDateFormat formatter = new SimpleDateFormat("yyyy-MM-dd");
			Date dates = formatter.parse(date);
			cal.setTime(dates);
			cal.add(Calendar.DATE, -1);
			
			String end = String.format("%tF", cal);
			
			days = end.substring(2,4) +"/"+ end.substring(5,7)+"/"+end.substring(8);
			
			String sql = "select count(*) as count from tblmatchup where to_char(suggestdate,'yy/mm/dd') = ?";
			
			pstat = conn.prepareStatement(sql);
			pstat.setString(1, days);
			
			
			rs = pstat.executeQuery();
			
						
			if(rs.next()) {
				
				String yest = rs.getString("count");
						
				return yest;
			}
			
		} catch (Exception e) {
			System.out.println(e);
		}
		return null;
	}


	public String getgainweek(String date) {
		
		Calendar cal = Calendar.getInstance();
		
		String daystart = "";
		String dayend = date.substring(2,4) +"/"+ date.substring(5,7)+"/"+date.substring(8);
		
		
		try {
			
			SimpleDateFormat formatter = new SimpleDateFormat("yyyy-MM-dd");
			Date dates = formatter.parse(date);
			cal.setTime(dates);
			cal.add(Calendar.DATE, -7);
			
			String end = String.format("%tF", cal);
			
			daystart = end.substring(2,4) +"/"+ end.substring(5,7)+"/"+end.substring(8);
			
			String sql = "select count(*) as count from tblmatchup where to_char(suggestdate,'yy/mm/dd') between ? and ?";
			
			pstat = conn.prepareStatement(sql);
			pstat.setString(1, daystart);
			pstat.setString(2, dayend);
			
			rs = pstat.executeQuery();
			
						
			if(rs.next()) {
				
				String week = rs.getString("count");
						
				return week;
			}
			
		} catch (Exception e) {
			System.out.println(e);
		}
		return null;
	}
}
