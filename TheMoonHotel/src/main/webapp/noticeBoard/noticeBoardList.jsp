<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<jsp:include page="../inc/top.jsp"></jsp:include>

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
<div style="height: 800px;">
	<div class="container text-center" style="margin-top: 100px;">
		<h2>공지사항</h2>
	</div>
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
		<button id="btn1" type="button" class="btn btn-dark" style="float: right">글쓰기</button>
		<br> <br> <br>
	</div>
</div>s
<jsp:include page="../inc/footer.jsp"></jsp:include>
