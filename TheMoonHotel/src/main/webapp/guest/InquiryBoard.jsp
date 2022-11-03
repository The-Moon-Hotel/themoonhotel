<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<jsp:include page="../inc/top.jsp"></jsp:include>

<link
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.2/dist/css/bootstrap.min.css"
	rel="stylesheet"
	integrity="sha384-Zenh87qX5JnK2Jl0vWa8Ck2rdkQ2Bzep5IDxbcnCeuOxjzrPF/et3URy9Bv1WTRi"
	crossorigin="anonymous">
<div style="height: 800px;">
	<p style="font-size: 120%; text-align: center; margin-top:20px;">나의 문의내역</p>

	<hr>
	<table class="table" style="width: 800px; margin:auto; text-align: center;">
	  <thead>
	    <tr>
	      <th>번호</th>
		  <th>아이디</th>
		  <th>제목</th>
		  <th>등록날짜</th>	
	    </tr>
	  </thead>
	  <tbody>
	    <tr>
	      <td>1</td>
		  <td>hong</td>
		  <td><a href="#">호텔 이용</a></td>
		  <td>2022.10.10</td>	
	    </tr>
	  </tbody>
</table>
</div>
<jsp:include page="../inc/footer.jsp"></jsp:include>