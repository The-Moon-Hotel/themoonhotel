<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<jsp:include page="../inc/top.jsp"></jsp:include>
<link rel="preconnect" href="https://fonts.googleapis.com">
<link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
<link href="https://fonts.googleapis.com/css2?family=Do+Hyeon&display=swap" rel="stylesheet">
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
	legend{
		font-family: 'Do Hyeon', sans-serif;
	}
</style>	
<div style="height: 800px; margin-top: 150px; text-align: center;">
<section>
	<article>
			<div>
				<img style="width: 350px" alt="logo" src="../images/logotext.png" >
			</div>
	</article>
</section>
<!-- <p style="font-size: 1.5rem; text-align: center; margin-top: 20px;">Welcome to The Moon Hotel</p> -->
<br>
<article class="singleForm">
	<form name="frmGuestOut" method="post" action="guest_ok.jsp">
	<fieldset>
		<legend>누구누구 님 탈퇴하시겠습니까?</legend>
		<div style="display:table; width: 400px; margin: auto;">
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
			<div class="btn-group" role="group">
				<button type="submit" class="btn btn-dark btn-block" style="width: 400px;">회원탈퇴</button>
			</div>
		</div>
	</fieldset>
	</form>
</article>
</div>
<br>
<br>
<jsp:include page="../inc/footer.jsp"></jsp:include>