<%@page import="java.util.Enumeration"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>getSessions</title>
</head>
<body>

<h3>세션에 설정된 모든 값을 얻어오기</h3>
<%--제네릭 사용--%>
<%
	Enumeration<String> names = session.getAttributeNames();
	while(names.hasMoreElements()){
		String name = names.nextElement().toString(); //여기 굳이 toString()메서드가 없어도 된다고 한다.
		String value = session.getAttribute(name).toString();
		out.println(name + " : " + value + "<br/>");
	}
%>
</body>
</html>