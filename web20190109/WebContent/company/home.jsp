<%@ page import="oracle.User" %>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<%
	User u = (User)session.getAttribute("login");
	boolean loginStatus = u == null? false : true;
	String menuL = loginStatus ? "로그아웃" : "로그인";
	String menuH = loginStatus ? "logout.jsp" : "login.jsp";
%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>홈창</title>
<style>


a{

   color:black;
	font-size: 20px; 
	text-decoration: none;
	text-align: center;
	margin: 30px;
	padding-left:50px;

}
td a:hover{
		color: pink;
	}

	</style>

</head>
<body>
	<h1><a href="home.jsp" style="font-size: 30px; margin-right:50px;">Open Project</a></h1>
<hr>
<table>
<tr>
<td><a href="join.jsp">회원가입</a></td>
<td><a href="logout.jsp">로그아웃</a></td>
<td><a href="Mypage.jsp">회원마이페이지(회원)</a></td>
<td><a href="memberList.jsp">회원리스트(회원)</a></td>
<td><a href="empList.jsp">사원리스트</a></td>
<td><a href="EmpRegister.jsp">사원등록</a></td>


</tr>


</table>
<hr>
</body>
</html>
