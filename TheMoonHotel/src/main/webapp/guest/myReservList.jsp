<%@page import="com.moon.reservation.model.ReservationVO"%>
<%@page import="java.util.List"%>
<%@page import="com.moon.reservation.model.ReservationService"%>
<%@page import="java.sql.SQLException"%>
<%@page import="com.moon.guest.model.GuestVO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<jsp:include page="../inc/top.jsp"></jsp:include>
<jsp:useBean id="reservService"
	class="com.moon.reservation.model.ReservationService" scope="session"></jsp:useBean>
<jsp:useBean id="guestSerivce" class="com.moon.guest.model.GuestSerivce" scope="session"></jsp:useBean>
<jsp:useBean id="guestVO" class="com.moon.guest.model.GuestVO" scope="page"></jsp:useBean>
<jsp:useBean id="roomSerive" class="com.moon.room.model.RoomService" scope="session"></jsp:useBean>

<%
	String userid = (String)session.getAttribute("userid"); //로그인 정보
	
	GuestVO guestVo = guestSerivce.selectByUserid(userid);
	int guestNo = guestVo.getGuestNo();
	
	List<ReservationVO> rlist = null;
	try{
		rlist = reservService.selectAllReserv(guestNo);
		
	}catch(SQLException e){
		e.printStackTrace();
	}
%>
	
<div style="height: 800px;">
	<p style="font-size: 120%; text-align: center; margin-top:20px;">예약 내역</p>
	<div style="width: 800px; margin:auto; text-align: center">
		<form name="searMyReserv" method="post" action="myReservList_ok.jsp">
			<span style="margin: 0 10px 0 10px; font-weight: bold">투숙기간</span>
			<select class="form-select" style="width: 160px; display: inline;">
				<option>모든 예약 보기</option>
				<option>예약 완료</option>
				<option>예약 취소</option>
			</select>
			<input type="date" class="" name="startDate"> ~ <input type="date" name="endDate"> 
			<input type="submit" value="예약조회"> 
		</form>
	</div>
	<hr>
	<table class="table" style="width: 800px; margin:auto; text-align: center;">
	  <thead>
	    <tr>
	      <th>예약번호</th>
		  <th>객실타입</th>
		  <th>이용일자</th>
		  <th>이용상태</th>	
	    </tr>
	  </thead>
	  <tbody>
	  	<%if(rlist==null || rlist.isEmpty()){ %>
	  		<tr><td colspan="5" align="center">예약된 객실이 없습니다.</td></tr>
	  	<%}else{%>
	  		<%for(int i=0; i<rlist.size(); i++){
	  			ReservationVO reservVo = rlist.get(i); %>
		    <tr>
		      <td><a href="myReservDetail.jsp?reservNo="<%=reservVo.getReservNo()%>>
		      		<%=reservVo.getReservNo()%></a></td>
			  <td></td>
			  <td>2021년 09월 28일 - 2021년 09월 29일</td>
			  <td>이용 완료</td>	
		    </tr>
		    <%}//for
	  		}//if%>
	  </tbody>
</table>
</div>
<jsp:include page="../inc/footer.jsp"></jsp:include>