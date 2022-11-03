<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<jsp:include page="../inc/top.jsp"></jsp:include>
<link rel="stylesheet" href="reservation.css">

<style>
#submitBtn {
	margin-top: 15px;
	margin-bottom: 15px;
	background-color: black;
	width: 120px;
	height: 50px;
	border: none;
	font-size: medium;
	color: white;
}
td{
	text-align: center;
}
#step1{
	width:33%;
	height: 80px;
	border: 1px solid #e3e3e3;
	background-color:#876f55;
	color:#ffffff;
	font-weight:900;
}

input{
    height:20px;
    width:60%;
    border:none;
    text-align:center;
    font-size:large;
    font-weight:bold;
}
</style>

<div style="margin-top: 100px;">
	<p style="font-size: 30px; text-align: center; font-weight: bold;">객실예약</p>
	
	<table class="reservList1" align="center">
		<tr>
			<td id="step1">날짜,인원 선택</td>
			<td id="step2">객실 선택</td>
			<td id="step3">옵션 선택</td>
		</tr>
	</table>
</div>
<div>
	<form name="reservForm" method="post" action="reservation_ok.jsp">
		<table class="reserv1" style="width:80%;" align="center" >
			<tr style="color: black; font-weight: bold;">
				<td>체크인</td>
				<td>체크아웃</td>
				<td style="width: 80px;">성인</td>
				<td style="width: 80px;">어린이</td>
			</tr>
			<tr>
				<td><input type="date" name="ci_date"></td>
				<td><input type="date" name="co_date"></td>
				<td><input type="number" name="adult" min="1" value="1"></td>
				<td><input type="number" name="kids"  min="0" value="0"></td>
				<td><input type="submit" value="검색" id="submitBtn"
					onclick="reservCheck.jsp"></td>
			</tr>
			<tr align="center">
				<td colspan="5">예약을 원하는 날짜,인원을 선택해주세요</td>
			</tr>
		</table>
	</form>
</div>
<jsp:include page="../inc/footer.jsp"></jsp:include>