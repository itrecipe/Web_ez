<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<!DOCTYPE html>
<html lang="ko">
<head>
<meta charset="UTF-8">
<title>29_jstlFmt.jsp</title>
</head>
<body>

<%
request.setCharacterEncoding("UTF-8");
%>
이름 :
<%=request.getParameter("name") %>
${param.name}
</body>
</html>