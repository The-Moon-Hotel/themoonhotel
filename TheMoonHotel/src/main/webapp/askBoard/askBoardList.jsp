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
	
	/* String userid = (String)session.getAttribute("userid"); */
	String userid = "hong";
	GuestDAO g_dao = new GuestDAO();
	/* GuestVO g_vo = new GuestVO(); */
	GuestVO g_vo = g_dao.selectByUserid(userid);
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
			list = dao.selectAll();
		}
	}catch(SQLException e){
		e.printStackTrace();
	}
	
	//3. 
	SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM-dd");
	
	
	//페이징처리
	
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
	    <tr>
	      <td>1</td>
		  <td><a href="#">호텔 이용</a></td>
		  <td>홍*동</td>
		  <td>2022.10.10</td>	
	    </tr>
	  </tbody>
</table>
</div>
<jsp:include page="../inc/footer.jsp"></jsp:include>