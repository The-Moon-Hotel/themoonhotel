<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<jsp:include page="../inc/top.jsp"></jsp:include>
<link rel="stylesheet" href="reservation.css">

<style>
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
input, select{
    height:20px;
    width:60%;
    border:none;
    text-align:center;
    font-size:large;
    font-weight:bold;
}
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
.reservResult{
	border-top:1px solid #e3e3e3;
	border-collapse:collapse;
	padding:1%;
	margin-bottom:80px;
}
</style>
<div style="margin-top: 100px; margin-bottom: 800px;">
	<p style="font-size: 30px; text-align: center; font-weight: bold;">객실예약</p>

	<table class="reservList1" align="center" >
		<tr>
			<td id="step1">날짜,인원 선택</td>
			<td id="step2">객실 선택</td>
			<td id="step3">옵션 선택</td>
		</tr>
	</table>
	<form name="selectRoom" method="get" action="reservation3.jsp" >
			<table width="80%" align="center" class="reserv1">
				<tr align="center" id="list1" style="color:#a0a0a0; font-weight:bold;">
					<td>지점</td>
					<td>체크인</td>
					<td>체크아웃</td>
					<td width="10%" align="center">
						<img src="../images/night.png" width="30" height="30">
					</td>
					<td width="10%">성인</td>
					<td width="10%">어린이</td>
				</tr>
				<tr align="center">
					<td>
						<select>
							<option>1</option>
							<option>2</option>
							<option>3</option>
						</select>
					</td>
					<td><input type="date" name="ci_date" min="" value=""></td>
					<td><input type="date" name="co_date" value=""></td>
					<td><input type="number" name="diffday" size="10" 
						value="<!-- ci_date-co_date -->" readonly="readonly"></td>
					<td><input type="number" name="adult" size="10" min="1" value=""></td>
					<td>
						<input type="number" name="kids" size="10" min="0" value="">
					</td>
					<td><input type="submit" id="submitBtn" value="검색"></td>
				</tr>
		</table>
	</form>
	<!-- <table width="80%" align="center" class="reservResult">
			<tr align="center" id="line">
				<td width="30%" id="line">
				<img src="../images/roomimg2.png" width="280" height="200"></td>
				<td width="30%" id="line">
					<table>
						<tr align="center">
							<th>룸 타입: </th>
						</tr>
						<tr align="left">
							<td>객실크기 : </td>
						</tr>
						<tr align="left">
							<td>최대 수용 인원 : 2명</td>
						</tr>
					</table>
				</td>
				<td width="25%" id="line"><b> 240,000 원 (1박)</b></td>
				<td id="line"><input type="button" id="btn2" value="예약하기"
					onclick="location.href='reservation3.jsp"></td>
					파라미터 넘겨주기 날짜, 사람, 객실, 지점
			</tr>
	</table> -->
</div>


<jsp:include page="../inc/footer.jsp"></jsp:include>