<%@page import="java.sql.SQLException"%>
<%@page import="java.sql.SQLClientInfoException"%>
<%@page import="com.moon.noticeBoard.model.NoticeBoardVO"%>
<%@page import="com.moon.noticeBoard.model.NoticeBoardDAO"%>
<%@page import="com.moon.askBoard.model.AskBoardDAO"%>
<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
<jsp:include page="../inc/top.jsp"></jsp:include>
<link rel="stylesheet" href="css/top.css">
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
<link
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.2/dist/css/bootstrap.min.css"
	rel="stylesheet"
	integrity="sha384-Zenh87qX5JnK2Jl0vWa8Ck2rdkQ2Bzep5IDxbcnCeuOxjzrPF/et3URy9Bv1WTRi"
	crossorigin="anonymous">
</head>
<jsp:useBean id="noticeBoardVo" class="com.moon.noticeBoard.model.NoticeBoardVO"></jsp:useBean>
<style type="text/css">
body {
	padding-top: 70px;
	padding-bottom: 30px;
}

.board_title {
	font-weight: 700;
	font-size: 22pt;
	margin: 10pt;
}

.board_info_box {
	color: #6B6B6B;
	margin: 10pt;
}

.board_author {
	font-size: 10pt;
	margin-right: 10pt;
}

.board_date {
	font-size: 10pt;
}

.board_content {
	color: #444343;
	font-size: 12pt;
	margin: 10pt;
}

.board_tag {
	font-size: 11pt;
	margin: 10pt;
	padding-bottom: 10pt;
}
</style>
<script type="text/javascript"src="../js/jquery-3.6.1.min.js"></script>
<script type="text/javascript">
	$(function(){
		$('#btnUpdate').click(function(){
			location.href="noticeEdit.jsp";
		});
		$('#btnDelete').click(function(){
			location.href="BoardDelete.jsp";
		});
		$('#btnList').click(function(){
			location.href="noticeBoardList.jsp";
		});
	});
</script>
<%
String noticeNo = request.getParameter("noticeNo");
NoticeBoardDAO dao = new NoticeBoardDAO();
try{
	noticeBoardVo = dao.selectByNo(Integer.parseInt(noticeNo));
}catch(SQLException e){
	e.printStackTrace();
}
%>
<body>
	<div class="divForm">
	<form name="frmDelete" method="post" action="delete_ok.jsp?no=<%=noticeBoardVo.getNoticeNo()%>">
			<!--  삭제시 no가 필요하므로 hidden 필드에 넣어준다. -->
			<input type="hidden" name="no" value="<%=noticeBoardVo.getNoticeNo() %>">
			<fieldset>
				<legend>글 삭제</legend>
				<div>
					<span class="sp"><%=noticeBoardVo.getNoticeNo() %> 번 글을 삭제하시겠습니까?</span>
				</div>
				<div>
					<label for="pwd">비밀번호</label> <input type="password" id="pwd"
						name="pwd" />
				</div>
				<div class="center">
					<input type="submit" value="삭제" /> <input type="Button"
						value="글목록" OnClick="location.href='list.jsp'" />
				</div>
			</fieldset>
		</form>
		</div>
	<script
		src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.2/dist/js/bootstrap.bundle.min.js"
		integrity="sha384-OERcA2EqjJCMA+/3y+gxIOqMEjwtxJY7qPCqsdltbNJuaOe923+mo//f6V8Qbsw3"
		crossorigin="anonymous"></script>
</body>
<jsp:include page="../inc/footer.jsp"></jsp:include>
<link rel="stylesheet" href="css/footer.css">
</html>