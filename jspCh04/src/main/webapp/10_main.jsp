<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>main</title>
</head>
<body>
<%--지시자의 @include file="10_header.jsp" 
	이렇게도 쓸 수 있는데 (자원 공유)가 가능하다.
	아래 include코드는 자원공유가 안된다. 
--%>
<jsp:include page="10_header.jsp"/>
메인화면<br>
<a href="10_sub.jsp">서브 페이지로 이동</a>
<jsp:include page="10_footer.jsp"/>
</body>
</html>