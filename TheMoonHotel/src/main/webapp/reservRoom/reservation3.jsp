<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<jsp:include page="../inc/top.jsp"></jsp:include>
<link rel="stylesheet" href="reservation.css">
<style>
.reservList1{
	margin:5% auto;
	width:50%;
	text-align:center;
	border: 1px solid #e3e3e3;
	background-color:  #e3e3e3;
	font-size:larger;
}
.reserveOption{
	border-top:1px solid #e3e3e3;
	border-collapse:collapse;
	margin-top:5%;
	margin-bottom:5%;
	width:80%;
	height:600px;

}
#line{
    border-bottom:1px solid #e3e3e3;
    padding:20px;
}
input{
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
</style>
<div style="margin-top: 100px; margin-bottom: 800px;">
	<p style="font-size: 30px; text-align: center; font-weight: bold;">객실예약</p>

	<table class="reservList1" align="center">
		<tr>
			<td id="step1">날짜,인원 선택</td>
			<td id="step2">객실 선택</td>
			<td id="step3">옵션 선택</td>
		</tr>
	</table>
	<form name="confirmRoom" method="post" action="reservation_ok.jsp" >
		<table width="80%" align="center" class="reserveOption">
			<tr height="15%">
				<th colspan="4" align="center"><bold size="5">예약정보</bold></th>
			</tr>
			<tr id="line">
				<td align="center" id="line">
				<img src="" width="280" height="200"></td>
				<td colspan="3" id="line">
					<table width="100%">
						<tr align="left">
							<td>예약 객실 : <b>디럭스</b> 
								<input type="hidden" name="r_type" value="">
							</td>
							<td>체크인날짜 : <b>2022-10-04</b> 
								<input type="hidden" name="ci_date" value="">
							</td>
						</tr>
						<tr align="left">
							<td>체크아웃 날짜 : <b>2022-10-05</b> 
								<input type="hidden" name="co_date" value="">
							</td>
							<td>성인 투숙객 수 : <b>1</b>명 
								<input type="hidden" name="adult" value="">
							</td>
						</tr>
						<tr align="left">
							<td>아동 투숙객 수 : <b>1</b>명 
							<input type="hidden" name="kids" value="">
							</td>
							<td>총 금액 :
								<input type="number" name="price" id="input" readonly="readonly" value="" >원 
								<input type="hidden" name="price" value="">
							</td>
						</tr>
					</table>
				</td>
			</tr>
			<tr>
				<td colspan="4" align="center" style="font-weight: bold;"
					height="15%"><font size="5">옵션선택</font></td>
			</tr>
			<tr id="line">
				<td colspan="4" align="center" id="line">조식 인원 수 (1인당 20,000원) : 
				<input type="number" style="background-color: #e7eaed; text-align: center;"
					name="breakfast" id="input" size="5" min="0" max=''><br><br> 
					<input type="button" id="submitBtn" value=" 옵션 확인"><br><br><br><br><br><br> 
					<input type="submit" id="submitBtn" value="예약하기">
				</td>
			</tr>
		</table>
	</form>
</div>

<jsp:include page="../inc/footer.jsp"></jsp:include>