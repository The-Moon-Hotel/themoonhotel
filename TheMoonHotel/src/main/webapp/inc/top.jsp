<%@page import="java.sql.SQLException"%>
<%@page import="com.moon.guest.model.GuestSerivce"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<jsp:useBean id="guestService" class="com.moon.guest.model.GuestSerivce" scope="session"></jsp:useBean>
<jsp:useBean id="guestVo" class="com.moon.guest.model.GuestVO" scope="page"></jsp:useBean>
    
<%
	String t_userid=(String)session.getAttribute("userid");

	boolean t_login=false;
	int GuestOrAdmin=GuestSerivce.GUEST_ACCOUNT;
	
	if(t_userid!=null&& !t_userid.isEmpty()){
		t_login=true;
		try{
			guestVo=guestService.selectByUserid(t_userid);
			int sys=guestVo.getSys();
			if(sys==GuestSerivce.ADMIN_ACCOUNT){
				GuestOrAdmin=GuestSerivce.ADMIN_ACCOUNT;
			}
		}catch(SQLException e){
			e.printStackTrace();
		}
	}else{
		t_userid="";
	}
	
%>
<!doctype html>
<html>
  <head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title>index</title>
    
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-Zenh87qX5JnK2Jl0vWa8Ck2rdkQ2Bzep5IDxbcnCeuOxjzrPF/et3URy9Bv1WTRi" crossorigin="anonymous">
    <link rel="stylesheet" href="<%=request.getContextPath() %>/css/top.css">
    <link rel="stylesheet" href="<%=request.getContextPath() %>/css/footer.css">  
  <script type="text/javascript" src="<%=request.getContextPath() %>/js/jquery-3.6.1.min.js"></script>
  <script type="text/javascript">
  	 var navBar = document.getElementById('navBlack');
  	 
  	window.addEventListener('scroll',function(){
  		var value=window.scrollY;
  		console.log('scrollY',scrollY);
  		if(value>100){
  			$('#navBlack').css({
  				visibility: 'visible',
  				animation:'slide 1s ease-out forwards'
  			});  		
  		}else {
  			$('#navBlack').css({
  				visibility: 'hidden',
  				animation:'disapper 1s ease-out forwards'
  			});
  			
  		}
  	});
  	
  	$(function(){
  		var resevUserid="<%=t_userid%>";
  		$('#bookBtn1').click(function(){
  			if(resevUserid==""){
  				alert("????????? ????????? ???????????? ???????????????.");
  				event.preventDefault();
  			}else{  				
  				$(location).attr("href", "<%=request.getContextPath() %>/reservRoom/reservation1.jsp");
  			}
  		});
  		$('#bookBtn2').click(function(){
  			if(resevUserid==""){
  				alert("????????? ????????? ???????????? ???????????????.");
  				event.preventDefault();
  			}else{  				
  				$(location).attr("href", "<%=request.getContextPath() %>/reservRoom/reservation1.jsp");
  			}
  		});
  	})
  </script>
  </head>
