<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="UTF-8">
		<title>향기로운 글자 서향</title>
		<link rel="stylesheet" href="resources/css/sign_upstyle.css?after">
	</head>
	<body id="body">
		<div id ="title">
			<a href="Main.jsp" style="text-decoration: none"><img src="resources/img/sign_uptitle.png"></a>
		</div>
		<div id = "picture">
			<img src="resources/img/back.png">
		</div>
		<div id = "sign_up">
			<div class="id">
				<div class="idtext">ID</div>
				<input type="text" name="id" class="idvalue">
				<button type="button" onclick="location.href=''" class="check" style="text-decoration: none; color: white;">중복 확인</button>
			</div>
			<div class="pw">
				<div class="pwtext">PW</div>
				<input type="text" name="pw" class="pwvalue">
			</div>
			<div class="pwcheck">
				<div class="pwchecktext">PW확인</div>
				<input type="text" name="pwcheck" class="pwcheckvalue">
			</div>
			<div class="name">
				<div class="nametext">이름</div>
				<input type="text" name="name" class="namevalue">
			</div>
			<div class="tel">
				<div class="teltext">전화번호</div>
				<input type="text" name="tel" class="telvalue">
			</div>
			<div class="birth">
				<div class="birthtext">생년월일</div>
				<div class="birthvalue">
				<span style="float: left;">
					<select name="birthY">
						<%for(int i = 2019; i > 1900; i--){%>
						<option value="<%= i %>"><%=i%></option>
						<%}	%>
					</select> 년 &nbsp;
					<select name="birthM">
						<%for(int i = 1; i <= 12; i++){%>
						<option value="<%= i %>"><%= i %></option>
						<%}%>
					</select> 월 &nbsp;
					<select name="birthD">
						<%for(int i = 1; i <= 31; i++){%>
						<option value="<%= i %>"><%= i %></option>
						<%}%>
					</select> 일
				</span>
				</div>
				<div class="gendertext">성별</div>
				<div class="gender">
					<input type="radio" name="gender" value="male" checked>남자
					<input type="radio" name="gender" value="female">여자
				</div>
			</div>
			<div class="email">
				<div class="emailtext">이메일</div>
				<input type="text" name="emailID" class="emailvalue">
				<div class="emailSelect">
					<div class="eSelectBox">
						<select name="emailAdd" class="select">
							<option selected>이메일 선택</option>
							<option>@naver.com</option>
							<option>@daum.net</option>
							<option>@gmail.com</option>
							<option>@nate.com</option>
							<option>직접입력</option>
						</select>
					</div>
					<div class="eDirectBox">
						<input type="text" class="emailDirect">
					</div>
				</div>
			</div>
			<div class="address">
				<div class="addresstext">주소</div>
				<input type="text" name="address1" class="addressvalue">
				<input type="text" name="address2" class="addressvalue2">
			</div>
			<div class="interest">
				<div class="interesttext">관심도서</div>
				<input type="text" name="interest" class="interestvalue">
			</div>
		</div>
	</body>
</html>