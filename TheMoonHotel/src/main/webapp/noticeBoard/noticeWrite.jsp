<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
<jsp:include page="../inc/top.jsp"></jsp:include>
<link rel="stylesheet" href="css/top.css">
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
<link
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.2/dist/css/bootstrap.min.css"
	rel="stylesheet"
	integrity="sha384-Zenh87qX5JnK2Jl0vWa8Ck2rdkQ2Bzep5IDxbcnCeuOxjzrPF/et3URy9Bv1WTRi"
	crossorigin="anonymous">
</head>
<style type="text/css">
#div1{
	width: 900px;
}
#formFile{
	width: 400px;
}
#btn1{
	clear: none;
	float: right;
}
</style>
<body>
<br><br><br>
<div id="div1" class="container text-left">
	<form>
		<fieldset>
			<legend>글 쓰기</legend>
			<div class="form-group">
				<label for="exampleSelect1" class="form-label mt-4">게시판 목록</label>
				<select class="form-select" id="selBoard">
					<option>공지사항</option>
				</select>
			</div>
			<div class="form-group">
				<label for="exampleInputEmail1" class="form-label mt-4"></label>
				<input type="email" class="form-control" id="title1"
					placeholder="제목을 입력하세요" >
			</div>
			<div class="form-group">
				<label for="exampleTextarea" class="form-label mt-4"></label>
				<textarea class="form-control" rows="6" placeholder="내용을 입력하세요"></textarea>
			</div>
			<div class="form-group">
				<label for="formFile" class="form-label mt-4">파일 첨부</label>
				<input class="form-control" type="file" id="formFile">
			</div>
			<button it="btn1" type="submit" class="btn btn-primary" style="float: right">작성</button>
		</fieldset>
	</form>
	</div>
</body>
<br><br><br>
<jsp:include page="../inc/footer.jsp"></jsp:include>
<link rel="stylesheet" href="css/footer.css">
</html>