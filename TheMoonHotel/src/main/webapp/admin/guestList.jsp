<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<jsp:include page="../inc/top.jsp"></jsp:include>

<link rel="stylesheet" type="text/css" href="../css/adminPage.css" />
<div class="searchGuest">
<p style="font-size: 120%; text-align: center; margin-top:20px;" >회원 정보 조회</p>
<div class="guestList">
	<table class = "guestTable"
		summary="회원 정보를 이름, 아이디로 조회">
		<colgroup>
			<col style="width:10%;" />
			<col style="width:10%;" />
			<col style="width:15%;" />
			<col style="width:25%;" />
			<col style="width:20%;" />		
			<col style="width:20%;" />		
		</colgroup>
		<thead>
		  <tr style="text-align:center">
		    <th scope="col">회원번호</th>
		    <th scope="col">이름</th>
		    <th scope="col">아이디</th>
		    <th scope="col">이메일</th>
		    <th scope="col">전화번호</th>
		    <th scope="col">가입날짜</th>
		  </tr>
		</thead> 
		<tbody>
			<tr style="text-align:center">
				<td>0001</td>
			    <td>홍길동</td>
			    <td><a href="guestDetail.jsp">hong1234</a></td>
			    <td>honghong@naver.com</td>
			    <td>010-1234-1004</td>
			    <td>2022-11-01</td>	  	 
		</tbody>
	</table>
</div>
<div class="guestSearch">
   	<form name="frmSearch" method="post" action='gusetList.jsp'>
        <select name="searchCondition">
            <option value="guestName">이름</option>
            <option value="guestId">아이디</option>
            <option value="guestNo">회원번호</option>
        </select>   
        <input type="text" name="searchKeyword" title="검색어 입력"
        	value="">   
		<input type="submit" value="검색">
    </form>
</div>
</div>
<jsp:include page="../inc/footer.jsp"></jsp:include>
