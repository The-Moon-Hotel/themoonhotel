package com.moon.noticeBoard.model;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.SQLException;

import com.moon.db.ConnectionPoolMgr;

public class NoticeBoardDAO {
		ConnectionPoolMgr pool = new ConnectionPoolMgr();
		
	public int insertNotice() throws SQLException {
		Connection con = null;
		PreparedStatement ps = null;
		
		try {
			con=pool.getConnection();
			String sql = "insert into noticeBoard(no, guestNo, n_title, n_regdate, n_content, n_count)\r\n"
					+ "values(notice_seq.nextval(), ?,?,?,?,?)";
			ps=con.prepareStatement(sql);
			 
			NoticeBoardVO nvo = new NoticeBoardVO();
			ps.setInt(1, nvo.getGuestNo());
			ps.setString(2, nvo.getN_title());
			ps.setTimestamp(3, nvo.getN_regdate());
			ps.setString(4, nvo.getN_content());
			ps.setInt(5, nvo.getN_count());
			
			int cnt = ps.executeUpdate();
			
			if(cnt>0) {
				
			}
			
			return cnt;
		} finally {
			pool.dbClose(ps, con);
		}
		
	}
}
