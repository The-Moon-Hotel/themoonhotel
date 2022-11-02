<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<jsp:include page="../inc/top.jsp"></jsp:include>

<link
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.2/dist/css/bootstrap.min.css"
	rel="stylesheet"
	integrity="sha384-Zenh87qX5JnK2Jl0vWa8Ck2rdkQ2Bzep5IDxbcnCeuOxjzrPF/et3URy9Bv1WTRi"
	crossorigin="anonymous">

<p style="font-size: 120%; text-align: center; margin-top:20px;" >회원 정보 조회</p>

<table class="table" style="width: 800px; margin:auto;">
  <thead>
    <tr>
      <th scope="col">회원번호</th>
      <th scope="col">이름</th>
      <th scope="col">아이디</th>
      <th scope="col">이메일</th>
      <th scope="col">전화번호</th>
      <th scope="col">가입날짜</th>
    </tr>
  </thead>
  <tbody>
    <tr>
      <td>0001</td>
	  <td>홍길동</td>
	  <td><a href="guestDetail.jsp">hong1234</a></td>
	  <td>honghong@naver.com</td>
	  <td>010-1234-1004</td>
	  <td>2022-11-01</td>	
    </tr>
    <tr>
      <td>0001</td>
	  <td>홍길동</td>
	  <td><a href="guestDetail.jsp">hong1234</a></td>
	  <td>honghong@naver.com</td>
	  <td>010-1234-1004</td>
	  <td>2022-11-01</td>	
    </tr>
  </tbody>
</table>
<div class="guestSearch" style="text-align: center; padding: 10px">
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
<jsp:include page="../inc/footer.jsp"></jsp:include>
