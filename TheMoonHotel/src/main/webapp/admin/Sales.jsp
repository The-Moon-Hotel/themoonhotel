<%@page import="java.sql.SQLException"%>
<%@page import="java.util.List"%>
<%@page import="com.moon.sales.model.SalesVO"%>
<%@page import="com.moon.sales.model.SalesService"%>
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

SalesService salesService =new SalesService();
List<SalesVO> list=null;
//branchType는  
if(branchType!=null&& !branchType.isEmpty()&&salesType!=null&& !salesType.isEmpty()){
	int bt=Integer.parseInt(branchType);
	int st=Integer.parseInt(salesType);
	Date d1=sdf.parse(date1);
	Date d2=sdf.parse(date2);
	int compareDate=d1.compareTo(d2);
	Date change=null;
	if(compareDate>0){
		change=d1;
		d1=d2;
		d2=change;
	} 
	String date01=sdf.format(d1);
	String date02=sdf.format(d2);
	if(st==1){//타입별
		try{
		}catch(SQLException e){
			e.printStackTrace();
		}
	}else if(st==2){//부대시설별
		
	}else if(st==3){//전체(부대시설+ 타입)
		
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
			var branchChk=$('#branchType option:selected').val();
			var salesChk=$('#salesType option:selected').val();
			if(branchChk=='0'){
				alert("조회할 지점을 선택하세요");
				$(this).focus();s
				event.preventDefault();
			}else if(salesChk=='0'){
				alert("조회목록을 선택하세요");
				$(this).focus();
				event.preventDefault();
			}else if($('#date1').val().length<1){
				alert("조회할 기간을 선택하세요");
				$(this).focus();
				event.preventDefault();
			}else if($('#date2').val().length<1){
				alert("조회할 기간을 선택하세요");
				$(this).focus();
				event.preventDefault();
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
							  	<option value="0">지점선택</option>
								<option value="Full Moon"
									<%if(branchType.equals("Full Moon")){ %>
							  			selected="selected"
							  		<%} %>
								>Full Moon</option>
								<option value="Half Moon"
									<%if(branchType.equals("Half Moon")){ %>
							  			selected="selected"
							  		<%} %>								
								>Half Moon</option>
								<option value="Crescent Moon"
									<%if(branchType.equals("Crescent Moon")){ %>
							  			selected="selected"
							  		<%} %>								
								>Crescent Moon</option>
								<option value="all"
									<%if(branchType.equals("all")){ %>
							  			selected="selected"
							  		<%} %>								
								>전체지점</option>
							</select>
							<p class="pSize" style="display: inline-block;">조회목록 : </p>
							<select class="form-select form-select-md mb-3 selectSize" id="salesType" name="SearchSalesType" style="display: inline-block;" >
							  	<option value="0">조회 목록</option>
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
						  	<input type="date" class="form-control " style="width: 100%" name="searchDate1" id="date1" value="<%=date1 %>">
						</div>
							<p class="pSize" style="display: inline-block; width: 30px">&nbsp;~&nbsp;</p>
						<div class="input-group mb-3 dateSize" style="display: inline-block; width: 311px;">
						  	<input type="date" class="form-control" style="width: 100%" name="searchDate2" id="date2" value="<%=date2 %>">
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