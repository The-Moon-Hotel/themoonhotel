<%@page import="java.text.SimpleDateFormat"%>
<%@page import="java.sql.SQLException"%>
<%@page import="com.moon.askBoard.model.CommentDAO"%>
<%@page import="com.moon.askBoard.model.CommentVO"%>
<%@page import="java.util.List"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<link rel="stylesheet" type="text/css" href="../css/sales.css">


<%
	String askno = request.getParameter("askno");
	List<CommentVO> list = null;
	try{
		CommentDAO dao = new CommentDAO();
		list = dao.selectComment(Integer.parseInt(askno));
	
	}catch(SQLException e){
		e.printStackTrace();
	}
	
	SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM-dd");
%>
<style>
	table{
		border-collapse: collapse;
		width: 800px;
		margin-top: 30px;
		margin-left: 90px;
	}
	
</style>
<body>
	<h4 style="margin-left: 90px">답글</h4>
	<%-- <table  border="1">
	<tr>
		<th>작성자</th>
		<th>내용</th>
		<th>시간</th>
	</tr>
	<%if(list==null||list.isEmpty()){ %>
		<tr>
			<td colspan="3" style="text-align: center">등록된 답변이 없습니다.</td>
		</tr>
	<% }else{%>
		<%for(int i=0; i<list.size(); i++){ 
			CommentVO vo = list.get(i);%>
			<tr style="text-align: center">
				<td><%=vo.getName()%></td>
				<td><%=vo.getContent()%></td>
				<td><%=sdf.format(vo.getRegdate())%></td>
			</tr>
		<% }%>
	<%} %>
</table> --%>
	<div class="tableSize">
		<table class="table">
			<thead>
				<tr>
					<th scope="col">작성자</th>
					<th scope="col">내용</th>
					<th scope="col">시간</th>
				</tr>
				
			<tbody>
				<%if(list==null||list.isEmpty()){ %>
				<tr>
					<td colspan="3" style="text-align: center">등록된 답변이 없습니다.</td>
				</tr>
				<% }else{%>
					<%for(int i=0; i<list.size(); i++){ 
						CommentVO vo = list.get(i);%>
					
						<tr>
							<td><%=vo.getName()%></td>
							<td><%=vo.getContent()%></td>
							<td><%=sdf.format(vo.getRegdate())%></td>
						</tr>
					<% }%>
				<%} %>
			</tbody>
		</table>
	</div>