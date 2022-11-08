<%@page import="com.moon.guest.model.GuestVO"%>
<%@page import="java.text.SimpleDateFormat"%>
<%@page import="java.sql.SQLException"%>
<%@page import="com.moon.askBoard.model.CommentDAO"%>
<%@page import="com.moon.askBoard.model.CommentVO"%>
<%@page import="java.util.List"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<link rel="stylesheet" type="text/css" href="../css/sales.css">

<jsp:useBean id="guestSerivce" class="com.moon.guest.model.GuestSerivce" scope="session"></jsp:useBean>
<jsp:useBean id="guestVO" class="com.moon.guest.model.GuestVO" scope="page"></jsp:useBean>
<%
	String userid=(String)session.getAttribute("userid");
	GuestVO g_vo = guestSerivce.selectByUserid(userid);
%>
<%
	String askno = request.getParameter("askno");
	List<CommentVO> list = null;
	CommentDAO dao = new CommentDAO();
	try{
		list = dao.selectComment(Integer.parseInt(askno));
	
	}catch(SQLException e){
		e.printStackTrace();
	}
	
	SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM-dd");
%>

<script type="text/javascript" src="<%=request.getContextPath() %>/js/jquery-3.6.1.min.js"></script>
<script type="text/javascript">
	$(function(){
		$('#Delete').click(function(){
			if(!confirm('해당 답변을 삭제하시겠습니까?')){
				event.preventDefault();
			}else{
				location.href="commentDelete_ok.jsp<%-- ?askno=<%=askno%>" --%>;
			}
		});
	});
</script>

<style>
	table{
		border-collapse: collapse;
		width: 800px;
		margin-top: 30px;
		margin-left: 90px;
	}
	.co_list{
		width: 1000px;
		margin-left: 210px;
	}
</style>
<div class="co_list">
	<h4 style="margin-left: 90px">답글</h4>
	<div class="tableSize">
		<table class="table">
			<thead>
				<tr>
					<th scope="col">작성자</th>
					<th scope="col">내용</th>
					<th scope="col">등록시간</th>
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
							<%if(g_vo.getSys() != 1){ %>
								<td>
									<a href="<%=request.getContextPath() %>/askBoard/commentDelete_ok.jsp">
										<input type="button" name="Delete" value="삭제">
									</a>
								</td>
							<%} %>
						</tr>
					<% }%>
				<%} %>
			</tbody>
		</table>
	</div>
</div>