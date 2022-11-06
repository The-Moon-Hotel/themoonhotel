package com.moon.guest.model;

import java.sql.SQLException;

public class GuestSerivce {
	//아이디 중복확인 상수
	public static final int EXIST_ID=1;	//존재하는 아이디=>사용불가
	public static final int NOT_EXIST_ID=2;// 존재하지 않는 아이디 => 사용가능
	
	//로그인 할때 상수
	public static final int LOGIN_OK=1;	//로그인 성공 
	public static final int DISAGREE_PWD=2;	//비밀번호 불일치
	public static final int NONE_USERID=3;	//해당 아이디 존재하지 않음
	
	//관리자 계정 여부 상수
	public static final int GUEST_ACCOUNT=1;	//Guset 계정
	public static final int ADMIN_ACCOUNT=2;	// 관리자 계정

	private GuestDAO guestDAO;
	
	public GuestSerivce() {
		guestDAO=new GuestDAO();
	}
	
	//회원가입
	public int insertGuest(GuestVO vo) throws SQLException {
		return guestDAO.insertGuest(vo);
	}
	
	//중복확인
	public int duplicateUserid(String userid) throws SQLException {
		return guestDAO.duplicateUserid(userid);
	}
	
	//로그인 
	public int loginCheck(String userid, String pwd) throws SQLException {
		return guestDAO.loginCheck(userid, pwd);
	}
	//회원정보 페이제에 회원정보 불러올때
	public GuestVO selectByUserid(String userid) throws SQLException {
		return guestDAO.selectByUserid(userid);
	}
	// 회원정보 수정
	public int updateGuset(GuestVO vo) throws SQLException {
		return guestDAO.updateGuset(vo);
	}
	//회원탈퇴
	public int OutGuset(String userid , String pwd) throws SQLException {
		return guestDAO.OutGuset(userid, pwd);
	}
}