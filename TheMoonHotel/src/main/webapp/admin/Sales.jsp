<%@page import="java.time.LocalDate"%>
<%@page import="java.util.Date"%>
<%@page import="java.text.SimpleDateFormat"%>
<%@page import="java.util.Calendar"%>
<%@page import="java.time.*"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<jsp:include page="../inc/top.jsp"></jsp:include>
<link rel="stylesheet" type="text/css" href="../css/sales.css">
<%
request.setCharacterEncoding("utf-8");
String branchType=request.getParameter("SearchBranchType");
String salesType=request.getParameter("SearchSalesType");
String date1=request.getParameter("searchDate1");
String date2=request.getParameter("searchDate2");
SimpleDateFormat sdf =new SimpleDateFormat("yyyy-MM-dd");

//branchType는  
if(branchType!=null&& !branchType.isEmpty()&&salesType!=null&& !salesType.isEmpty()){
	
	if(Integer.parseInt(branchType)>=1 && Integer.parseInt(branchType)<=3){ //지점별
		if(Integer.parseInt(salesType)==1){//타입별
			
		}else if(Integer.parseInt(salesType)==2){//부대시설별
			
		}else if(Integer.parseInt(salesType)==3){//전체(부대시설+ 타입)
			
		}
	}else{ //전체 지점
		if(Integer.parseInt(salesType)==1){//타입별
			
		}else if(Integer.parseInt(salesType)==2){//부대시설별
			
		}else if(Integer.parseInt(salesType)==3){//전체(부대시설+ 타입)
			
		}
	}
}else{
	branchType="";
	salesType="";
	date1="";
	date1="";
}
%>
<script type="text/javascript" src="<%=request.getContextPath() %>/js/jquery-3.6.1.min.js"></script>
<script type="text/javascript">
	$(function(){
		$('form[name=SalseCk]').submit(function(){
			if($('#branchType').val().length<1){
				
			}else if($('#salesType').val().length<1){
				
			}
		});
	});
</script>
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
			<form name="SalseCk" method="post" action="Sales.jsp"> 
				<fieldset>
					<div class="ck">
						<div>
							<p class="pSize" style="display: inline-block;">지점 : </p>
							<select class="form-select form-select-md mb-3 selectSize" id="branchType" name="SearchBranchType" style="display: inline-block;" >
							  	<option selected>지점선택</option>
								<option value="1"
									<%if(branchType.equals("1")){ %>
							  			selected="selected"
							  		<%} %>
								>FullMoon</option>
								<option value="2"
									<%if(branchType.equals("2")){ %>
							  			selected="selected"
							  		<%} %>								
								>HalfMoon</option>
								<option value="3"
									<%if(branchType.equals("3")){ %>
							  			selected="selected"
							  		<%} %>								
								>CrescentMoon</option>
								<option value="4"
									<%if(branchType.equals("4")){ %>
							  			selected="selected"
							  		<%} %>								
								>전체지점</option>
							</select>
							<p class="pSize" style="display: inline-block;">조회목록 : </p>
							<select class="form-select form-select-md mb-3 selectSize" id="salesType" name="SearchSalesType" style="display: inline-block;" >
							  	<option selected>조회 목록</option>
								<option value="1"
									<%if(salesType.equals("1")){ %>
							  			selected="selected"
							  		<%} %>								
								>타입별 매출</option>
								<option value="2"
									<%if(salesType.equals("2")){ %>
							  			selected="selected"
							  		<%} %>	
								>부대시설별 매출</option>
								<option value="3"
									<%if(salesType.equals("3")){ %>
							  			selected="selected"
							  		<%} %>	
								>모든 항목 매출</option>
							</select>
						</div>
							<p class="pSize" style="display: inline-block;">조회기간 : </p>
						<div class="input-group mb-3 dateSize" style="display: inline-block;width: 311px;">
						  	<input type="date" class="form-control " style="width: 100%" name="searchDate1" value="<%=date1 %>">
						</div>
							<p class="pSize" style="display: inline-block; width: 30px">&nbsp;~&nbsp;</p>
						<div class="input-group mb-3 dateSize" style="display: inline-block; width: 311px;">
						  	<input type="date" class="form-control" style="width: 100%" name="searchDate2" value="<%=date2 %>">
						</div>
						<div style="text-align:center ;display: block;">
							<button type="submit" class="btn btn-dark" style="width: 100px">조회</button>
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
						<tfoot>
							<th colspan="4">총 매출</th>
							<th>132648716원</th>
						</tfoot>
					</table>				
				</div>
			</form>
		</div>
</section>
<jsp:include page="../inc/footer.jsp"></jsp:include>