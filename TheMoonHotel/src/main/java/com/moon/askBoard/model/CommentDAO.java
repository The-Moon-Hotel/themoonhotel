package com.moon.askBoard.model;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Timestamp;
import java.util.ArrayList;
import java.util.List;

import com.moon.db.ConnectionPoolMgr;

public class CommentDAO {
	private ConnectionPoolMgr pool;
	
	public CommentDAO(){
		pool = new ConnectionPoolMgr();
	}
	
	/**
	 * askboardNo별 댓글 조회
	 * @param bdno
	 * @return
	 * @throws SQLException
	 */
	public List<CommentVO> selectComment(int bdno) throws SQLException {

		Connection con = null;
		PreparedStatement ps = null;
		ResultSet rs = null;
		
		List<CommentVO> list = new ArrayList<>();
		
		try {
			//1,2
			con = pool.getConnection();
			
			String sql="select * from comments"
					+ "	where bdno = ?";
			ps = con.prepareStatement(sql);
			ps.setInt(1, bdno);
			
			rs = ps.executeQuery();
			
			while(rs.next()) {
				int no = rs.getInt("no");
				String name = rs.getString("name");
				Timestamp regdate = rs.getTimestamp("regdate");
				String content = rs.getString("content");
				
				CommentVO vo 
					= new CommentVO(no, name, regdate, content, bdno);
				
				list.add(vo);
			}
			
			System.out.println("댓글 조회: "+list.size());
			return list;
		}finally {
			pool.dbClose(rs, ps, con);
		}
	}
	
	
	/**
	 * 댓글달기
	 * @param vo
	 * @return
	 * @throws SQLException
	 */
	public int insertcomment(CommentVO vo) throws SQLException {
		Connection con=null;
		PreparedStatement ps=null;
		
		try {
			//1,2 con
			con=pool.getConnection();
			
			//3. ps
			String sql="insert into comments(no, name, regdate, content, bdno)"
				+ " values(comments_seq.nextval, ?,?,?,?)";
			ps=con.prepareStatement(sql);
			
			ps.setString(1, vo.getName());
			ps.setTimestamp(3, vo.getRegdate());
			ps.setString(4, vo.getContent());
			ps.setInt(5, vo.getBdno());
			
			//4. exec
			int cnt=ps.executeUpdate();
			System.out.println("댓글 등록 결과: "+cnt+", 매개변수 vo: "+vo);
			
			return cnt;
		}finally {
			//5.
			pool.dbClose(ps, con);
		}
	}
}
