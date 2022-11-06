<%@page import="java.text.SimpleDateFormat"%>
<%@page import="com.moon.common.Utility"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<jsp:include page="../inc/top.jsp"></jsp:include>
<link rel="stylesheet" href="../css/reservCSS.css">

<style>
#step2{
	width:33%;
	height: 80px;
	border: 1px solid white;
	background-color: black;
	color: white;
	font-weight:900;
}

#step1, #step3{
	width:33%;
	height: 80px;
	border: 1px solid black;
	color:black;
	background-color:white;
	font-weight:900;
}

</style>
<%
	request.setCharacterEncoding("utf-8");

	//1. 파라미터 읽어오기
	String roomNo = request.getParameter("roomNo");
	String ci_date = request.getParameter("ci_date");
	String co_date = request.getParameter("co_date");
	String adult = request.getParameter("adult");
	String kids = request.getParameter("kids");
	
	//2. db 작업
	//3. 출력 처리
	long gapDate = Utility.calDate(ci_date, co_date);
	
%>
<div style="margin-top: 100px; height: 800px;">
	<p style="font-size: 30px; text-align: center; font-weight: bold;">객실예약</p>

	<table class="reservList1" align="center">
		<tr>
			<td id="step1">날짜,인원 선택</td>
			<td id="step2">객실 선택</td>
			<td id="step3">옵션 선택</td>
		</tr>
	</table>
	<form name="selectRoom" method="post" action="reservation3.jsp">
		<table width="80%" align="center" class="reserv1">
			<tr align="center" id="list1"
				style="color: #a0a0a0; font-weight: bold;">
				<td>지점</td>
				<td>체크인</td>
				<td>체크아웃</td>
				<td width="10%" align="center"><img src="../images/night.png"
					width="30" height="30"></td>
				<td width="10%">성인</td>
				<td width="10%">어린이</td>
			</tr>
			<tr align="center">
				<td><select name="roomNo">
						<option value="Full Moon" <%if(roomNo.equals("Full Moon")){ %>
							selected="selected" <%} %>>Full Moon</option>
						<option value="Half Moon" <%if(roomNo.equals("Half Moon")){ %>
							selected="selected" <%} %>>Half Moon</option>
						<option value="Crescent Moon"
							<%if(roomNo.equals("Crescent Moon")){ %> selected="selected"
							<%} %>>Crescent Moon</option>
				</select></td>
				<td><input type="text" name="ci_date" readonly
					value="<%=ci_date%>"></td>
				<td><input type="text" name="co_date" readonly
					value="<%=co_date%>"></td>
				<td><input type="text" name="dateGap" size="10"
					value="<%=gapDate %>" readonly="readonly" style="width: 100px"></td>
				<td><input type="text" name="adult" size="10"
					value="<%=adult%>" style="width: 100px"></td>
				<td><input type="text" name="kids" size="10" value="<%=kids%>"
					style="width: 100px"></td>
				<td><input type="button" id="submitBtn" value="다시 선택"></td>
			</tr>
		</table>
		<table align="center" > 
			<tr align="center" id="line" >
				<td width="30%" id="line">
				<img src="../images/dex.png" style="width: 300px; height: 200px"></td>
				<td id="line">
					<table style="width: 200px" >
						<tr>
							<th name="roomType">룸 타입: </th>
						</tr>
						<tr>
							<td>최대 수용 인원 : 2명</td>
						</tr>
					</table>
				</td>
				<td width="25%" name="roomPrice" id="line"><b> 240,000 원 (1박)</b></td>
				<td id="line"><input type="submit" id="submitBtn" value="예약하기"></td>
			</tr>
		</table>
	</form>
</div>


<jsp:include page="../inc/footer.jsp"></jsp:include>