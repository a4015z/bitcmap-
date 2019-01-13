<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%
    request.setCharacterEncoding("utf-8");
    %>
    <jsp:useBean id="memberInfo" class="member.MemberInfo"/>
    <jsp:setProperty property="*" name="memberInfo"/>
    <jsp:setProperty property="password" name="memberInfo"/>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>회원정보창</title>
</head>

<body>
<h1>회원 정보 </h1>

<table  border="1">
			<tr>
				<td>아이디</td>
				<td><input type="text" name="id" size="10"
				value="<%=memberInfo.getId() %>"></td>
					</tr>
					<tr>
				<td>주소s</td>
				<td><input type="text" name ="address" size="10"
				value="<%=memberInfo.getAddress() %>"
				></td>
		</tr>
			<tr>
				<td>이름</td>
				<td><input type="text" name="name" size="10"
				value="<%=memberInfo.getName() %>"></td>
				<td>EL 사용 : ${memberInfo.name}</td>
				</tr>
				
				
				<tr>
				<td>이메일</td>
				<td><input type="text" name="email" size="10"
				value="<%=memberInfo.getEmail() %>"></td>
			</tr>
		</table>
</body>
</html>