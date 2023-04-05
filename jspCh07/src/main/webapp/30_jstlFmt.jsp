<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<!DOCTYPE html>
<html lang="ko">
<head>
<meta charset="UTF-8">
<title>30_jstlFmt.jsp</title>
</head>
<body>
<%--post방식으로 전달된 한글 깨짐 방지시 fmt:requestEncoding태그도 사용할수 있다.--%>
<fmt:requestEncoding value="UTF-8"/>
이름 : <c:out value="${param.name}"/>
</body>
</html>