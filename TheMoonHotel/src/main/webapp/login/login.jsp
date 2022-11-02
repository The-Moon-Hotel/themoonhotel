<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<jsp:include page="../inc/top.jsp"></jsp:include>
<link rel="stylesheet" href="css/top.css">
<link
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.2/dist/css/bootstrap.min.css"
	rel="stylesheet"
	integrity="sha384-Zenh87qX5JnK2Jl0vWa8Ck2rdkQ2Bzep5IDxbcnCeuOxjzrPF/et3URy9Bv1WTRi"
	crossorigin="anonymous">

<style>
	.btn-group{
		display: table;
		width: 45%;
		margin: auto;
		text-align: center;
	}
	.input-group-text{
		width: 114px;
		text-align: center;
	}
</style>	
<div style="height: 800px;">
<p style="font-size: 120%; text-align: center; margin-top: 20px;">로그인</p>

<article class="singleForm">
	<form name="frmLogin" method="post" action="login_ok.jsp">
		<div style="display:table; width: 400px; margin: auto;">
			<div class="input-group mb-3">
				<span class="input-group-text">ID</span>
 				<div class="form-floating">
				    <input type="text" class="form-control" id="userid" 
				    placeholder="userid" name="userid" >
	   				<label for="userid">아이디를 입력하세요</label>
 				 </div>
			</div>
	
			<div class="input-group mb-3">
				<span class="input-group-text">PASSWORD</span>
 				<div class="form-floating">
				    <input type="text" class="form-control" id="pwd" 
				    placeholder="pwd" name="pwd">
	   				<label for="pwd">비밀번호를 입력하세요</label>
 				 </div>
			</div>
		</div>
		<div style="display:table; width: 400px; margin: auto;">
			<div style="text-align: right;">
				<input class="form-check-input mt-0" type="checkbox" name="chkSave" value=""> 
				<label for="chkSave">아이디 저장하기</label>	
			</div><br>
			<div class="btn-group" role="group">
				<button type="submit" class="btn btn-outline-secondary">로그인</button>
				<button type="button" class="btn btn-outline-secondary">회원가입</button>
			</div>
		</div>
	</form>
</article>
</div>
<br>
<br>

<jsp:include page="../inc/footer.jsp"></jsp:include>
<link rel="stylesheet" href="css/footer.css">
</html>