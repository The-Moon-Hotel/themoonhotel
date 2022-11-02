<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<jsp:include page="../inc/top.jsp"></jsp:include>

<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-Zenh87qX5JnK2Jl0vWa8Ck2rdkQ2Bzep5IDxbcnCeuOxjzrPF/et3URy9Bv1WTRi" crossorigin="anonymous">
<link rel="stylesheet" type="text/css" href="../css/adminPage.css" />

<p style="font-size: 120%; 
	text-align: center; margin-top:20px;" >회원 상세 정보</p>

<table class="table" style="width: 800px; margin:auto;">
  <thead>
    <tr>
      <th scope="col">회원번호</th>
      <th scope="col">First</th>
      <th scope="col">Last</th>
      <th scope="col">Handle</th>
    </tr>
  </thead>
  <tbody>
    <tr>
      <th scope="row">1</th>
      <td>Mark</td>
      <td>Otto</td>
      <td>@mdo</td>
    </tr>
    <tr>
      <th scope="row">2</th>
      <td>Jacob</td>
      <td>Thornton</td>
      <td>@fat</td>
    </tr>
  </tbody>
</table>
<!-- <div class="guestDetail">
	<p style="font-size: 120%; text-align: center; margin-top:20px;" >회원 상세 정보</p>
	<div class="divForm">
		<div class="firstDiv">
			<span class="sp1">회원번호</span> <span>0001</span>
		</div>
		<div>
			<span class="sp1">이름</span> <span>홍길동</span>
		</div>
		<div>
			<span class="sp1">아이디</span> <span>hong1234</span>
		</div>
		<div>
			<span class="sp1">이메일</span> <span>honghong@naver.com	</span>
		</div>
		<div>
			<span class="sp1">전화번호</span> <span>010-1234-1004	</span>
		</div>
		<div>
			<span class="sp1">가입날짜</span> <span>2022-11-01</span>
		</div>
		<div class="center">
	        <a href='guestDelete.jsp'>삭제</a> |    	
	        <a href='guestList.jsp'>회원 목록</a>
		</div>
	</div>
</div> -->
<jsp:include page="../inc/footer.jsp"></jsp:include>