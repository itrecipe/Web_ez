<%@ page import="java.util.*" %>
<%@page import="org.apache.naming.java.javaURLContextFactory"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<!DOCTYPE html>
<html lang="ko">
<head>
<meta charset="UTF-8">
<title>26_jstlFmt.jsp</title>
</head>
<body>

<pre>
<%--현재 시간 표시 객체 now --%>
<c:set var="now" value="<%=new java.util.Date()%>"></c:set> 
\${now} : ${now}
<%--Wed Apr 05 09:44:54 KST 2023
  --fmt태그라이브러리 사용시 그 위치에 출력한다. 
  --default가 type은 date, timeStyle, dateStyle은 default(medium)--%>
<fmt:formatDate value="${now}"></fmt:formatDate>
<%--2023.4.5--%>
date : <fmt:formatDate value="${now}" type="date"></fmt:formatDate>
time : <fmt:formatDate value="${now}" type="time"></fmt:formatDate>
both : <fmt:formatDate value="${now}" type="both"></fmt:formatDate>
default : <fmt:formatDate value="${now}" type="both" dateStyle="default"
			timeStyle="default"></fmt:formatDate>
short : <fmt:formatDate value="${now}" type="both" dateStyle="short"
			timeStyle="short"></fmt:formatDate>
medium : <fmt:formatDate value="${now}" type="both" dateStyle="medium"
			timeStyle="medium"></fmt:formatDate>
long : <fmt:formatDate value="${now}" type="both" dateStyle="long"
			timeStyle="long"></fmt:formatDate>
full : <fmt:formatDate value="${now}" type="both" dateStyle="full"
			timeStyle="full"></fmt:formatDate>
pattern="yyyy년 MM월 dd일 hh시 mm분 ss초" :
<fmt:formatDate value="${now}" pattern="yyyy년 MM월 dd일 hh시 mm분 ss"></fmt:formatDate>
<%--fmt:formatDate에서 value는 Date객체를 사용하고 기본형은 type=date, dateStyle="default"이다.
    pattren에 yyyy년 MM월 dd일 hh시 mm분 ss초 형식으로 사용이 제일 무방하다.
  --import룰 하려면 스크립트 안에서 클래스명 일부를 입력하고, CTRL+Space를 누르면 자동으로 import가 된다. 
--%>

</pre>
</body>
</html>