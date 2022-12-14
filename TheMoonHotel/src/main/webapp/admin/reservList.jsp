<%@page import="java.util.ArrayList"%>
<%@page import="java.text.DecimalFormat"%>
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
<style>
	p{
		font-size: 200%; 
		text-align: center; 
		margin-top:20px;
		font-weight: bold;	
	}
</style>
<jsp:useBean id="reservService" 
	class="com.moon.reservation.model.ReservationService" scope="session"></jsp:useBean>
<jsp:useBean id="roomService" 
	class="com.moon.room.model.RoomService" scope="session"></jsp:useBean>
<jsp:useBean id="guestService" class="com.moon.guest.model.GuestSerivce" scope="session"></jsp:useBean>
<jsp:useBean id="facService" class="com.moon.facility.model.FacilityService" scope="session"></jsp:useBean>
<jsp:useBean id="facVo" class="com.moon.facility.model.FacilityVO" scope="page"></jsp:useBean>
<%
	String userid = (String)session.getAttribute("userid");
	String condition = request.getParameter("searchCondition");
	String startDate = request.getParameter("startDate");
	String endDate = request.getParameter("endDate");
	
	List<ReservationVO> rlist=null;
	ReservationVO reservVo = new ReservationVO();
	RoomVO roomVo = new RoomVO();

	try{
		rlist = reservService.selectAllReserv();
		
		if(condition == null) condition = "all";
		
		if(startDate != null && endDate != null){
			rlist = reservService.selectAllReserv(startDate, endDate);
			
			if(condition != null){
				rlist = reservService.selectCondition(condition);
			}
		}else{
			rlist = reservService.selectCondition(condition);
		}
		
		
		
	}catch(SQLException e){
		e.printStackTrace();
	}

	Date today = new Date();
	SimpleDateFormat sdf = new SimpleDateFormat("yyyyMMdd");
	String now = sdf.format(today);
	int thisday = Integer.parseInt(now);
	
	DecimalFormat df = new DecimalFormat("#,###");
	
	//???????????????
	int currentPage = 1; //?????? ?????????
	
	if(request.getParameter("currentPage")!=null){
		currentPage=Integer.parseInt(request.getParameter("currentPage"));
	}
	
	//?????? ???????????? ????????? ?????????
	int totalRecord = 0;	//??? ????????? ???
	if(rlist!=null && !rlist.isEmpty()){
		totalRecord = rlist.size();
	}
	
	int pageSize = 15; 	//?????? ???????????? ????????? ????????? ??????
	int totalPage = (int)Math.ceil((float)totalRecord/pageSize); //??? ????????????
	int blockSize = 10;	//??? ????????? ????????? ????????? ???
	
	//?????? ???????????? ????????? ???????????? ?????????
	int firstPage = currentPage-((currentPage-1)%blockSize);
	// -> ????????? ???????????????
	
	int lastPage = firstPage+(blockSize-1);
	//????????? ????????? ?????????
	
	int curPos = (currentPage-1)*pageSize;	
	//???????????? ArrayList????????? ?????? index

	int num = totalRecord-curPos;	//???????????? ??? ????????? ?????? ??????
%>
<div style="height: 800px;">
	<p style="font-size: 120%; text-align: center; margin-top:100px;">?????? ?????? ??????</p>
	<div style="width: 800px; margin:auto; text-align: center">
		<form name="searReserv" method="post" action="reservList.jsp">
			<span style="margin: 0 10px 0 10px; font-weight: bold">????????????</span>
			<select class="form-select" name="searchCondition" value = 'condition' style="width: 160px; display: inline;">
				<option value="all"
				<%if("all".equals(condition)){ %>
					selected="selected"
           		<%} %>
				>?????? ?????? ??????</option>
				<option value="complete"
				<%if("complete".equals(condition)){ 
					%>
					selected="selected"
           		<%} %>
				>????????????</option>
				<option value="incomplete"
				<%if("incomplete".equals(condition)){ %>
					selected="selected"
           		<%} %>
				>????????????</option>
				<option value="ing"
				<%if("ing".equals(condition)){ 
				%>
					selected="selected"
           		<%} %>
				>?????????</option>
			</select>
			<input type="date" class="" name="startDate"> ~ <input type="date" name="endDate"> 
			<input type="submit" value="????????????" > 
		</form>
	</div>
	<hr>
	<table class="table" style="width: 800px; margin:auto; text-align: center;">
	  <thead>
	    <tr>
	      <th>????????????</th>
		  <th>????????????</th>
		  <th>????????????</th>
		  <th>????????????</th>
		  <th>??????</th>	
		  <th>????????????</th>
	    </tr>
	  </thead>
	  <tbody>
	  <%if(rlist == null && rlist.isEmpty()){ %>
	  	<tr><th colspan="4" rowspan="2">??????????????? ????????????.</th></tr>
	  <%}else{ %>
		  <%for(int i=0; i<pageSize; i++){ 
				if(num<1) break;
				
			  	reservVo = rlist.get(curPos++);
			  	num--;
			  	
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
				  <td align="right"><%=df.format(reservVo.getTotalPrice()) %></td>
			  	  <%if((datein-thisday)>0){ %>
				  <td value="incomplete">????????????</td>	
				  <%}else if((dateout-thisday)<0){ %>
				  <td value="complete">????????????</td>
				  <%}else{ %>
				  <td value="ing">?????????</td>
				<%}//if %>
			    </tr>
		   <%}//for 
		  }//if%>
	  </tbody>
</table>
<div align="center">
<%	
	//page ????????????
	//??? ???????????? 1??? ????????? ?????? ????????? ????????????
	if(firstPage>1){ %>
			<a href="reservList.jsp?currentPage=<%=firstPage-1%>&searchCondition=<%=condition%>">
				<img src="../images/first.JPG">
			</a>	
	<%	}	%>
	
	<%
		for(int i=firstPage;i<=lastPage;i++){
			if(i>totalPage) break;
			
			if(i==currentPage){%>
				<span style="font-weight: bold;font-size: 1em">
					<%=i %></span>
			<%}else{ %>
				<a href="reservList.jsp?currentPage=<%=i%>&searchCondition=<%=condition%>">
					[<%=i %>]</a>
			<%} %>
	<%	}	%>
	
	<!-- ?????? ???????????? ?????? -->
		<%if(lastPage < totalPage){  %>
		<a href="reservList.jsp?currentPage=<%=lastPage+1%>&searchCondition=<%=condition%>">
			<img src="../images/last.JPG">
		</a>
	<% }%> 
</div>
</div>
<jsp:include page="../inc/footer.jsp"></jsp:include>