<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<jsp:include page="../inc/top.jsp"></jsp:include>
<link rel="stylesheet" type="text/css" href="../css/login.css">
<section class="loginBanner">
	<article>
		<div>
			<img alt="" src="../images/greetings_banner.png" >
		</div>
	</article>
</section>
<div class="container text-center loginTitle">
		<h1>Login</h1>
</div>
<section class="content container "style="width: 400px">
	<article>
		<form action="" class="container text-center">
			<fieldset >
				<legend>Login</legend>
				<div class="input-group mb-3">
				  <span class="input-group-text" id="inputGroup-sizing-default">&nbsp;&nbsp;&nbsp;&nbsp;I&nbsp;D&nbsp;&nbsp;&nbsp;&nbsp;</span>
				  <input type="text" class="form-control" aria-label="Sizing example input" aria-describedby="inputGroup-sizing-default">
				</div>
				<div class="input-group mb-3">
				  <span class="input-group-text" id="inputGroup-sizing-default">비밀번호</span>
				  <input type="password" class="form-control" aria-label="Sizing example input" aria-describedby="inputGroup-sizing-default">
				</div>
				<div class="d-grid mx-auto loginBtn" >
			    	<button type="button" class="btn btn-primary">로그인</button>
			    </div>
			    <div class="form-check text-right loginChk">
				  <input class="form-check-input" type="checkbox" value="" id="flexCheckDefault">
				  <label class="form-check-label" for="flexCheckDefault">
				    아이디 기억하기
				  </label>
				</div>
			</fieldset>
		</form>
	</article>
</section>
<jsp:include page="../inc/footer.jsp"></jsp:include>