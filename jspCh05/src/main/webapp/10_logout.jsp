<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>logout</title>
</head>
<body>
	<%
	session.invalidate(); //세션 완전 제거
	%>
	<script type="text/javascript">
		alert("로그아웃 되었다.");
		location.href = "10_loginForm.jsp";
	</script>
</body>
</html>