<body>
<header>
</header>
<nav class="navbar navbar-expand-md navWhite" style="background: rgba(0, 0, 0, 0.1) ; height:70px;">
	
  <div class="container-fluid" >
        <a class="navbar-brand navColor" href="<%=request.getContextPath() %>/index.jsp" >THE MOON HOTEL</a>
    <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
      <span class="navbar-toggler-icon"></span>
    </button>
    <div class="collapse navbar-collapse " id="navbarSupportedContent">
      <ul class="navbar-nav me-auto mb-2 mb-lg-0">
      
        <li class="nav-item dropdown">
          <a class="nav-link dropdown-toggle navColor" href="#" role="button" data-bs-toggle="dropdown" aria-expanded="false">
            ??????
          </a>
          <ul class="dropdown-menu">
            <li><a class="dropdown-item" href="<%=request.getContextPath() %>/about/greetings.jsp">?????????</a></li>
            <li><a class="dropdown-item" href="<%=request.getContextPath() %>/about/aboutBranch.jsp">????????? ??????</a></li>
          </ul>
        </li>
        <li class="nav-item dropdown">
          <a class="nav-link dropdown-toggle navColor" href="#" role="button" data-bs-toggle="dropdown" aria-expanded="false">
            ????????????
          </a>
          <ul class="dropdown-menu">
            <li><a class="dropdown-item" href="<%=request.getContextPath() %>/room/deluxeDetail.jsp">?????????</a></li>
            <li><a class="dropdown-item" href="<%=request.getContextPath() %>/room/supeDetail.jsp">????????????</a></li>
            <li><a class="dropdown-item" href="<%=request.getContextPath() %>/room/suitDetail.jsp">?????????</a></li>
            <li><a class="dropdown-item" href="<%=request.getContextPath() %>/room/monoDetail.jsp">?????????????????????</a></li>
          </ul>
        </li>
        <li class="nav-item">
          <a class="nav-link  navColor" href="<%=request.getContextPath() %>/facility/facility.jsp" role="button" aria-expanded="false">
            ????????????
          </a>
        </li>
        <li class="nav-item dropdown">
          <a class="nav-link dropdown-toggle navColor" href="#" role="button" data-bs-toggle="dropdown" aria-expanded="false">
            ?????????
          </a>
          <ul class="dropdown-menu">
          	<li><a class="dropdown-item" href="<%=request.getContextPath() %>/noticeBoard/noticeBoardList.jsp">????????????</a></li>
            <li><a class="dropdown-item" href="<%=request.getContextPath() %>/reviewBoard/reviewBoardList.jsp">???????????????</a></li>
            <li><a class="dropdown-item" href="<%=request.getContextPath() %>/askBoard/askBoardList.jsp">???????????????</a></li>
          </ul>
        </li>
        <!-- ?????? -->
      </ul>
      <%if(t_login==true){
      		if(GuestOrAdmin==GuestSerivce.GUEST_ACCOUNT){%>
		     	 <!-- ???????????? ????????? ?????? -->
		        <li class="nav-item dropdown nav-link me-3 mb-2 mb-lg-0 navColor" >
		          <a class="nav-link dropdown-toggle navColor" href="#" role="button" data-bs-toggle="dropdown" aria-expanded="false">
		            ???????????????
		          </a>
		          <ul class="dropdown-menu">
		          	<li><a class="dropdown-item" href="<%=request.getContextPath() %>/guest/myReservList.jsp">???????????? ??????</a></li>
		            <li><a class="dropdown-item" href="<%=request.getContextPath() %>/guest/guestEdit_pwdChk.jsp">??????????????????</a></li>
		            <li><a class="dropdown-item" href="<%=request.getContextPath() %>/askBoard/askBoardList.jsp">????????????</a></li>
		            <li><a class="dropdown-item" href="<%=request.getContextPath() %>/guest/guestOut.jsp">????????????</a></li>
		          </ul>
		        </li>
		      	<a class="nav-item nav-link me-3 mb-2 mb-lg-0 navColor"   href="<%=request.getContextPath() %>/login/logout.jsp"  >????????????</a>
      		<%}else{ %>
		      	<!-- ????????? ???????????? ????????? ?????? -->
		        <li class="nav-item dropdown nav-link me-3 mb-2 mb-lg-0 navColor" >
		          <a class="nav-link dropdown-toggle navColor" href="#" role="button" data-bs-toggle="dropdown" aria-expanded="false">
		            ??????????????????
		          </a>
		          <ul class="dropdown-menu">
		          	<li><a class="dropdown-item" href="<%=request.getContextPath() %>/admin/guestList.jsp">????????????</a></li>
		            <li><a class="dropdown-item" href="<%=request.getContextPath() %>/admin/reservList.jsp">??????????????????</a></li>
		            <li><a class="dropdown-item" href="<%=request.getContextPath() %>/admin/Sales.jsp">????????????</a></li>
		          </ul>
		        </li>
		      	<a class="nav-item nav-link me-3 mb-2 mb-lg-0 navColor"   href="<%=request.getContextPath() %>/login/logout.jsp"  >????????????</a>
      		<%} %>
      	<%}else{ %>
      	<!-- ????????? ???  -->
      	<a class="nav-item nav-link me-3 mb-2 mb-lg-0 navColor"   href="<%=request.getContextPath() %>/login/login.jsp"  >?????????</a>
      	<a class="nav-item nav-link me-3 mb-2 mb-lg-0 navColor" href="<%=request.getContextPath() %>/guest/signUp.jsp">????????????</a>
      	<%} %>
      <form class="d-flex navColor" role="search" >
        <button class="btn btn-outline-primary" type="button" id="bookBtn1">book a room</button>
      </form>
    </div>
  </div>
