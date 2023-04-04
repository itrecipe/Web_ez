<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html lang="ko">
<head>
<meta charset="UTF-8">
<title>20_jstlUrl.jsp</title>
</head>
<body>

<%--value값을 var에 저장하여 다른 곳에서 EL로 사용한다. --%>
<c:url value="images/pic.jpg" var="data"></c:url>
<h3>${data}</h3>
<img src="${data}" width="150" height="150">
</body>
</html>