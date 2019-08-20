<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="UTF-8">
		<title>향기로운 글자 서향</title>
		<link rel="stylesheet" href="resources/css/sign_upstyle.css?after">
		<script src="http://dmaps.daum.net/map_js_init/postcode.v2.js"></script>
		<script>
		    function searchAddress() {
		        new daum.Postcode({
		            oncomplete: function(data) {
		                // 팝업에서 검색결과 항목을 클릭했을때 실행할 코드를 작성하는 부분.
		
		                // 각 주소의 노출 규칙에 따라 주소를 조합한다.
		                // 내려오는 변수가 값이 없는 경우엔 공백('')값을 가지므로, 이를 참고하여 분기 한다.
		                var addr = ''; // 주소 변수
		                var extraAddr = ''; // 참고항목 변수
		
		                //사용자가 선택한 주소 타입에 따라 해당 주소 값을 가져온다.
		                if (data.userSelectedType === 'R') { // 사용자가 도로명 주소를 선택했을 경우
		                    addr = data.roadAddress;
		                } else { // 사용자가 지번 주소를 선택했을 경우(J)
		                    addr = data.jibunAddress;
		                }
		
		                // 사용자가 선택한 주소가 도로명 타입일때 참고항목을 조합한다.
		                if(data.userSelectedType === 'R'){
		                    // 법정동명이 있을 경우 추가한다. (법정리는 제외)
		                    // 법정동의 경우 마지막 문자가 "동/로/가"로 끝난다.
		                    if(data.bname !== '' && /[동|로|가]$/g.test(data.bname)){
		                        extraAddr += data.bname;
		                    }
		                    // 건물명이 있고, 공동주택일 경우 추가한다.
		                    if(data.buildingName !== '' && data.apartment === 'Y'){
		                        extraAddr += (extraAddr !== '' ? ', ' + data.buildingName : data.buildingName);
		                    }
		                    // 표시할 참고항목이 있을 경우, 괄호까지 추가한 최종 문자열을 만든다.
		                    if(extraAddr !== ''){
		                        extraAddr = ' (' + extraAddr + ')';
		                    }
		                    // 조합된 참고항목을 해당 필드에 넣는다.
		                    document.getElementById("sample6_extraAddress").value = extraAddr;
		                
		                } else {
		                    document.getElementById("sample6_extraAddress").value = '';
		                }
		
		                // 우편번호와 주소 정보를 해당 필드에 넣는다.
		                document.getElementById('sample6_postcode').value = data.zonecode;
		                document.getElementById("sample6_address").value = addr;
		                // 커서를 상세주소 필드로 이동한다.
		                document.getElementById("sample6_detailAddress").focus();
		            }
		        }).open();
		    }
		</script>
	</head>
	<body id="body">
		<div id ="title">
			<a href="Main.jsp" style="text-decoration: none"><img src="resources/img/sign_uptitle.png"></a>
		</div>
		<div id = "picture">
			<img src="resources/img/back.png">
		</div>
		<form action="insert.do">
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
				<input type="text" name="postcode" class="addressvalue">
				<input type="button" onclick="searchAddress()" value="우편번호 찾기" class="searchPostcode">
				<input type="text" name="address" class="addressvalue2">
				<input type="text" name="detailAddress" class="addressvalue3">
			</div>
			<div class="interest">
				<div class="interesttext">관심도서</div>
				<input type="text" name="interest" class="interestvalue">
			</div>
			<div class="confirm">
				<input type="submit" value="회원가입" class="confirmbtn">
			</div>
		</div>
		</form>
	</body>
</html>