<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html lang="ko">
<head>
<meta charset="UTF-8">
<title>16_movieList.jsp</title>
</head>
<body>

<%
String[] movieList = {"타이타닉", "시네마 한국", "혹성 탈출", "킹콩"};
pageContext.setAttribute("movieList", movieList);
%>
<%--varStatus에서 frist속성이 처음 요소이면 true, last는 마지막요소이면 true가 반환된다. --%>
<ul>
	<c:forEach var="movie" items="${movieList}" varStatus="status">
		<c:choose>
			<c:when test="${status.first}">
				<li style="font-weight: bold; color: red;">${movie}</li>
			</c:when>
			<c:otherwise>
				<li>${movie}</li>
			</c:otherwise>
		</c:choose>
	</c:forEach>
</ul>
<%--not연산자는 논리 연산자,  --%>
<c:forEach var="move" items="${movieList}" varStatus="status">${movie}
<c:if test="${not status.last}">,</c:if>
</c:forEach>

</body>
</html>