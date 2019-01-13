<%@ page import="member.MemberInfo" %>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
	
	

<!-- 유즈빈 ,리퀘스트 겟파라미터등 데이터 받는 방법많다   한글 이있다면 우선 인코딩-->
<%
	String userId = request.getParameter("uid");
	String userPw = request.getParameter("upw");

	if (userId != null && userPw != null && userId.equals(userPw)) {
		/* 로그인 인증 성공 
		Session 속성으로 사용자 정보를 저장  
		id 값으로 DB 에서 검색 - > 결과가 null 이 아니어야 한다 .
		특정 멤버 들을 가져올수 있다.
		DB 에 있는 pw 와 사용자가 입력한 pw 비교  == > 같으면 인증 성공 
		세션에 사용자 정보를 저장 
		*/
		
		MemberInfo memberInfo = new MemberInfo();

		memberInfo.setId("cool");
		memberInfo.setName("쿨");

		memberInfo.setPassword("");
		
		
		session.setAttribute("loginInfo",memberInfo);
		
		response.sendRedirect("mypage.jsp");
	}else{
		
		response.sendRedirect("loginForm.jsp");
	}
%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<h1>로그인 성공 </h1>
</body>
</html>