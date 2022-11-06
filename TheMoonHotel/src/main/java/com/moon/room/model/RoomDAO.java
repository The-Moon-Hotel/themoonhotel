package com.moon.room.model;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import com.moon.db.ConnectionPoolMgr;

public class RoomDAO {
private ConnectionPoolMgr pool;
	
	public RoomDAO() {
		pool = new ConnectionPoolMgr();
	}
	
	//지점명을 매개변수로 받아서 객실 정보 반환하는 메서드
	public List<RoomVO> selectRoom(String locName) throws SQLException{
		Connection con = null;
		PreparedStatement ps = null;
		ResultSet rs = null;
		
		List<RoomVO> rlist = new ArrayList<>();
		try {
			con = pool.getConnection();
			
			String sql = "select * from room where locName=?";
			ps = con.prepareStatement(sql);
			ps.setString(1, locName);
			
			rs = ps.executeQuery();
			
			while(rs.next()) {
				int roomNo = rs.getInt("roomNo");
				String roomType = rs.getString("roomType");
				int roomPrice = rs.getInt("roomPrice");
				String roomImage = rs.getString("roomImage");
				int roomCount = rs.getInt("roomCount");
				
				RoomVO roomVo = new RoomVO(roomNo, locName, roomType, roomPrice, roomImage, roomCount);
				rlist.add(roomVo);
			}
			System.out.println("룸 전체 조회 결과 rlist.size="+rlist.size());
			
			return rlist;
		}finally {
			pool.dbClose(rs, ps, con);
		}
	}
}
