<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>07_addition</title>
</head>
<body>
고전적인 방식
<!-- setAttribute로 설정된 Attribute는 getAttribute(속성명)로 반환 (반환타입이 object이므로 형변환) -->
<%
int num1 = (Integer) request.getAttribute("num1");
int num2 = (Integer) request.getAttribute("num2");
%>
<%=num1 %>+<%=num2 %> = <%=num1+num2 %> <br>

<!-- 설정시 request에 속성을 저장 했으므로 requestScope.num1이나 El의 내장 객체는 자동 처리 -->
<!-- 형변환 없이도 속성 이름만으로 사용 -->
EL 방식 : ${num1} + ${requestScope.num2} = ${add}  
</body>
</html>