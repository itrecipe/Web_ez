<%@page import="java.util.Date"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<!DOCTYPE html>
<html lang="ko">
<head>
<meta charset="UTF-8">
<title>28_jstlFmt.jsp</title>
</head>
<body>
<c:set var="now" value="<%=new java.util.Date()%>"/>
<%--setLocale은 지역을 처리하는 fmt태그, 
  --currency는 화폐 단위를 표시하며,
  --formatNumber은 groupingUsed속성이 defaul가 true가 되면
	세자리 단위로 ,를 표시하여 출력한다. 
--%>
<pre>
	톰캣 서버의 기본 로케일 : <%=response.getLocale()%> <%--getLocale() : 지역 정보를 표시한다. --%>
	
	<fmt:setLocale value="ko_kr"/>
	로케일을 한국어로 설전한 후 로케일 확인 : <%=response.getLocale()%>
	통화(currency) : <fmt:formatNumber value="10000" type="currency"/>
	날짜 : <fmt:formatDate value="${now}"/>
	
	<fmt:setLocale value="ja_JP"/>
	로케일을 일본어로 설정 후 로케일 확인 : <%=response.getLocale()%>
	통화(currency) : <fmt:formatNumber value="10000" type="currency"/>
	날짜 : <fmt:formatDate value="${now}"/>
	
	<fmt:setLocale value="en_US"/>
	로케일을 일본어로 설정 후 로케일 확인 : <%=response.getLocale()%>
	통화(currency) : <fmt:formatNumber value="10000" type="currency"/>
	날짜 : <fmt:formatDate value="${now}"/>
</pre>
</body>
</html>