<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>scope</title>
</head>
<body>
<%
pageContext.setAttribute("name", "page man"); //jsp의 페이지 관련 내장객체
request.setAttribute("name", "request man"); //jsp request 내장 객체
request.setAttribute("name", "session man"); //jsp session 내장 객체
application.setAttribute("name", "application man"); //jsp appliction 내장 객체
%>
<%--동일 속성 name이름만 사용하게되면 가장 빨리 추출하는 pageScope것을 선택한다. --%>
name : ${name}
<hr/>
<%--EL의 내장 객체별로 속성을 사용한다. --%>
page 속성 : ${pageScope.name}<br/>
request 속성 : ${requestScope.name}<br/>
session 속성 : ${sessionScope.name}<br/>
application 속성 : ${applicationScope.name}<br/>
</body>
</html>