<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style>

	section{
		width: 800px;
		text-align: center;
		margin: 100px 100px 100px 400px;
	}
	
	table{
		border-collapse: collapse;
		width: 600px;
		margin: 0px 30px 30px 30px;
	}
		
	fieldset {
		width: 700px;	
		position: relative;
	}
	
	.ck{
		margin-left: 40px; 
		margin-top: 10px;
		text-align: left;
	} 
	
	label{
		float: left;
		width: 100px;
		text-align: right;
		padding-right: 20px;
	}
	
	.total{
		color: red;
		font-size: 20px;
		font-weight: bold;
		margin-left: 250px;
	}
</style>
</head>
<body>
	<section>
		<fieldset>
			<legend>매출조회</legend>
			<div class="ck">
				<label>지점</label>
				<select>
					<option value="1">Full Moon</option>
					<option value="2">Half Moon</option>
					<option value="3">Crescent Moon</option>
					<option value="4">전체조회</option>
				</select>
				<br><br>
				<label>조회기간</label>
				<input type="date">&nbsp;&nbsp; 
				<input type="date"> 
				<input type="button" value="조회">
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
		</fieldset>
	</section>

</body>
</html>