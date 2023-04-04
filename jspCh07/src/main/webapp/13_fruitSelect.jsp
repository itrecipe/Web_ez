<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html lang="ko">
<head>
<meta charset="UTF-8">
<title>13_fruitSelect.jsp</title>
</head>
<body>
<%--자바의 switch문과 유사하다
  --c:choose, c:when, c:otherwise --%>
<c:choose>
	<c:when test="${param.fruit == 1}">
		<span style="color: red;">사과</span>
	</c:when>

	<c:when test="${param.fruit == 2}">
		<span style="color: green;">사과</span>
	</c:when>

	<c:when test="${param.fruit == 3}">
		<span style="color: blue;">바나나</span>
	</c:when>
	<c:otherwise>
		<span style="color: orange;">기타 색(오렌지)</span>
	</c:otherwise>
</c:choose>
</body>
</html>