<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<jsp:include page="../inc/top.jsp"></jsp:include>
<link rel="stylesheet" type="text/css" href="../css/login.css">
<section class="loginBanner">
	<article>
		<div>
			<img alt="" src="../images/signEditBanner.png" >
		</div>
	</article>
</section>
<div class="container text-center loginTitle">
		<h1>회원정보수정</h1>
</div>
<section class="content" >
	<article>
			<div class="input-form container input-form-backgroud row" style=" margin: 0 auto; width:800px;">
			<br><br><br>
				<form class="validation-form container" novalidate>
					<div class="row">
						<div class="col-md-6 mb-3">
							<label for="name">이름</label>
							<input type="text" class="form-control" id="name" value="이름을 입력하세요." >
						</div>
						<div class="col-md-6 mb-3">
							<label for="nickname">ID</label>
							<input type="text" class="form-control" id="nickname" value="아이디를 입력하세요." >
						</div>
						<div class="col-md-6 mb-3">
							<label for="name">비밀번호</label>
							<input type="text" class="form-control" id="name" value="비밀번호를 입력하세요." >
						</div>
						<div class="col-md-6 mb-3">
							<label for="nickname">비밀번호 확인</label>
							<input type="text" class="form-control" id="nickname" value="비밀번호를 입력하세요." >
						</div>
						<p style="margin-bottom: 1px">이메일</p>
						<div class="input-group mb-3">
						  <input type="text" class="form-control" id="email1" aria-label="TheMoonHotel">
						  <span class="input-group-text">@</span>
						  <input type="text" class="form-control" id="email2" aria-label="naver.com">
						</div>
					</div>
					     	<label for="tel1">전화번호</label> <br>
					<div class="container " style="height: 30px">
					  <div class="row">
					    <div class="col" style="padding:0">
					      	<select class="form-select"
								aria-label="Default select example">
								<option value="010" selected>010</option>
								<option value="010">011</option>
								<option value="016">016</option>
								<option value="017">017</option>
								<option value="018">018</option>
								<option value="019">019</option>
							</select>
					    </div>
					    <div class="" style="padding:5px;text-align: center;width: 20px;">
					      -
					    </div>
					    <div class="col" style="padding:0">
					      <input type="text" class="form-control" style="width: auto%" id="tel2" value="">
					    </div>
					    <div class="" style="padding:5px;text-align: center;width: 20px;">
					      -
					    </div>
					    <div class="col" style="padding:0">
					      <input type="text" class="form-control" id="tel3" value="">
					    </div>
					  </div>
					</div>
					<br>
					<button id="sub1" class="btn btn-dark btn-block editChk"  type="submit">회원정보수정</button>
				</form>
			</div>
	</article>
</section>
<jsp:include page="../inc/footer.jsp"></jsp:include>