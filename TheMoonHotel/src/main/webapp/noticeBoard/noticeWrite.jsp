<%@page import="com.moon.guest.model.GuestSerivce"%>
<%@page import="com.moon.guest.model.GuestVO"%>
<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
<jsp:include page="../inc/top.jsp"></jsp:include>
<style type="text/css">
#div1 {
	width: 900px;
}

#formFile {
	width: 400px;
}

#btn1 {
	clear: none;
}
</style>
<script type="text/javascript"
	src="../js/smartEdit/js/service/HuskyEZCreator.js" charset="utf-8"></script>
<script type="text/javascript" src="../js/jquery-3.6.1.min.js"></script>
<script type="text/javascript">
	var oEditors = [];
	var editor_object = [];
	$(function() {
		nhn.husky.EZCreator.createInIFrame({
			oAppRef : oEditors,
			elPlaceHolder : "content",
			sSkinURI : "../js/smartEdit/SmartEditor2Skin.html",
			htParams : {
				bUseToolbar : true,
				bUseVerticalResizer : true,
				bUseModeChanger : true,
				fOnBeforeUnload : function() {
				}
			},
			fCreator : "createSEditor2"
		});
		
		/* $("#frm").submit(function(){
			var content = $('#content').html();
			$("#asd").val() = content;
		}); */
		
	    $("#sub1").click(function(){
	        //id가 smarteditor인 textarea에 에디터에서 대입
	          oEditors.getById["content"].exec("UPDATE_CONTENTS_FIELD", []);
	        $('#frm').submit();
	    });
		
		$("#btn1").click(function(){
			location.href="noticeBoardList.jsp";
		});
	});

</script>
<%
request.setCharacterEncoding("utf-8");
GuestSerivce guestSerivce=new GuestSerivce();
String userid = (String) session.getAttribute("userid");
GuestVO guestVo = guestSerivce.selectByUserid(userid);
int guestNo = guestVo.getGuestNo();
%>
<br>
<br>
<br>
<div id="div1" class="container text-left">
	<form id="frm" method="post" enctype="multipart/form-data" action="noticeWrite_ok.jsp">
	<input type="hidden" name = "guestNo" value=<%=guestNo %>>
		<fieldset>
			<legend>글 쓰기</legend>
			<div class="form-group">
				<label for="exampleSelect1" class="form-label mt-4">게시판 목록</label> <select
					class="form-select" id="selBoard">
					<option>공지사항</option>
				</select>
			</div>
			<div class="form-group">
				<label for="exampleTextarea" class="form-label mt-4"></label> 
				<input type="text" class="form-control" id="title1" name="title" 
					placeholder="제목을 입력하세요">
			</div>
			<div class="form-group">
				<label for="exampleTextarea" class="form-label mt-4"></label>
				<textarea id="content" class="form-control" rows="6" name="content"
					placeholder="내용을 입력하세요"></textarea>
			</div>
			<div class="form-group">
				<label for="formFile" class="form-label mt-4">파일 첨부</label> <input
					class="form-control" type="file" id="formFile" name="upfile">
			</div>
			<button id="sub1" type="button" class="btn btn-dark">작성</button>
			<button id="btn1" type="button" class="btn btn-dark">목록</button>
		</fieldset>
	</form>
</div>

<br>
<br>
<br>
<jsp:include page="../inc/footer.jsp"></jsp:include>