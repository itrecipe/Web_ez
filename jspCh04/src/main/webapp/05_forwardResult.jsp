<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%!
	/* 선언 태그로 멤버 변수와 멤버 메서드를 선언한다.
	 * 스크립트릿에서 동일 명(로컬)으로 선언시 가려져서 안보인다.
	 * 선언부에서는 메서드를 이용해 초기값을 설정 하는 것은 안된다.
	*/
	String age = "23";
	String name = "kook";
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>forwardResult</title>
</head>
<body bgcolor="pink">

forward 방식으로 이동된 페이지<br/>
<%= request.getParameter("age") %>
<%= (String)request.getAttribute("name") %>
<%--form에서 입력된 값은 getParameter로 setAttribute로 설정한 값은
 getArrtibute로 반환한다. --%>
<%
	//로컬 변수
	String age1 = request.getParameter("age");
	String name1 = (String)request.getAttribute("name");
%>
<%--표현식은 로컬, 멤버 변수 모두 접근 및 사용가능 --%>
<%= age1 %>
<%= name1 %>
</body>
</html>