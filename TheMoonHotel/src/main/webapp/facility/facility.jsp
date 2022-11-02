<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<jsp:include page="../inc/top.jsp"></jsp:include>
<link rel="stylesheet" href="../index.css">
<style>
	.faci{
		align-content: center;
		position: relative;
		width: 1500px;
		margin-left: 500px;
		margin-top: 50px;
	}
	
	.swim img{
		text-align: center;
	}
	
	.title{
		font-size: 20px;
	}
	
	.conten{
		color: #ABABAB;
		font-weight: bold;
	}
</style>

<section class = "faci">
	<div class="swim">
		<h3><b>아름다운 자연 안에서 즐기는 아늑한 휴식</b></h3><br>
		<p>끝없이 펼쳐지는 바다를 바라보며 즐기는 여유로운 수영과 가벼운 칵테일 한잔.<br>
		생기 넘치는 하루를 만드는 피트니스에서의 활기찬 시작과, 사우나에서 보내는 재충전의 시간을 선사합니다</p>
		<br><br>

		<p class="title"><b>야외수영장</b></p>
		<img src="../images/swimmingpool.png">
		<p>
			<b>따라로운 햇살 아래 여유로운 휴식</b>
		</p>
		<p class="conten">끝없이 펼쳐지는 수평선을 바라보며 프라이빗하고 여유로운 휴식을 즐기실 수 있습니다.</p>

		<br><br>
		<hr><br>
	</div>
	
	<div>
		<span class="title">
			<b>테라피 가든</b>
			<b style="margin-left: 450px">카바나</b>
		</span><br><br>
		<img src = "../images/t_p.png">
		<br>
		<span class="conten">대나무숲 그늘 아래 편안한 휴식</span>
		<span style="margin-left: 325px" class="conten">소중한 사람들과 함께하는 오붓한 시간</span><br>

		
		<br><br>
		<hr><br>
	</div>
	
	<div>
		<span class="title">
			<b>사우나</b>
			<b style="margin-left: 510px">실내 체육관</b>
		</span><br><br>
		<img src = "../images/sau.png">
		<br>
		<span class="conten">편안함과 피로해소를 위한 실내 사우나</span>
		<span style="margin-left: 280px" class="conten">최상의 건강과 체계적인 체력관리를 위한 특별한 공간</span><br>

		
		<br><br>
		<hr><br>
	</div>	
	
	<div class="swim">
		<p class="title">
			<b>모노그램 라운지</b>
		</p>
		<img src="../images/loun.png">
		<p class="conten">다양한 로컬 문화를 경험할 수 있는 라이프스타일 라운지</p>


		<br><br>
		<hr><br>
	</div>	
</section>

<jsp:include page="../inc/footer.jsp" ></jsp:include>