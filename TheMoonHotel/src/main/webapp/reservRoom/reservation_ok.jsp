<%@page import="java.sql.Date"%>
<%@page import="java.sql.SQLException"%>
<%@page import="com.moon.reservation.model.ReservationVO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<jsp:useBean id="reservService" 
class="com.moon.reservation.model.ReservationService" scope="session"></jsp:useBean>
<jsp:useBean id="reservVo" 
class="com.moon.reservation.model.ReservationVO" scope="page"></jsp:useBean>

<%
	String guestNo = (String)session.getAttribute("guestNo");

	request.setCharacterEncoding("utf-8");
	
	/* 예약 정보 받아오기 */
	String locName = request.getParameter("locName");
	String ci_date = request.getParameter("ci_date");
	String co_date = request.getParameter("co_date");
	String adult = request.getParameter("adult");
	String kids = request.getParameter("kids");
	String roomType = request.getParameter("roomType");
	String totalPrice = request.getParameter("totalPrice");
	
	/* 조식 인원 */
	String b_adult = request.getParameter("b_adult");
	String b_kids = request.getParameter("b_kids");
	
	/* 수영장 인원 */
	String p_adult = request.getParameter("p_adult");
	String p_kids = request.getParameter("p_kids");
	
	/* 사우나 인원 */
	String s_adult = request.getParameter("s_adult");
	String s_kids = request.getParameter("s_kids");
	
	/* 헬스장 인원 */
	String g_adult = request.getParameter("g_adult");
	String g_kids = request.getParameter("g_kids");
	
	//2. db 작업
	Date checkin = Date.valueOf(ci_date);
	Date checkout = Date.valueOf(co_date);
	
	reservVo.setGuestNo(Integer.parseInt(guestNo));
	reservVo.setRoomNo(roomNo);
	reservVo.setAdult(Integer.parseInt(adult));
	reservVo.setKids(Integer.parseInt(kids));
	reservVo.setCi_date(checkin);
	reservVo.setCo_date(checkout);
	reservVo.setTotalPrice(Integer.parseInt(totalPrice));
	
	String msg="예약에 실패했습니다.", url="reservation1.jsp";
	try{
		int cnt = reservService.insertReservation(reservVo);
		if(cnt>0){
			msg="예약되었습니다.";
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