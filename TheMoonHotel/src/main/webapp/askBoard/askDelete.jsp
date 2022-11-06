<%@page import="java.sql.SQLException"%>
<%@page import="com.moon.askBoard.model.AskBoardVO"%>
<%@page import="com.moon.askBoard.model.AskBoardDAO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<%-- <%
	String askno = request.getParameter("askno");
	AskBoardDAO dao = new AskBoardDAO();
	AskBoardVO vo = null;
	
	try{
		vo = dao.selectByAskNo(Integer.parseInt(askno)); 	

	}catch(SQLException e){
		e.printStackTrace();
	}
%> --%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style type="text/css">
	body{
		padding:5px;
		margin:5px;
	 }
	 
	.divForm{
		width:650px;
		border:1px solid #ddd;		
	}
	
	.divForm div	{
		border:none;
		padding: 7px 0;
		margin: 0;
		overflow: auto;
	}	
	
	.sp{
		font-size:0.9em;
		color:#0056AC;			
	}
	
	.divForm fieldset	{
		border:0;
	}
</style>
<script type="text/javascript" src = "../js/jquery-3.6.1.min.js"></script>
<script type="text/javascript">
	$(function(){
		$('form[name=frmDelete]').submit(function(){
			if($('#pwd').val().length<1){
				alert('비밀번호를 입력하세요');
				$('#pwd').focus();
				return false;
			}
			
			if(!confirm('삭제하시겠습니까?')){
				event.preventDefault();
			}
		});
		
	});
</script>
</head>
<body>

<div class="divForm">
<form name="frmDelete" method="post"	action="delete_ok.jsp" >
		<!-- 삭제시 no가 필요하므로 hidden 필드에 넣는다 -->
		<input type="hidden" name="askno" value="1">
		<fieldset>
		<legend>글 삭제</legend>
	        <div>           
	        	<span class="sp">해당 문의글을 삭제하시겠습니까?</span>                        
	        </div>
	        <div>           
	            <label for="pwd">비밀번호</label>
	            <input type="password" id="pwd" name="pwd"/>   
	        </div>
	        <div class="center">
	            <input type ="submit"  value="삭제" />
	            <input type = "Button" value="글목록" 
                	OnClick="location.href='list.jsp" />
	        </div>
	    </fieldset>
    </form>
</div>

</body>
</html>
</head>