<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>서블릿</title>
</head>
<body>
	<!-- 한 페이지에서 동일한 서블릿으로 get과 post로 요청하므로 서블릿은 doGet과 doPost모두 재정의 -->
	<form method="get" action="ms">
		<input type="submit" value="get 방식으로 호출하기">
	</form>
	<br/><br/>
	<form method="post" action="ms">
		<input type="submit" value="post 방식으로 호출하기">
	</form>
</body>
</html>