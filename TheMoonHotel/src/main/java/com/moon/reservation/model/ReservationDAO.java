package com.moon.reservation.model;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.SQLException;

import com.moon.db.ConnectionPoolMgr;

public class ReservationDAO {
	private ConnectionPoolMgr pool;
	
	public ReservationDAO() {
		pool = new ConnectionPoolMgr();
	}
	
	//예약할 방의 정보를 매개변수로 받아서 reservation 테이블에 저장하는 메서드
	public int insertReservation (ReservationVO reservVo) throws SQLException {
		Connection con = null;
		PreparedStatement ps = null;
		
		try {
			con = pool.getConnection();
			String sql = "insert into reservation(reservNo, guestNo, roomNo, facNo, "
					+ "adult, kids, ci_date, co_date, totalPrice)\r\n"
					+ "values(reservation_seq.nextval, ?, ?, ?, "
					+ " ?, ?, TO_DATE(?,'YYYY-MM-DD'), TO_DATE(?,'YYYY-MM-DD')), ?";
			ps = con.prepareStatement(sql);
			
			ps.setInt(1, reservVo.getGuestNo());
			ps.setInt(2, reservVo.getRoomNo());
			ps.setInt(3, reservVo.getFacNo());
			ps.setInt(4, reservVo.getAdult());
			ps.setInt(5, reservVo.getKids());
			ps.setDate(6, reservVo.getCi_date());
			ps.setDate(7, reservVo.getCo_date());
			ps.setInt(8, reservVo.getTotalPrice());
			
			int cnt = ps.executeUpdate();
			System.out.println("예약 성공 cnt = "+cnt+", 매개변수 reservVo = "+ reservVo);
			
			return cnt;
		}finally {
			pool.dbClose(ps, con);
		}
	}
}
