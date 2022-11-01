<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<jsp:include page="inc/top.jsp"></jsp:include>
<link rel="stylesheet" href="css/top.css">

<style>

	.rooms{
		position:relative;
		font-size: 30px;
		margin: 350px;
		margin-top: 100px;
	}
	
	.rooms img{
		width: 700px;
		height: 350px;
	}
	
	.roomtype{
		font-size: 20px;
		margin: 20px;
	}
	
	.look{
		position: absolute;
		font-size: 15px;
		background: #DBD5CA;
	}

	
	pre{
		font-size: 15px
	}
	
	.deluxe{
		position: absolute;
		right: 0px;
		top: 105px;
	}
	
	.monogramsuit{
		position: absolute;
		right: 0px;
		top: 700px;
	}
	
		
</style>
<section style="width: 2200px; align:center;">
<article>

	<div class="carousel-item active ">
      <img src="images/hotel1.png" class="d-block  CarouselImage  " alt="..."
      	style="width: 2200px;height: 600px">
  
      	<!-- 객실안내 -->
		<div class="rooms">
    		<p><b>객실안내</b></p><br>
    		<div class="superior">
    			<img src="images/spr.png" >
    			<p class="roomtype"><b>수페리어</b></p>
    			<input type="button" class="look" value="이미지 보기"
    				style="left: 600px;top: 480px;">
    			<pre>   편안하고 아늑한 가장 기본적인 객실
    			
   전망: 바다(측면)
   위치: 본관 2~5층
   객실크기: 36m<sub>2</sub></pre>
    		</div>
    		<div class="deluxe">
    			<img src="images/dex.png" >
    			<p class="roomtype"><b>디럭스</b></p>
    			<input type="button" class="look" value="이미지 보기"
    				style="right: 8px;top: 370px;">
    			<pre>   이국적인 느낌의 안락한 객실
    			
   전망: 바다(전면, 측면)
   위치: 본관 2~5층, 6~10층
   객실크기: 36m<sub>2</sub></pre>
    		</div>
    		<br>
    		
    		<div class="suite">
    			<img src="images/room-suite.png" >
    			<p class="roomtype"><b>스위트룸</b></p>
    			<input type="button" class="look" value="이미지 보기"
    				style="left: 600px;bottom: 130px;">
    			<pre>   여유로운 공간감이 느껴지는 객실	
    			
   전망: 바다
   위치: 본관 2~10층
   객실크기: 56m<sub>2</sub></pre>
    		</div>
    		
    		<div class="monogramsuit">
    			<img src="images/monogram.png" >
    			<p class="roomtype"><b>모노그램 스위트</b></p>
    			<input type="button" class="look" value="이미지 보기"
    				style="right: 8px;bottom: 150px;">
    			<pre>   파라마노처럼 펼처진 바다를 바라볼 수 있는 객실
    			
   전망: 바다
   위치: 본관 7~10층
   객실크기: 72m<sub>2</sub></pre>
    		</div>
    		
    			
    	</div>
   
   	</div>
 
    

    <div style="height:2000px"></div>
    
    

	
	
</article>
</section>




<link rel="stylesheet" href="css/footer.css"> 
<jsp:include page="inc/footer.jsp" ></jsp:include>