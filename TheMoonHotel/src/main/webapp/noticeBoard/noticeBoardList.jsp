<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<jsp:include page="../inc/top.jsp"></jsp:include>
<link rel="stylesheet" href="css/top.css">
<!DOCTYPE html>
<html>
<head>
<meta name="viewport" content="width=device-width, initial-scale=1">
<meta charset="UTF-8">
<title>Insert title here</title>
<link
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.2/dist/css/bootstrap.min.css"
	rel="stylesheet"
	integrity="sha384-Zenh87qX5JnK2Jl0vWa8Ck2rdkQ2Bzep5IDxbcnCeuOxjzrPF/et3URy9Bv1WTRi"
	crossorigin="anonymous">
</head>
<style type="text/css">
#div1 {
	width: 800px;
}

#select1 {
	width: 100px;
	float: left;
}

#search {
	width: 400px;
	float: left;
}
</style>
<script type="text/javascript"src="../js/jquery-3.6.1.min.js"></script>
<script type="text/javascript">
	$(function(){
		$('#btn1').click(function(){
			location.href="noticeWrite.jsp";
		});	
	});
</script>
<body>
	<br>
	<br>
	<br>
	<div class="container text-center">
		<h2>공지사항 게시판</h2>
	</div>
	<br>
	<br>
	<br>
	<div id="div1" class="container text-center">
		<table class="table table-hover">
			<thead>
				<tr>
					<th scope="col">no</th>
					<th scope="col">제목</th>
					<th scope="col">작성자</th>
					<th scope="col">날짜</th>
					<th scope="col">조회수</th>
				</tr>
			</thead>
			<tbody>
				<tr>
					<th scope="row">1</th>
					<td><a href="detail.jsp" >뭘까영</a></td>
					<td>홍길동</td>
					<td>2022-11-02</td>
					<td>111</td>
				</tr>
			</tbody>
		</table>
		
		
			<div class="form-group">
				<label for="exampleSelect1" class="form-label mt-4"></label>
				<select	class="form-select" id="select1">
					<option>제목</option>
					<option>작성자</option>
					<option>작성일</option>
				</select>
				<input type="email" class="form-control" id="search" placeholder="검색하고자 하는 내용 입력"> 
			</div>
		<button id="btn1" type="button" class="btn btn-success" style="float: right">글쓰기</button>
		<br> <br> <br>
	</div>
	<script
		src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.2/dist/js/bootstrap.bundle.min.js"
		integrity="sha384-OERcA2EqjJCMA+/3y+gxIOqMEjwtxJY7qPCqsdltbNJuaOe923+mo//f6V8Qbsw3"
		crossorigin="anonymous"></script>
</body>
<jsp:include page="../inc/footer.jsp"></jsp:include>
<link rel="stylesheet" href="css/footer.css">
</html>