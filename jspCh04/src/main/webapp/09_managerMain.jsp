<%@ page import="java.net.URLDecoder" %>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>managerMain</title>
</head>
<body bgcolor="yellow">
<h3>관리자 로그인 성공</h3>
<!-- 값을 넣을땐 incode, 읽어올때는 decode를 사용
	 받는 측에서는 한글을 decode한다.     
 -->
<%=URLDecoder.decode(request.getParameter("userName"), "UTF-8") %>
(<%=request.getParameter("userID") %>)님 환영해요
</body>
</html>