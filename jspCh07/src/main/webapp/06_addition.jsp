<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>addition</title>
</head>
<body>

<%--스크립트릿에서의 복잡한 자바코드 --%>
<%
String str1 = request.getParameter("num1");
String str2 = request.getParameter("num2");
int num1 = Integer.parseInt(str1); //정수로 형변환
int num2 = Integer.parseInt(str2); //정수로 형변환
%>
<%=num1%> + <%=num2%> = <%=num1 + num2%>
<hr/>
EL 방식 :
<%--보다 깔끔하고 간단한 코드, getParameter로 처리되는 값을 처리하는 EL의 내장객체 param을 사용--%>
${param.num1} + ${param.num2} = ${param.num1 + param.num2}
</body>
</html>