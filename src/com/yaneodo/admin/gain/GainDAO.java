package com.yaneodo.admin.gain;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.Statement;

import com.yaneodo.DBUtil2;

public class GainDAO {
	
	private Connection conn;
	private Statement stat;
	private PreparedStatement pstat;
	private ResultSet rs;
	
	public GainDAO() {
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

	public GainDTO getgain(String date) {

		String days = "21/02/02";
		//String days = date.substring(0,2) +"/"+ date.substring(3,5)+"/"+date.substring(6,8) ;
		
		try {
			
			String sql = "select Atype, Btype, Ctype, Dtype, Etype, (Atype *100000+Btype*200000+Ctype*300000+Dtype*400000+Etype*500000) as sum from (select count(case when sp.type = '1' then 1 end) as Atype, count(case when sp.type = 'b상품' then 1 end) as Btype, count(case when sp.type = 'c상품' then 1 end) as Ctype, count(case when sp.type = 'd상품' then 1 end) as Dtype, count(case when sp.type = 'e상품' then 1 end) as Etype from tblServiceproduct sp inner join tblPayment pm on sp.serviceProductSeq = pm.serviceProductSeq where to_char(pm.paydate,'yy/mm/dd') = ?)";
			
			pstat = conn.prepareStatement(sql);
			pstat.setString(1, days);
			
			rs = pstat.executeQuery();
			
			GainDTO dto = new GainDTO();

			if(rs.next()) {
			
				dto.setA(rs.getString("Atype"));
				dto.setB(rs.getString("Btype"));
				dto.setC(rs.getString("Ctype"));
				dto.setD(rs.getString("Dtype"));
				dto.setE(rs.getString("Etype"));
						
			}
			
			return dto;
			
		} catch (Exception e) {
			System.out.println(e);
		}
		return null;
	}

}
