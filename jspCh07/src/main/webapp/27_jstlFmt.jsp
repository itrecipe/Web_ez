<%@page import="java.util.Date"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<!DOCTYPE html>
<html lang="ko">
<head>
<meta charset="UTF-8">
<title>27_jstlFmt.jsp</title>
</head>
<body>

<jsp:useBean id="now" class="java.util.Date"/>
<%--Date는 빈클래스 형식을 갖춘 클래스이고, 
  --now는 기본형 생성자로 만들어지는 객체이므로 현재 시작 표시 객체이다. 
--%>
<pre>
default : <c:out value="${now}"/>
<%--timeZone를 지정하지 않으면 해당 OS가 사용하는 timeZone을 사용한다. --%>
Korea KST : <fmt:formatDate value="${now }" type="both" dateStyle="full"
			timeStyle="full"/>
<%--timeZone fmt태그를 사용해 타임존을 지정한다. --%>
<fmt:timeZone value="GMT">
Swiss GMT : <fmt:formatDate value="${now }" type="both" dateStyle="full"
			timeStyle="full"/>
</fmt:timeZone>
<fmt:timeZone value="GMT-8">
NewYork GMT-8 : <fmt:formatDate value="${now }" type="both" dateStyle="full"
			timeStyle="full"/>
</fmt:timeZone>
</pre>
</body>
</html>