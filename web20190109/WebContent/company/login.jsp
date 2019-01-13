<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>홈창</title>
<style>

.box{
height:30px;
}
td {
	border: solid 1px gold;
}

a {
	color: black;
	font-size: 20px;
	text-decoration: none;
	text-align: center;
	margin: 30px;v
	padding-left: 50px;
}
	form{
		
		width: 350px;
		margin: auto;
	}
</style>

</head>
<body>
	<jsp:include page="/company/home.jsp"/>
	<hr>
	<h3>회원 로그인</h3>
	<hr>
	<br>
	<form action="loginAction.jsp" method="post">
			<label for="id">아이디(이메일)</label>
			<input type="text" name="id" id="id" /><br>
			<label for="password">비밀번호&emsp;    &emsp;   </label>
			<input type="password" name="password" id="password" /><br><br>
<label><input type="submit" value="로그인" style="width:70px; height:50px; margin-left:80px;"></label>
	</form>
</body>
</html>