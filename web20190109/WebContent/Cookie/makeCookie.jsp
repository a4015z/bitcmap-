<%@page import="java.net.URLEncoder"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%
	//저장할 데이터를 가지는 쿠키 객체 생성
	// 쿠키에 저장되는 값은 한글처리 불가 : 인코딩 후 저장해어야한다.
	Cookie cookie = new Cookie("name", URLEncoder.encode("종현", "UTF-8"));

	// 응답 객체에 쿠키를 넣어준다 

	response.addCookie(cookie);
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<h1>쿠키 생성</h1>



	<h3>

		<%=cookie.getName()%>
		쿠기에 저장된 값:
		<%=cookie.getValue()%>

		<br>
		<Br> <a href="viewCookie.jsp">쿠키정보보기</a>






	</h3>




</body>
</html>