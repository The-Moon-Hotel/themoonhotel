<%@page import="java.sql.SQLException"%>
<%@page import="com.moon.noticeBoard.model.NoticeBoardVO"%>
<%@page import="com.moon.noticeBoard.model.NoticeBoardDAO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<script type="text/javascript">

</script>
</head>
<body>
	<%
	//Write에서 post로 넘어옴

	 request.setCharacterEncoding("utf-8");
	
	 String n_title = request.getParameter("title");
	 String n_content = request.getParameter("content");
	 
	NoticeBoardDAO dao = new NoticeBoardDAO();
	NoticeBoardVO vo = new NoticeBoardVO();
	
	vo.setN_title(n_title);
	vo.setN_content(n_content);
	
	try{
	int cnt = dao.insertNotice();
	
	if(cnt>0){%>
	<script type="text/javascript">
		alert("공지사항 작성 완료");
		location.href="noticeBoardList.jsp";
		</script>
	<%}else{%>
	<script type="text/javascript">
		alert('공지사항 등록 실패..');
		hisotry.back();
		</script>
	<%}
	}catch(SQLException e){
		e.printStackTrace();
	}
	 
	 %>
</body>
</html>