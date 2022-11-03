<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<jsp:include page="../inc/top.jsp"></jsp:include>
<link href="../css/jquery-ui.min.css" rel="stylesheet" type="text/css">
<link rel="stylesheet" type="text/css" href="../css/reservation.css">
<script type="text/javascript"src="../js/jquery-3.6.1.min.js"></script>
<script type="text/javascript"src="../js/jquery-ui.min.js"></script>
<script type="text/javascript">
	$(function(){
		$('#datepickerIn').datepicker({
			dateFormat:'yy-mm-dd',
			changeYear:true,
			dayNamesMin:['일','월','화','수','목','금','토'],
			monthNames:['1월','2월','3월','4월','5월','6월','7월','8월',
				'9월','10월','11월','12월']
		});
		
		$('button').click(function(){
			var curDate = $('#datepickerIn').datepicker('getDate');
			alert(curDate);
		});
		$('#datepickerOut').datepicker({
			dateFormat:'yy-mm-dd',
			changeYear:true,
			dayNamesMin:['일','월','화','수','목','금','토'],
			monthNames:['1월','2월','3월','4월','5월','6월','7월','8월',
				'9월','10월','11월','12월']
		});
		
		$('button').click(function(){
			var curDate = $('#datepickerOut').datepicker('getDate');
			alert(curDate);
		});
	});
</script>
<section class="reservBanner">
	<article>
		<div>
		  <img src="../images/resevBanner.png" class="" alt="...">
		</div>
	</article>
</section>
		<div class="container text-center reservTitle">
			<h1>예약하기</h1>
		</div>
<section class="reservSize">
	<article>
		<div class="container text-left ">		
			<form action="">
				<fieldset>
					<div class="row">
					    <div class="col col-md-4 col-sm-12 col-xs-12">
					    	호텔<select class="form-select form-select-sm mb-3"
								aria-label=".form-select-lg example">
								<option selected>호텔을 입력하세요</option>
								<option value="1">Full Moon</option>
								<option value="2">Half Moon</option>
								<option value="3">Crescent Moon</option>
							</select>
					    </div>
					    <div class="col  col-md-4 col-sm-12 col-xs-12">
					    	<p>
								체크인<input type="text"  class="form-control form-control-sm" id="datepickerIn"  placeholder="Check In">
							</p>
					    </div>
					    <div class="col  col-md-4 col-sm-12 col-xs-12">
					    	<p>
								체크아웃<input type="text" class="form-control form-control-sm" id="datepickerOut"  placeholder="Check Out">
							</p>
					    </div>
					    <div class="col  col-md-4 col-sm-12 col-xs-12">
					    	성인<select class="form-select form-select-sm mb-3"
								aria-label=".form-select-lg example">
								<option selected>성인 인원</option>
								<option value="1">1명</option>
								<option value="2">2명</option>
								<option value="3">3명</option>
								<option value="4">4명</option>
								<option value="5">5명</option>
								<option value="6">6명</option>
								<option value="7">7명</option>
							</select>
					    </div>
					    <div class="col  col-md-4 col-sm-12 col-xs-12">
					    	어린이<select class="form-select form-select-sm mb-3"
								aria-label=".form-select-lg example">
								<option selected>어린이 인원</option>
								<option value="1">1명</option>
								<option value="2">2명</option>
								<option value="3">3명</option>
								<option value="4">4명</option>
								<option value="5">5명</option>
								<option value="6">6명</option>
								<option value="7">7명</option>
							</select>
					    </div>
					    <div class="d-grid col  col-md-4 col-sm-12 col-xs-12 mx-auto reservBtn" >
					    	<button type="button" class="btn btn-primary">예약하기</button>
					    </div>
					  </div>
				</fieldset>
			</form>
		</div>
	</article>
</section>
<jsp:include page="../inc/footer.jsp"></jsp:include>