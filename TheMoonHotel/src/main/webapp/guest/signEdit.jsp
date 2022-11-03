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
<section class="content">
	<article>
			<div class="input-form col-md-12 mx-auto container input-form-backgroud row">
			<br><br><br>
				<form class="validation-form" novalidate>
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
					</div>
					<div class="mb-3">
						<label for="email">이메일</label>
						<input type="email" class="form-control" id="email" value="TheMoonHotel@naver.com" >
					</div>
					<div class="mb-3">
						<label for="address">주소</label>
						<input type="text" class="form-control" id="address" value="서울특별시 강남구" >
					</div>
					<div class="mb-3">
						<label for="address2">상세주소<span class="text-muted"></span></label>
						<input type="text" class="form-control" id="address2" value="상세주소를 호수까지 입력하세요.">
					</div>
					<div class="mb-4"></div>
					<button id="sub1" class="btn btn-primary btn-lg btn-block editChk" type="submit">회원정보수정</button>
				</form>
			</div>
	</article>
</section>
<jsp:include page="../inc/footer.jsp"></jsp:include>