<%@page import="com.moon.guest.model.GuestSerivce"%>
<%@page import="java.text.SimpleDateFormat"%>
<%@page import="java.sql.SQLException"%>
<%@page import="com.moon.guest.model.GuestVO"%>
<%@page import="com.moon.guest.model.GuestDAO"%>
<%@page import="com.moon.askBoard.model.AskBoardDAO"%>
<%@page import="com.moon.askBoard.model.AskBoardVO"%>
<%@page import="java.util.List"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<%-- <%@ include file = "../login/checkLogin.jsp" %> --%>

<jsp:include page="../inc/top.jsp"></jsp:include>
<%
	//1. 파라미터 확인
	request.setCharacterEncoding("utf-8");
	String condition = request.getParameter("searchCondition");
	String keyword = request.getParameter("searchKeyword");	
	
 	String userid = (String)session.getAttribute("userid");
	//String userid = "hong"; 
	
	/* GuestVO g_vo = new GuestVO(); */
	GuestSerivce gs = new GuestSerivce();
	GuestVO g_vo = gs.selectByUserid(userid);
	//error! ********** 
	
	if(keyword == null) keyword ="";
	
	
	//2. db
	List<AskBoardVO> list = null;
	
	 try{
		AskBoardDAO dao = new AskBoardDAO();
		
		//일반회원이라면 (sys==1)
		 if(g_vo.getSys() == 1){
			list = dao.selectByGuestno(g_vo.getGuestNo()); 
			
		//관리자라면
		 }else{
			list = dao.selectAll(condition,keyword);
		} 
		
	}catch(SQLException e){
		e.printStackTrace();
	}
	
	//3. 
	SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM-dd");
	
	
	//페이징처리
	int currentPage = 1; //현재 페이지
	
	if(request.getParameter("currentPage")!=null){
		currentPage=Integer.parseInt(request.getParameter("currentPage"));
	}
	
	//현재 페이지와 무관한 변수들
	int totalRecord = 0;	//총 레코드 수
	if(list!=null && !list.isEmpty()){
		totalRecord = list.size();
	}
	
	int pageSize=10; 	//현재 페이지에 보여줄 레코드 개수
	int totalPage = (int)Math.ceil((float)totalRecord/pageSize); //총 페이지수
	int blockSize = 10;	//한 블럭에 보여줄 페이지 수
	
	//현재 페이지를 이용해 계산하는 변수들
	int firstPage = currentPage-((currentPage-1)%blockSize);
	// -> 블럭의 시작페이지
	
	int lastPage = firstPage+(blockSize-1);
	//블럭의 마지막 페이지
	
	int curPos = (currentPage-1)*pageSize;	
	//페이지당 ArrayList에서의 시작 index

	int num = totalRecord-curPos;	//페이지당 글 라스트 시작 번호
	
%>

<link
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.2/dist/css/bootstrap.min.css"
	rel="stylesheet"
	integrity="sha384-Zenh87qX5JnK2Jl0vWa8Ck2rdkQ2Bzep5IDxbcnCeuOxjzrPF/et3URy9Bv1WTRi"
	crossorigin="anonymous">
<div style="height: 800px;">
	<p style="font-size: 120%; text-align: center; margin-top:20px;">나의 문의내역</p>

	<hr>
	<table class="table" style="width: 800px; margin:auto; text-align: center;">
	  <thead>
	    <tr>
	      <th>번호</th>
		  <th>제목</th>
		  <th>고객이름</th>
		  <th>등록날짜</th>	
	    </tr>
	  </thead>
	  <tbody>
		<%if(list == null && list.isEmpty()){%>
			<tr><th colspan="4" rowspan="2">문의내역이 없습니다.</th></tr>
		<%}else{ %>
			<!-- 게시판 내용 반복문 -->
			<%for(int i=0; i<pageSize; i++){
				if(num<1) break;
				
				AskBoardVO vo = list.get(curPos++);
				num--;%>
				
				<tr>
					<td><%=vo.getAskNo() %>
					<td>
						<a href="askDetail.jsp?askno=<%=vo.getAskNo() %>"><%=vo.getA_title() %></a>
					</td>
					<td><%=vo.getGuestNo() %></td>
					<td><%=sdf.format(vo.getA_regdate()) %></td>
				</tr>
			<%}//for %>
		<%} %>
	  </tbody>
</table>
</div>


<div class="divPage">
<%	
	//page 나타내기
	//첫 페이지가 1이 아니면 앞쪽 화살표 나타내기
	if(firstPage>1){ %>
			<a href="askBoardList.jsp?currentPage=<%=firstPage-1%>&searchCondition=<%=condition%>&searchKeyword=<%=keyword%>">
				<img src="../images/first.JPG">
			</a>	
	<%	}	%>
	
	<%
		for(int i=firstPage;i<=lastPage;i++){
			if(i>totalPage) break;
			
			if(i==currentPage){%>
				<span style="font-weight: bold;font-size: 1em">
					<%=i %></span>
			<%}else{ %>
				<a href	 
="list.jsp?currentPage=<%=i%>&searchCondition=<%=condition%>&searchKeyword=<%=keyword%>">
					[<%=i %>]</a>
			<%} %>
	<%	}	%>
	
	<!-- 다음 블럭으로 이동 -->
		<%if(lastPage < totalPage){  %>
		<a href="askBoardList.jsp?currentPage=<%=lastPage+1%>&searchCondition=<%=condition%>&searchKeyword=<%=keyword%>">
			<img src="../images/last.JPG">
		</a>
	<% }%> 
</div>
	
	
<div class="divSearch">
   	<form name="frmSearch" method="post" action='askBoardList.jsp'>
        <select name="searchCondition" value="condition">
            <option value="title" 
            <%if("title".equals(condition)){ %>
            	selected="selected"
            <%} %>
            >제목</option>
            <option value="content"
            <%if("content".equals(condition)){%>
            	selected="selected"
            <%} %>
            >내용</option>
            <option value="name"
             <%if("name".equals(condition)){%>
            	selected="selected"
            <%} %>
            >고객번호</option>
        </select>   
        <input type="text" name="searchKeyword" title="검색어 입력"
        	value="<%= keyword%>">    
		<input type="submit" value="검색">
    </form>
</div>

<div class="divBtn">
    <a href='askwrite.jsp' >글쓰기</a>
</div>


<jsp:include page="../inc/footer.jsp"></jsp:include>