</nav>
<!-- ???????????? ?????? ????????? -->
<nav class="navbar navbar-expand-md navBlack bg-dark" id="navBlack"style=" height:70px;">
	
  <div class="container-fluid" >
        <a class="navbar-brand navColor" href="<%=request.getContextPath() %>/index.jsp" >THE MOON HOTEL</a>
    
    <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
      <span class="navbar-toggler-icon"></span>
    </button>
    <div class="collapse navbar-collapse " id="navbarSupportedContent">
      <ul class="navbar-nav me-auto mb-2 mb-lg-0">
         <li class="nav-item dropdown">
          <a class="nav-link dropdown-toggle navColor" href="#" role="button" data-bs-toggle="dropdown" aria-expanded="false">
            ??????
          </a>
          <ul class="dropdown-menu dropdown-menu-dark">
            <li><a class="dropdown-item" href="<%=request.getContextPath() %>/about/greetings.jsp">?????????</a></li>
            <li><a class="dropdown-item" href="<%=request.getContextPath() %>/about/aboutBranch.jsp">????????? ??????</a></li>
          </ul>
        </li>
        <li class="nav-item dropdown">
          <a class="nav-link dropdown-toggle navColor" href="#" role="button" data-bs-toggle="dropdown" aria-expanded="false">
            ????????????
          </a>
          <ul class="dropdown-menu dropdown-menu-dark">
            <li><a class="dropdown-item" href="<%=request.getContextPath() %>/room/deluxeDetail.jsp">?????????</a></li>
            <li><a class="dropdown-item" href="<%=request.getContextPath() %>/room/supeDetail.jsp">????????????</a></li>
            <li><a class="dropdown-item" href="<%=request.getContextPath() %>/room/suitDetail.jsp">?????????</a></li>
            <li><a class="dropdown-item" href="<%=request.getContextPath() %>/room/monoDetail.jsp">?????????????????????</a></li>
          </ul>
        </li>
        <li class="nav-item">
          <a class="nav-link  navColor" href="<%=request.getContextPath() %>/facility/facility.jsp" role="button" aria-expanded="false">
            ????????????
          </a>
        </li>
        <li class="nav-item dropdown">
          <a class="nav-link dropdown-toggle navColor" href="#" role="button" data-bs-toggle="dropdown" aria-expanded="false">
            ?????????
          </a>
          <ul class="dropdown-menu dropdown-menu-dark">
            <li><a class="dropdown-item" href="<%=request.getContextPath() %>/noticeBoard/noticeBoardList.jsp">????????????</a></li>
            <li><a class="dropdown-item" href="<%=request.getContextPath() %>/reviewBoard/reviewBoardList.jsp">???????????????</a></li>
            <li><a class="dropdown-item" href="<%=request.getContextPath() %>/askBoard/askBoardList.jsp">???????????????</a></li>
          </ul>
        </li>
        <!-- ?????? -->
      </ul>
      <%if(t_login==true){
      		if(GuestOrAdmin==GuestSerivce.GUEST_ACCOUNT){%>
				<!-- ???????????? ????????? ?????? -->
		        <li class="nav-item dropdown nav-link me-3 mb-2 mb-lg-0 navColor"  >
		          <a class="nav-link dropdown-toggle navColor" href="#" role="button" data-bs-toggle="dropdown" aria-expanded="false">
		            ???????????????
		          </a>
		          <ul class="dropdown-menu dropdown-menu-dark">
		          	<li><a class="dropdown-item" href="<%=request.getContextPath() %>/guest/myReservList.jsp">???????????? ??????</a></li>
		            <li><a class="dropdown-item" href="<%=request.getContextPath() %>/guest/guestEdit_pwdChk.jsp">??????????????????</a></li>
		            <li><a class="dropdown-item" href="<%=request.getContextPath() %>/askBoard/askBoardList.jsp">????????????</a></li>
		            <li><a class="dropdown-item" href="<%=request.getContextPath() %>/guest/guestOut.jsp">????????????</a></li>
		          </ul>
		        </li>
		      	<a class="nav-item nav-link me-3 mb-2 mb-lg-0 navColor"   href="<%=request.getContextPath() %>/login/logout.jsp" >????????????</a>
      		<%}else if(GuestOrAdmin==GuestSerivce.ADMIN_ACCOUNT){ %>
		      	<!-- ????????? ???????????? ????????? ?????? -->
		        <li class="nav-item dropdown nav-link me-3 mb-2 mb-lg-0 navColor" >
		          <a class="nav-link dropdown-toggle navColor" href="#" role="button" data-bs-toggle="dropdown" aria-expanded="false">
		            ??????????????????
		          </a>
		          <ul class="dropdown-menu dropdown-menu-dark">
		          	<li><a class="dropdown-item" href="<%=request.getContextPath() %>/admin/guestList.jsp">????????????</a></li>
		            <li><a class="dropdown-item" href="<%=request.getContextPath() %>/admin/reservList.jsp">??????????????????</a></li>
		            <li><a class="dropdown-item" href="<%=request.getContextPath() %>/admin/Sales.jsp">????????????</a></li>
		          </ul>
		        </li>
		      	<a class="nav-item nav-link me-3 mb-2 mb-lg-0 navColor"   href="<%=request.getContextPath() %>/login/logout.jsp"  >????????????</a>
      		<%} %>
      	<%}else{ %>
	      	<!-- ????????? ???  -->      
	      	<a class="nav-item nav-link me-3 mb-2 mb-lg-0 navColor"   href="<%=request.getContextPath() %>/login/login.jsp" >?????????</a>
	      	<a class="nav-item nav-link me-3 mb-2 mb-lg-0 navColor" href="<%=request.getContextPath() %>/guest/signUp.jsp">????????????</a>
      	<%} %>
      <form class="d-flex navColor" role="search" >
        <button class="btn btn-outline-primary" type="button" id="bookBtn2">book a room</button>
      </form>
    </div>
  </div>
</nav>