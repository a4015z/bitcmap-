<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>회원가입</title>
<style>

	label{
		width: 150px;
		display: inline-block;
		margin: 5px 0px;
	}
	
   .logindiv{

	width 100%;
	text-align: left;
	margin-left: 200px;
	}
	
.sub{		
		text-align: center; 
		width: 70px; 
		height: 50px;
		margin-left:150px;
	}


</style>

</head>
<body>

		<jsp:include page="/company/home.jsp"/>
<h3>회원가입</h3>
	<hr>
	<br>
	<div class="logindiv">
	<form action="joinAction.jsp" method="post">
		<label for="id">아이디(이메일)</label>
			
		<input type="text" name="id" id="id" /><br>
	
		<label for="password">비밀번호</label>
	
		<input type="password" name="password" id="password" /><br>
	
		<label for="name">이름</label>
	
		<input type="text" name="name" id="name" /><br>
	
		<label for="photo">사진</label>
	
		<input type="file" name="photo" id="photo" /><br><br>
		
		<input type="submit" class="sub" value="등록" />
	</form>
	</div>
	<script>
		<%if(request.getAttribute("msg") != null){%>
			alert('${msg}');
		<%}%>
	</script>
</body>
</html>