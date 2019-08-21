<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="UTF-8">
		<title>향기로운 글자 서향</title>
		<link rel="stylesheet" href="resources/css/style.css?after">
	</head>
	<body>
		<div id="roof">
			<ul class="rooflist">
				<li class="roofvalue1"><button type="button"
						onclick="location.href='login.jsp'" class="roofvalue2">로그인</button></li>
				<li class="roofvalue1"><button type="button"
						onclick="location.href='sign_up.jsp'" class="roofvalue2">회원가입</button></li>
				<li class="roofvalue1"><button type="button"
						onclick="location.href=''" class="roofvalue2">고객센터</button></li>
				<li class="roofvalue1"><button type="button"
						onclick="location.href=''" class="roofvalue2">결제화면</button></li>
			</ul>
		</div>
		<div id="top">
			<div id="title">
				<a href="Main.jsp" style="text-decoration: none"><img src="resources/img/title.png"></a>
			</div>
			<div id="search">
				<input type="text" class="srcbar" name="srcbar" id="srcbar"
					placeholder="검색어를 입력해주세요.">
				<button type="button" id="btn" class="btn">
					<img src="resources/img/search.png">
				</button>
			</div>
			<div class="word">
				<ul class="hotword">
					<li class="hotvalue"><a href="">검색어1</a></li>
					<li class="hotvalue"><a href="">검색어2</a></li>
					<li class="hotvalue"><a href="">검색어3</a></li>
					<li class="hotvalue"><a href="">검색어4</a></li>
				</ul>
			</div>
			<div id="ad">
	            <div class="mySlides fade">
	               <div class="numbertext">1 / 3</div>
	               <img src="resources/img/first.png" style="width: 100%">
	            </div>
	
	            <div class="mySlides fade">
	               <div class="numbertext">2 / 3</div>
	               <img src="resources/img/second.png" style="width: 100%">
	            </div>
	      
	            <div class="mySlides fade">
	               <div class="numbertext">3 / 3</div>
	               <img src="resources/img/third.png" style="width: 100%">
	            </div>
	         </div>
	         
	         <script>
	            var slideIndex = 0;
	            showSlides();
	      
	            function showSlides() {
	                var i;
	                var slides = document.getElementsByClassName("mySlides"); // mySlides fade 의 값을 가져옴 (fade는 이펙트 효과)
	                for (i = 0; i < slides.length; i++) {
	                   slides[i].style.display = "none";  
	                }
	                slideIndex++;
	                if (slideIndex > slides.length) {slideIndex = 1}    
	                slides[slideIndex-1].style.display = "block";  
	                setTimeout(showSlides, 4000); // 1000 = 1sec
	            }
	        </script>
		</div>
		<div id="category">
			<ul class="categorymenu">
				<li class="categoryvalue"><a href="" style="color: white; text-decoration: none;">국내도서</a></li>
				<li class="categoryvalue"><a href="" style="color: white; text-decoration: none;">해외 도서</a></li>
				<li class="categoryvalue"><a href="" style="color: white; text-decoration: none;">중고 게시판</a></li>
				<li class="categoryvalue"><a href="" style="color: white; text-decoration: none;">서점 위치</a></li>
				<li class="categoryvalue"><a href="" style="color: white; text-decoration: none;">고객 센터</a></li>
			</ul>
		</div>
		<div id="middle">
			<div id="select">
				<div class="select1"></div>
				<div class="select2"></div>
				<div class="select3"></div>
				<div class="select4"></div>
				<div class="select5"></div>
				<div class="select6"></div>
			</div>
			<div class="newsbar">
			</div>
		</div>
		<hr class="halfline">
		<div id="half">
			<div class="halfvalue1">
			</div>
			<div class="halfvalue2">
			</div>
			<div class="halfvalue3">
			</div>
		</div>
		<hr class="halfvalueline">
		<div id="bottom">
		</div>
		<div id="footer">	
		</div>
	</body>
</html>