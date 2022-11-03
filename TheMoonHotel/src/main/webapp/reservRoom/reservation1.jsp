<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<jsp:include page="../inc/top.jsp"></jsp:include>


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
.reserv1{
	border-top:2px solid black;
	box-shadow: 0 3px 6px -6px #666;
	margin-top:10px;
	text-align: center;
}
.reservList1{
	margin:5% auto;
	width:50%;
	text-align:center;
	border: 1px solid #e3e3e3;
	background-color:  #e3e3e3;
	font-size:larger;
}
#step1{
	width:33%;
	height: 80px;
	border: 1px solid white;
	background-color: black;
	color: white;
	font-weight:900;
}

#step2, #step3{
	width:33%;
	height: 80px;
	border: 1px solid black;
	color:black;
	background-color:white;
	font-weight:900;
}

input, select{
    height:20px;
    width:60%;
    border:none;
    text-align:center;
    font-size:large;
    font-weight:bold;
}
</style>

<div style="margin-top: 100px; margin-bottom: 500px;">
	<p style="font-size: 30px; text-align: center; font-weight: bold;">객실예약</p>

	<table class="reservList1" align="center" >
		<tr>
			<td id="step1">날짜,인원 선택</td>
			<td id="step2">객실 선택</td>
			<td id="step3">옵션 선택</td>
		</tr>
	</table>

	<div>
		<form name="reservForm" method="post" action="reservation2.jsp">
			<table class="reserv1" style="width: 80%;" align="center">
				<tr style="color: black; font-weight: bold;">
					<td>지점</td>
					<td>체크인</td>
					<td>체크아웃</td>
					<td style="width: 80px;">성인</td>
					<td style="width: 80px;">어린이</td>
				</tr>
				<tr>
					<td>
						<select>
							<option>1</option>
							<option>2</option>
							<option>3</option>
						</select>
					</td>
					<td><input type="date" name="ci_date"></td>
					<td><input type="date" name="co_date"></td>
					<td><input type="number" name="adult" min="1" value="1"></td>
					<td><input type="number" name="kids" min="0" value="0"></td>
					<td><input type="submit" value="검색" id="submitBtn"></td>
				</tr>
				<tr>
					<td colspan="6" >예약을 원하는 날짜,인원을 선택해주세요</td>
				</tr>
			</table>
		</form>
	</div>
</div>
<jsp:include page="../inc/footer.jsp"></jsp:include>