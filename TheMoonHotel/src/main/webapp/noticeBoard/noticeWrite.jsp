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
	$(function() {
		nhn.husky.EZCreator.createInIFrame({
			oAppRef : oEditors,
			elPlaceHolder : "txtCon",
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
		$('#btn1').click(function() {
			location.href = "noticeBoardList.jsp";
		});
	});
</script>
<%

%>
<br>
<br>
<br>
<div id="div1" class="container text-left">
	<form method="post" action="noticeWrite_ok.jsp">
		<fieldset>
			<legend>글 쓰기</legend>
			<div class="form-group">
				<label for="exampleSelect1" class="form-label mt-4">게시판 목록</label> <select
					class="form-select" id="selBoard">
					<option>공지사항</option>
				</select>
			</div>
			<div class="form-group">
				<label for="exampleInputEmail1" class="form-label mt-4"></label> <input
					type="email" class="form-control" id="title1" name="title" 
					placeholder="제목을 입력하세요">
			</div>
			<div class="form-group">
				<label for="exampleTextarea" class="form-label mt-4"></label>
				<textarea id="txtCon" class="form-control" rows="6" name="content"
					placeholder="내용을 입력하세요"></textarea>
			</div>
			<div class="form-group">
				<label for="formFile" class="form-label mt-4">파일 첨부</label> <input
					class="form-control" type="file" id="formFile">
			</div>
			<button id="sub1" type="submit" class="btn btn-dark">작성</button>
			<button id="btn1" type="button" class="btn btn-dark">목록</button>
		</fieldset>
	</form>
</div>

<br>
<br>
<br>
<jsp:include page="../inc/footer.jsp"></jsp:include>