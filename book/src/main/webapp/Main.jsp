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
						onclick="location.href='login.jsp'" class="roofvalue1">로그인</button></li>
				<li class="roofvalue1"><button type="button"
						onclick="location.href='sign_up.jsp'" class="roofvalue1">회원가입</button></li>
				<li class="roofvalue1"><button type="button"
						onclick="location.href=''" class="roofvalue1">고객센터</button></li>
				<li class="roofvalue1"><button type="button"
						onclick="location.href=''" class="roofvalue1">결제화면</button></li>
			</ul>
		</div>
		<hr class="roofbottom">
		<div id="top">
			<div id="title">
				<img src="resources/img/title.png">
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
				<!-- 광고 넣을 부분 -->
				광고
			</div>
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
			<hr class="selectline">
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