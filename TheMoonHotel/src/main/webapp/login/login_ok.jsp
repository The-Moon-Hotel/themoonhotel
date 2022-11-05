<%@page import="com.moon.guest.model.GuestSerivce"%>
<%@page import="java.sql.SQLException"%>
<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>login_ok.jsp</title>
</head>
<body>
<jsp:useBean id="memberService" class="com.moon.guest.model.GuestSerivce" scope="session"></jsp:useBean>

<!-- 로그인 처리 -->
<%
	//login.jsp에서 post 방식으로 서브밋
	request.getParameter("utf-8");
	//1
	String userid=request.getParameter("userid");
	String pwd=request.getParameter("pwd");
	String chkSave=request.getParameter("chkSave");
	//2
	String msg="로그인 처리 실패", url="login.jsp";
	try{
		int result=GuestSerivce.loginCheck(userid,pwd);
	}catch(SQLException e){
		e.printStackTrace();
	}
	//3
	
%>
<jsp:forward page="../common/message.jsp"></jsp:forward>
</body>
</html>