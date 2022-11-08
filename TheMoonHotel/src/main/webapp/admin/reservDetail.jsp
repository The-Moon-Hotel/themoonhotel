<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<jsp:include page="../inc/top.jsp"></jsp:include>

<link
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.2/dist/css/bootstrap.min.css"
	rel="stylesheet"
	integrity="sha384-Zenh87qX5JnK2Jl0vWa8Ck2rdkQ2Bzep5IDxbcnCeuOxjzrPF/et3URy9Bv1WTRi"
	crossorigin="anonymous">

<style>
	p{
		font-size: 120%; 
		text-align: center; 
		margin-top:20px;
	}
	
	#reservList{
		margin-top: 20px;
		display: inline-block;
	}
</style>

<div style="height: 800px;">
	<p>예약 세부 내역</p>
	<div>
	<div style="width: 800px; margin: auto;">
		<ul class="list-group" style="float:left; width: 35%; text-align: right;">
		  <li class="list-group-item">예약번호</li>
		  <li class="list-group-item">이름</li>
		  <li class="list-group-item">회원번호</li>
		  <li class="list-group-item">아이디</li>
		  <li class="list-group-item">이메일</li>
		  <li class="list-group-item">전화번호</li>
		  <li class="list-group-item">예약날짜</li>
		  <li class="list-group-item">지점정보</li>
		  <li class="list-group-item">객실타입</li>
		  <li class="list-group-item">이용객 수</li>
		  <li class="list-group-item">가격</li>
		</ul>
		<ul class="list-group" style="float:left; width: 65%">
		  <li class="list-group-item">10336951</li>
		  <li class="list-group-item">홍길동</li>
		  <li class="list-group-item">0011</li>
		  <li class="list-group-item">hong1004</li>
		  <li class="list-group-item">hong@naver.com</li>
		  <li class="list-group-item">010-1234-1234</li>
		  <li class="list-group-item">2021년 09월 28일 - 2021년 09월 29일</li>
		  <li class="list-group-item">더문호텔 1호점</li>
		  <li class="list-group-item">디럭스</li>
		  <li class="list-group-item">성인2</li>
		  <li class="list-group-item">240,000</li>
		</ul>
	</div>
	</div>
	<div style="display: inline-block;">
		<a class="btn btn-secondary" role="button" id="reservList"
			 href="reservList.jsp">예약 목록</a>
	</div>
</div>
<jsp:include page="../inc/footer.jsp"></jsp:include>