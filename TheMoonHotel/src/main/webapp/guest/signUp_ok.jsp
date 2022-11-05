<%@page import="java.sql.SQLException"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>signUp_ok.jsp</title>
</head>
<body>
<%
	request.setCharacterEncoding("utf-8");
%>

<jsp:useBean id="guestVo" class="com.moon.guest.model.GuestVO" scope="page"></jsp:useBean>
<jsp:useBean id="guestSerivce" class="com.moon.guest.model.GuestSerivce" scope="page"></jsp:useBean>
	
	<%
		String name= request.getParameter("name");
		String userid= request.getParameter("userid");
		String pwd= request.getParameter("pwd");
		String email= request.getParameter("email");
		String tel= request.getParameter("tel");
		
		guestVo.setName(name);
		guestVo.setUserid(userid);
		guestVo.setPwd(pwd);
		guestVo.setEmail(email);
		guestVo.setTel(tel);
		
		String msg="회원가입 실패", url="signUp.jsp";
		try{
			int cnt = guestSerivce.insertGuest(guestVo);
			if(cnt>0){
				msg="회원가입되었습니다.";
				url="../index.jsp";
			}
		}catch(SQLException e){
			e.printStackTrace();
		}
		
		request.setAttribute("msg", msg);
		request.setAttribute("url", url);
	%>
<jsp:forward page="../common/message.jsp"></jsp:forward>
</body>
</html>