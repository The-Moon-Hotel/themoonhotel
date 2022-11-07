<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<jsp:include page="../inc/top.jsp"></jsp:include>
<link rel="stylesheet" type="text/css" href="../css/sales.css">


<section class="salesBanner">
	<article>
		<div>
		  <img src="../images/resevBanner.png" class="" alt="...">
		</div>
	</article>
</section>
		<div class="container text-center salesTitle">
			<h1>매출조회</h1>
		</div>
<section class="content">
		<div>
			<form name="SalseCk" method="post" action="sales_ok.jsp"> 
				<fieldset>
					<div class="ck">
						<div>
							<p class="pSize" style="display: inline-block;">지점 : </p>
							<select class="form-select form-select-md mb-3 selectSize" id="branchType" style="display: inline-block;" >
							  	<option selected>지점선택</option>
								<option value="1">FullMoon</option>
								<option value="2">HalfMoon</option>
								<option value="3">CrescentMoon</option>
							</select>
							<p class="pSize" style="display: inline-block;">조회목록 : </p>
							<select class="form-select form-select-md mb-3 selectSize" id="salesType" style="display: inline-block;" >
							  	<option selected>조회 목록</option>
								<option value="1">타입별 매출</option>
								<option value="2">부대시설별 매출</option>
								<option value="3">모든 항목 매출</option>
							</select>
						</div>
							<p class="pSize" style="display: inline-block;">조회기간 : </p>
						<div class="input-group mb-3 dateSize" style="display: inline-block;width: 311px;">
						  	<input type="date" class="form-control " style="width: 100%" >
						</div>
							<p class="pSize" style="display: inline-block; width: 30px">&nbsp;~&nbsp;</p>
						<div class="input-group mb-3 dateSize" style="display: inline-block; width: 311px;">
						  	<input type="date" class="form-control" style="width: 100%" >
						</div>
						<div style="text-align:center ;display: block;">
							<button type="button" class="btn btn-dark" style="width: 100px">조회</button>
						</div>
					</div>
				</fieldset>
				
				<div class="tableSize">
					<table class="table">
						<thead>
							<tr>
								<th scope="col">#</th>
								<th scope="col">타입</th>
								<th scope="col">단가</th>
								<th scope="col">수량</th>
								<th scope="col">합계</th>								
							</tr>
s
						<tbody>
							<tr>
								<th scope="row">1</th>
								<td>디럭스</td>								
								<td>240000</td>								
								<td>12</td>								
								<td>2480000</td>								
							</tr>
						</tbody>
						<tfoot></tfoot>
					</table>				
				</div>
			</form>
		</div>
		<br>
		<br>

		<table border='1'>
			<tr>
				<th colspan="5">객실판매현황</th>
			</tr>
			<tr>
				<th></th>
				<th width="22%">수페리어</th>
				<th width="22%">디럭스</th>
				<th width="22%">스위트</th>
				<th width="22%">모노그램스위트</th>
			</tr>
			<tr>
				<th>판매량</th>
				<th></th>
				<th></th>
				<th></th>
				<th></th>
			</tr>
			<tr>
				<th>판매율</th>
				<th></th>
				<th></th>
				<th></th>
				<th></th>
			</tr>
			<tr>
				<th colspan="3">매출</th>
				<th colspan="2"></th>
			</tr>
		</table>

		<table border='1'>
			<tr>
				<th colspan="7">부대시설 판매현황</th>
			</tr>
			<tr>
				<th></th>
				<th width="22%" colspan="2">수영장</th>
				<th width="22%" colspan="2">카바나</th>
				<th width="22%">테라피 가든</th>
				<th width="22%">사우나</th>
			</tr>
			<tr>
				<th>구분</th>
				<th>성인</th>
				<th>어린이</th>
				<th>쁘띠</th>
				<th>패밀리</th>
				<th>성인</th>
				<th>성인</th>
			</tr>
			<tr>
				<th>판매량</th>
				<th></th>
				<th></th>
				<th></th>
				<th></th>
				<th></th>
				<th></th>
			</tr>
			<tr>
				<th>매출</th>
				<th colspan="2"></th>
				<th colspan="2"></th>
				<th></th>
				<th></th>
			</tr>
			<tr>
				<th colspan="5">총 매출</th>
				<th colspan="2"></th>
			</tr>
		</table>
		<p class="total">Total:</p>
</section>
<jsp:include page="../inc/footer.jsp"></jsp:include>