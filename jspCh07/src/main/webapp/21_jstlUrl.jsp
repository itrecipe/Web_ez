<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html lang="ko">
<head>
<meta charset="UTF-8">
<title>21_jstlUrl.jsp</title>
</head>
<body>

<%--페이지 이동시 response.sendRedirect()로 이동한다.(실행시 바로 넘어감) --%>
<c:redirect url="20_jstlUrl.jsp"></c:redirect>

</body>
</html>