<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>회원가입 입력 폼</title>
</head>
<body>
	<form action="regProcess.jsp" method="post">
		<h1>회원가입</h1>
		<table  border="1">
			<tr>
				<td>아이디</td>
				<td><input type="text" name="id" size="10"></td>
					</tr>
					<tr>
				<td>주소</td>
				<td><input type="text" name ="address" size="10"></td>
		</tr>
			<tr>
				<td>이름</td>
				<td><input type="text" name="name" size="10"></td>
				</tr>
				
				
				<tr>
				<td>이메일</td>
				<td><input type="text" name="email" size="10"></td>
			</tr>
		</table>
		<input type="submit" value="가입">
</body>
</html>