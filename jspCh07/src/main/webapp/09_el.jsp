<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>09_el.jsp</title>
</head>
<body>
<%--빈 클래스의 객체를 setAttribute()로 설정할시 attribute(속성)이름.빈클래스의 멤버변수명
--request객체에 setAttribute했으므로 request의 EL 내장객체인 requestScope.name이나, 
생략가능, .연산자 대신["attribute명"]으로도 사용가능하다.--%>

이름 : ${member.name}<br/>
아이디 : ${member["userid"]}
</body>
</html>