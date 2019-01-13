<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<%
    	if(session.getAttribute("login")==null){
    		request.setAttribute("msg", "로그인 후 사용 가능합니다.");
    		RequestDispatcher rd = request.getRequestDispatcher("login.jsp");
    		rd.forward(request, response);
    	}
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


	</style>

</head>
<body>
		<jsp:include page="/company/home.jsp"/>
		
<hr>
<h3>회원 마이 페이지</h3>
<hr>
<div>
	
			<div class="image"></div>
			<p><span>회원번호</span>${login.idx }</p>
			<p><span>회원아이디</span>${login.id }</p>
			<p><span>회원이름</span>${login.name }</p>




</div>
</body>
</html>