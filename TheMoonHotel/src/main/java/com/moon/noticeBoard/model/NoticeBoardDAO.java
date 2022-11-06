package com.moon.noticeBoard.model;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Timestamp;
import java.util.ArrayList;
import java.util.List;

import javax.naming.spi.DirStateFactory.Result;

import com.moon.db.ConnectionPoolMgr;

public class NoticeBoardDAO {
		ConnectionPoolMgr pool = new ConnectionPoolMgr();
		
	public int insertNotice() throws SQLException {
		Connection con = null;
		PreparedStatement ps = null;
		
		try {
			con=pool.getConnection();
			String sql = "insert into noticeBoard(no, guestNo, n_title, n_content, n_count)\r\n"
					+ "values(notice_seq.nextval(), ?,?,?,?)";
			ps=con.prepareStatement(sql);
			 
			NoticeBoardVO nvo = new NoticeBoardVO();
			ps.setInt(1, nvo.getGuestNo());
			ps.setString(2, nvo.getN_title());
			ps.setString(3, nvo.getN_content());
			ps.setInt(4, nvo.getN_count());
			
			int cnt = ps.executeUpdate();
			
			if(cnt>0) {
				
			}
			
			return cnt;
		} finally {
			pool.dbClose(ps, con);
		}
		
	}
	
	public List<NoticeBoardVO> selectAll(String condition, String keyword) throws SQLException{
		Connection con = null;
		PreparedStatement ps = null;
		ResultSet rs = null;
		
		List<NoticeBoardVO> list = new ArrayList<>();
		try {
			con = pool.getConnection();
			String sql = "select * from noticeBoard";
			if(keyword!=null && !keyword.isEmpty()) {
				sql+=" where " + condition + " like '%' || ? || '%'";
			}
			sql+=" order by no desc";
			ps= con.prepareStatement(sql);
			
			if(keyword!=null && !keyword.isEmpty()) {
				ps.setString(1, keyword);
			}
			rs=ps.executeQuery();
			while(rs.next()) {
				int noticeNo = rs.getInt("noticeNo");
				int guestNo = rs.getInt("guestNo");
				String n_title = rs.getString("n_title");
				Timestamp n_regdate = rs.getTimestamp("n_regdate");
				String n_content = rs.getString("n_content");
				int n_count = rs.getInt("n_count");
				
				
				NoticeBoardVO vo = new NoticeBoardVO(noticeNo, guestNo, n_title, n_regdate, n_content, n_count);
				list.add(vo);
			}
			
			return list;
		} finally {
			pool.dbClose(rs, ps, con);
		}
	}
	public NoticeBoardVO selectByNo(int noticeNo) throws SQLException {
		Connection con = null;
		PreparedStatement ps = null;
		ResultSet rs = null;
		
		NoticeBoardVO vo = new NoticeBoardVO();
		
		try {
			con=pool.getConnection();
			String sql = "select * from noticeBoard where noticeNo = ?";
			ps = con.prepareStatement(sql);
			ps.setInt(1, noticeNo);
			
			rs= ps.executeQuery();
			
			while(rs.next()) {
				int guestNo = rs.getInt("guestNo");
				String n_title = rs.getString("n_title");
				Timestamp n_regdate = rs.getTimestamp("n_regdate");
				String n_content = rs.getString("n_content");
				int n_count = rs.getInt("n_count");
				
				vo.setGuestNo(guestNo);
				vo.setN_title(n_title);
				vo.setN_regdate(n_regdate);
				vo.setN_content(n_content);
				vo.setN_count(n_count);
			}
			return vo;
		} finally {
			pool.dbClose(rs, ps, con);
		}
	}
	public int updateNoticeBoard(NoticeBoardVO vo) throws SQLException {
		Connection con = null;
		PreparedStatement ps = null;
		
		try {
		con = pool.getConnection();
		String sql = "update noticeBoard"
				+ " set n_title =?, n_content = ?"
				+ " where noticeNO = ? and guestNo = ?";
		ps=con.prepareStatement(sql);
		
		ps.setString(1, vo.getN_title());
		ps.setString(2, vo.getN_content());
		ps.setInt(3, vo.getNoticeNo());
		ps.setInt(4, vo.getGuestNo());
		
		int cnt = ps.executeUpdate();
		
		return cnt;
		
		}finally {
			pool.dbClose(ps, con);
		}
	}
	//해당 게스트의 비밀번호와 일치하는지 확인을 해야함
	
	public int deleteNoticeBoard(int noticeNo, String pwd) throws SQLException {
		Connection con = null;
		PreparedStatement ps = null;
		
		try {
			con = pool.getConnection();
			String sql = "delete from noticeBoard"
						+" where noticeNo = ? and pwd = ?";
			ps=con.prepareStatement(sql);
			
			ps.setInt(1, noticeNo);
			ps.setString(2, pwd);		
			int cnt = ps.executeUpdate();
			
			return  cnt;
		}finally {
			pool.dbClose(ps, con);
		}
	}
	
	public int updateN_count(int noticeNo) throws SQLException {
		Connection con = null;
		PreparedStatement ps = null;
		
		try {
			con = pool.getConnection();
			String sql = "update noticeBoard"
					+ " setn_count = n_count+1"
					+ " where noticeNo=?";
			ps=con.prepareStatement(sql);
			ps.setInt(1, noticeNo);
			
			int cnt = ps.executeUpdate();
			
			return cnt;
			
		}finally {
			pool.dbClose(ps, con);
		}
		
	}
}
