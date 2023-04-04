<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>el</title>
</head>
<body>
<%--EL에서 사용 가능한 리터럴(값)--%>
정수명 : ${10}<br>
실수명 : ${5.6}<br>
문자열명 : ${"성윤정"}<br>
논리형 : ${true}<br>
null : ${null}<br>
<%--null값은 공백으로 표시한다.--%>
</body>
</html>