<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="UTF-8">
		<title>향기로운 글자 서향</title>
		<link rel="stylesheet" href="resources/css/loginstyle.css?after">
	</head>
	<body>
		<div id = "background" style="background: url(resources/img/background.png)">
		</div>
		<div id="loginbox">
			<div id="title">
				<button type="button" class="title" onclick="location.href='Main.jsp'"><img src="resources/img/logintitle.png"></button>
			</div>
		</div>
		<div id="content">
			<div class="idname">
				<h2>아이디</h2>
			</div>
			<input type="text" id="id" name="id" class="id">
			<div class="pwname">
				<h2>패스워드</h2>
			</div>
			<input type="text" id="pw" name="pw" class="pw">			
		</div>
		<div id="login">
			<button type="button" class="login" onclick="location.href='login_check.jsp'"><img src="resources/img/loginbutton.png"></button>
		</div>
	</body>
</html>