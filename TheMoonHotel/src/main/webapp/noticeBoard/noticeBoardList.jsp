<%@page import="java.text.SimpleDateFormat"%>
<%@page import="java.sql.SQLException"%>
<%@page import="java.sql.SQLClientInfoException"%>
<%@page import="com.moon.noticeBoard.model.NoticeBoardDAO"%>
<%@page import="java.util.List"%>
<%@page import="com.moon.noticeBoard.model.NoticeBoardVO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<jsp:include page="../inc/top.jsp"></jsp:include>

<style type="text/css">
#div1 {
	width: 800px;
}

#select1 {
	width: 100px;
	float: left;
}

#search {
	width: 400px;
	float: left;
}
</style>
<script type="text/javascript"src="../js/jquery-3.6.1.min.js"></script>
<script type="text/javascript">
	$(function(){
		$('#btn1').click(function(){
			location.href="noticeWrite.jsp";
		});
		
		
	});
</script>

<%
	request.setCharacterEncoding("utf-8");
	
	
	String keyword = request.getParameter("serach");
	String condition = request.getParameter("select1");
	if(keyword==null) keyword="";
	
	List<NoticeBoardVO> list = null;
	
	try{
		NoticeBoardDAO dao = new NoticeBoardDAO();
		list = dao.selectAll(condition, keyword);
				
	}catch(SQLException e){
		e.printStackTrace();
	}
	
	SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM-dd");
	//페이징 처리하기
	int currentPage = 1;
	if(request.getParameter("currentPage")!=null){
		currentPage = Integer.parseInt(request.getParameter("currnetPage"));
	}
	//현재펭지ㅣ와 무관한 변수들?
	int totalRecord = 0;
	if(list!= null && list.isEmpty()){
		totalRecord = list.size();
	}
	int pageSize = 5;
	int totalPage = (int)Math.ceil((float)totalRecord/pageSize);	//총 페이지수 
	int blockSize=10; //한 블럭의 페이지 수
	
	//현재 페이지를 이용해 계산하는 변수들
	int firstPage = currentPage - ((currentPage-1)%blockSize);
	//블럭의 시작 페이지
	
	int lastpage = firstPage+(blockSize-1);
	//블럭의 마지막 페이지
	
	int curPos = (currentPage-1)*pageSize; //페이지당 ArrayList에서의 시작 index
	//0, 5, 10, 15...
	
	
	int num = totalRecord-curPos;
	
%>	
<div style="height: 800px;">
	<div class="container text-center" style="margin-top: 100px;">
		<h2>공지사항</h2>
	</div>
	<div id="div1" class="container text-center">
		<table class="table table-hover">
			<thead>
				<tr>
					<th scope="col">no</th>
					<th scope="col">제목</th>
					<th scope="col">작성자</th>
					<th scope="col">날짜</th>
					<th scope="col">조회수</th>
				</tr>
			</thead>
			<tbody>
			<%if(list==null || list.isEmpty()){ %>
				<tr>
					<td colspan="5">데이터가 없..</td>
				</tr>
				<%}else{ %>
					<%for(int i=0;i<pageSize;i++){
						if(num<1)break;
						NoticeBoardVO vo = list.get(curPos++);
						num--;
				%>
				<tr>
					<th scope="row"></th>
					<td><a href="detail.jsp" ><%=vo.getN_title() %></a></td>
					<td><%=vo.getN_title()%></td>
					<td><%=vo.getN_regdate() %></td>
					<td><%=vo.getN_count() %></td>
				</tr>
				<%} %>
			</tbody>
		</table>
		
		
			<div class="form-group">
				<label for="exampleSelect1" class="form-label mt-4"></label>
				<select	class="form-select" name="select1">
					<option>제목</option>
					<option>작성자</option>
					<option>작성일</option>
				</select>
				<input type="text" class="form-control" name="search" placeholder="검색하고자 하는 내용 입력"> 
			</div>
		<button id="btn1" type="button" class="btn btn-dark" style="float: right">글쓰기</button>
		<br> <br> <br>
	</div>
</div>s
<jsp:include page="../inc/footer.jsp"></jsp:include>
