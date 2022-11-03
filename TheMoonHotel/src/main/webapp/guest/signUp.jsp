<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
<jsp:include page="../inc/top.jsp"></jsp:include>
<link
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.2/dist/css/bootstrap.min.css"
	rel="stylesheet"
	integrity="sha384-Zenh87qX5JnK2Jl0vWa8Ck2rdkQ2Bzep5IDxbcnCeuOxjzrPF/et3URy9Bv1WTRi"
	crossorigin="anonymous">

<style type="text/css">
#sub1 {
	float: right;
	width: 300px;
}
</style>
<div class="container" style="width: 800px;">
	<div class="input-form-backgroud row">
		<div class="input-form col-md-12 mx-auto">
			<br> <br> <br>
			<h4 class="mb-3">회원가입을 환영합니다.</h4>
			<form class="validation-form" novalidate>
				<div class="col-md-6 mb-3">
					<label for="name">이름</label> <input type="text"
						class="form-control" id="name" placeholder="이름을 입력하세요." required>
				</div>
				<div class="col-md-6 mb-3">
					<label for="id">ID</label> <input type="text" class="form-control"
						id="id" placeholder="아이디를 입력하세요." required>
				</div>
				<button type="button" class="btn btn-secondary">ID중복확인</button>
				<div class="col-md-6 mb-3">
					<label for="pwd">비밀번호</label> <input type="text"
						class="form-control" id="pwd" placeholder="비밀번호를 입력하세요." required>
				</div>
				<div class="col-md-6 mb-3">
					<label for="pwd2">비밀번호 확인</label> <input type="text"
						class="form-control" id="pwd2" placeholder="비밀번호를 확인하세요." required>
					<div class="invalid-feedback"></div>
				</div>
				<div class="mb-3">
					<label for="email">이메일</label> <input type="email"
						class="form-control" id="email"
						placeholder="ex)TheMoonHotel@naver.com" required>
					<div class="invalid-feedback">이메일을 입력해주세요.</div>
				</div>
				<div class="col-md-6 mb-3">
					<label for="tel">전화번호</label> <input type="text"
						class="form-control" id="tel"
						placeholder="ex)010-0000-0000 '-' 포함해서 작성" required>
					<div class="invalid-feedback"></div>
				</div>
				<hr class="mb-4">
				<div class="custom-control custom-checkbox">
					<input type="checkbox" class="custom-control-input" id="aggrement"
						required> <label class="custom-control-label"
						for="aggrement">개인정보 수집 및 이용에 동의합니다.</label>
				</div>
				<div class="mb-4">
					<button id="sub1" class="btn btn-dark btn-lg btn-block"
						type="submit">가입완료</button>
				</div>
			</form>
		</div>
	</div>
	<br> <br> <br>
	<p class="mb-1 text-center" style="font-weight: bold">WECOME! THE
		MOON HOTEL</p>
</div>
<!-- 	<script>
    window.addEventListener('load', () => {
      const forms = document.getElementsByClassName('validation-form');

      Array.prototype.filter.call(forms, (form) => {
        form.addEventListener('submit', function (event) {
          if (form.checkValidity() === false) {
            event.preventDefault();
            event.stopPropagation();
          }

          form.classList.add('was-validated');
        }, false);
      });
    }, false);
  </script> -->
</body>
<br>
<br>
<br>
<jsp:include page="../inc/footer.jsp"></jsp:include>
<link rel="stylesheet" href="css/footer.css">
</html>