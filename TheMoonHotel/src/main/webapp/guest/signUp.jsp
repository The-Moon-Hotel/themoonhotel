<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
<jsp:include page="../inc/top.jsp"></jsp:include>
<style type="text/css">
#sub1 {
	float: right;
	width: 300px;
}
h3{
	font-weight: bold;
}
</style>
<script type="text/javascript" src="../js/jquery-3.6.1.min.js"></script>
<script type="text/javascript" src="../js/member.js"></script>
<script type="text/javascript">
$(function(){
	$('#name').focus();
	
	$('#sub1').click(function(){
		if(!$('#chkAgree').is(':checked')){
			alert("약관에 동의해야합니다.");
			$('#chkAgree').focus();
			event.preventDefault()
		}else if($('#name').val().length<1){
			alert('이름을 입력하세요');
			$('#name').focus();
			event.preventDefault();
		}else if(!validate_userid($('#userid').val())){
			alert('아이디는 영문, 숫자, _(밑줄문자)만 가능합니다.');
			$('#userid').focus();
			event.preventDefault();			
		}else if($('#pwd').val().length<1){
			alert('비밀번호를 입력하세요');
			$('#pwd').focus();
			event.preventDefault();
		}else if($('#pwd').val()!=$('#pwd2').val()){
			alert('비밀번호가 일치하지 않습니다.');
			$('#pwd2').focus();
			event.preventDefault();
		}else if(!validate_phone($('#tel').val())){
			alert('전화번호는 숫자와 '-'만 가능합니다.');
			$('#hp2').focus();
			event.preventDefault();
		}else if($('#chkId').val()!='Y'){
			alert('아이디 중복확인을 하세요');
			$('#btnChkId').focus();
			event.preventDefault();
		}else if(!$('#aggrement').is(':checked')){
			alert("개인정보 수집 및 이용에 동의해야합니다.");
			$('#aggrement').focus();
			event.preventDefault()
		}
	});
 });
 function validate_userid(var){
	 userid
 }
 
</script>
<form class="validation-form" novalidate action="signUp_ok.jsp">
	<div class="container" style="width: 800px; margin-top: 100px;">
		<div class="row input-form-backgroud ">
				<h3 class="mb-3 text-center">회원가입을 환영합니다.</h3>
				<hr>
				<iframe src="provision.html" width="100%" height="300px"></iframe>
					<div class="custom-control custom-checkbox" style="text-align: right">
						<input type="checkbox" class="custom-control-input" name="chkAgree" id="chkAgree">
						<label for="chkAgree" class="custom-control-label "style="margin: 5px">약관에 동의합니다.</label>
					</div>
					<hr>
					<br>
					<div class="col col-md-6 mb-3">
						<label for="name">이름</label> <input type="text"
							class="form-control" id="name" name="name" placeholder="이름을 입력하세요." required>
					</div>
					<div class="col-md-6 mb-3">
						<label for="id" style="display: block;">ID</label> <input type="text" style="display: inline-block;width: 264px" class="form-control"
							id="userid"  name="userid" placeholder="아이디를 입력하세요." required>
						<button type="button" class="btn btn-secondary" id="btnChkId">ID중복확인</button>
					</div>
					<div class="col-md-6 mb-3">
						<label for="pwd">비밀번호</label> <input type="text"
							class="form-control" id="pwd" name="pwd" placeholder="비밀번호를 입력하세요." required>
					</div>
					<div class="col-md-6 mb-3">
						<label for="pwd2">비밀번호 확인</label> <input type="text"
							class="form-control" id="pwd2" placeholder="비밀번호를 확인하세요." required>
						<div class="invalid-feedback"></div>
					</div>
					<div class="mb-3">
						<label for="email">이메일</label> <input type="email"
							class="form-control" id="email" name="email"
							placeholder="ex)TheMoonHotel@naver.com" required>
						<div class="invalid-feedback">이메일을 입력해주세요.</div>
					</div>
					<div class="col-md-6 mb-3">
						<label for="tel">전화번호</label> <input type="text"
							class="form-control" id="tel" name="tel"
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
			</div>
		</div>
		<br> <br> <br>
		<p class="mb-1 text-center" style="font-weight: bold">WECOME! THE
			MOON HOTEL</p>
	
</form>
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