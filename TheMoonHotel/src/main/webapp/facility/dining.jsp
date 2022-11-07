<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<jsp:include page="../inc/top.jsp"></jsp:include>
<link rel="stylesheet" href="../css/facility.css">
 <link rel="stylesheet" href="../css/fac_Detail.css">


<style>
	table{
		width: 500px; 
		height: 90px;
		text-align: center;
	}
</style>
<section class = "faci">
	<span>
		<a href="<%=request.getContextPath() %>/facility/facility.jsp">
			<input type="button" value="부대시설">
		</a>
		<a href="<%=request.getContextPath() %>/facility/dining.jsp">
			<input type="button" value="다이닝">	
		</a>
	</span>
	<br><br>
	
	<div class="swim">
		<h3 class="title"><b>다이닝 M</b></h3>
		<img src="../images/dining.png">
		
		<h2 style="color:#C1B197">자연을 담은 모던한 감각의 올 데이 다이닝 레스토랑</h2>
		<p> 신선한 식재료를 이용하여 셰프들이 즉석에서 조리한 음식을 맛볼 수 있는 올 데이 다이닝 레스토랑입니다.<br>
				현대적인 감각의 인테리어와 다채로운 미각의 세계를 선보입니다. </p>
		<br>
		<pre><span>위치 </span> 본관 B1층  |  <span>좌석수 </span> 244석  |  <span>예약 및 문의 </span> 02-333-2210</pre>
		<br>
		<p>이용 시간 및 요금 안내
		<br>
		<table border='1'> 
			<tr style="font-weight: bold">
				<td>조식</td>
				<td>06:30 ~ 10:30</td>
				<td>35,000</td>
			</tr>
			<tr style="font-weight: bold">
				<td>중식(A la carte)</td>
				<td>11:00 ~ 14:00</td>
				<td>50,000</td>
			</tr>
			<tr style="font-weight: bold">
				<td>석식(A la carte)</td>
				<td>17:00 ~ 22:00</td>
				<td>70,000</td>
			</tr>
		</table>
		<p>※특정 일자에는 운영 시간이 변동될 수 있습니다.
		<hr><br>
	</div>
	
	<div>
		<span class="title">
			<b>비스트로 M</b>
		</span><br><br>
		<img src = "../images/bar.png">
		<br>
		<h2 style="color:#C1B197">시원한 전망이 펼쳐지는 캐주얼 레스토랑</h2>
		<p> 가벼운 음식 그리고 시원한 맥주와 칵테일, 와인을 즐기며 여유롭고 즐거운 시간을 보낼 수 있습니다.</p>
		<br>
		<pre><span>위치 </span> 레지던스 1층  |  <span>운영시간 </span> 11:00~22:00  |  <span>예약 및 문의 </span> 02-333-2217  |  <span>좌석수 </span> 총 96석 </pre>
		<br>
		
		<br><br>
		<hr><br>
	</div>

</section>

<div style="height: 100px"></div>
<jsp:include page="../inc/footer.jsp" ></jsp:include>