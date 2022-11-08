<%@page import="com.moon.guest.model.GuestVO"%>
<%@page import="java.text.SimpleDateFormat"%>
<%@page import="java.util.Date"%>
<%@page import="com.moon.room.model.RoomVO"%>
<%@page import="com.moon.reservation.model.ReservationVO"%>
<%@page import="java.util.List"%>
<%@page import="java.sql.SQLException"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<jsp:include page="../inc/top.jsp"></jsp:include>
<jsp:useBean id="reservService" 
	class="com.moon.reservation.model.ReservationService" scope="session"></jsp:useBean>
<jsp:useBean id="roomService" 
	class="com.moon.room.model.RoomService" scope="session"></jsp:useBean>
<jsp:useBean id="guestService" class="com.moon.guest.model.GuestSerivce" scope="session"></jsp:useBean>
<jsp:useBean id="facService" class="com.moon.facility.model.FacilityService" scope="session"></jsp:useBean>
<jsp:useBean id="facVo" class="com.moon.facility.model.FacilityVO" scope="page"></jsp:useBean>
<%
	String userid = (String)session.getAttribute("userid");
	
	List<ReservationVO> rlist=null;
	ReservationVO reservVo = new ReservationVO();
	RoomVO roomVo = new RoomVO();
	try{
		rlist = reservService.selectAllReserv();
	}catch(SQLException e){
		e.printStackTrace();
	}

	Date today = new Date();
	SimpleDateFormat sdf = new SimpleDateFormat("yyyyMMdd");
	String now = sdf.format(today);
	int thisday = Integer.parseInt(now);
%>
<div style="height: 800px;">
	<p style="font-size: 120%; text-align: center; margin-top:20px;">고객 예약 조회</p>
	<div style="width: 800px; margin:auto; text-align: center">
		<form name="searReserv" method="post" action="reservList_ok.jsp">
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
		  <th>회원이름</th>
		  <th>호텔정보</th>
		  <th>이용일자</th>
		  <th>가격</th>	
		  <th>이용상태</th>
	    </tr>
	  </thead>
	  <tbody>
	  <%for(int i=0; i<rlist.size(); i++){ 
	  	reservVo = rlist.get(i);
	  	roomVo = roomService.selectRoomByRoomNo(reservVo.getRoomNo());
  		String checkout = reservVo.getCo_date();
  		checkout = checkout.replace("-", "");
  		int dateout = Integer.parseInt(checkout);
  		String checkin = reservVo.getCi_date();
  		checkin = checkin.replace("-","");
  		int datein = Integer.parseInt(checkin); 
  		GuestVO guestVo = guestService.selectByGuestNo(reservVo.getGuestNo());
  		%>
	    <tr>
	      <td><a href="reservDetail.jsp?reservNo=<%=reservVo.getReservNo()%>"><%=reservVo.getReservNo()%></a></td>
	      <td><%=guestVo.getName()%></td>
		  <td><%=roomVo.getLocName() %></td>
		  <td><%=reservVo.getCi_date()%> - <%=reservVo.getCo_date() %></td>
		  <td><%=reservVo.getTotalPrice() %></td>
		  	<%if((datein-thisday)>0){ %>
			  <td>이용예정</td>	
			<%}else if((dateout-thisday)<0){ %>
				 <td>이용완료</td>
			<%}else{ %>
				<td>투숙중</td>
			<%}//if %>
	    </tr>
	   <%}//for %>
	  </tbody>
</table>
</div>
<jsp:include page="../inc/footer.jsp"></jsp:include>