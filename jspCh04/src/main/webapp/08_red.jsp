<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>08_red.jsp</title>
</head>
<body bgcolor="red">
이 파일은 red.jsp이다.<br/>
브라우저에 배경색이 빨강으로 나타날까?<br/>
노랑으로 나타날까?<hr>
foward 액션 태그가 실행되면 해당 페이지 내용은 출력되지 않는다.<br/>
<jsp:forward page="08_yellow.jsp"/>
<%--jsp:forward액션 태그를 사용하여 forward 시킨다., dispatcher.forward(request, response)와 동일한 기능,
(즉, 페이지 이동시 주소창 변경이 없다.)
 --%>
</body>
</html>