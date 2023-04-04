<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>requestInfo</title>
</head>
<body>
<%-- request내장 객체가 갖는 메서드들 --%>
컨텍스트 패스 : <%= request.getContextPath() %> <br/> <%-- /jspCh04는 프로젝트명 --%>
요청방식 : <%= request.getMethod() %> <br/> <%-- 주소창 요청은 GET방식 --%>
요청 URL : <%= request.getRequestURL() %> <br/> <%-- getRequestURL()은 전체 경로를 나타냄 --%>
<%-- http://localhost:8181/jspCh04/01_requestinfo.jsp 전체 경로 --%>
요청 URI : <%= request.getRequestURI() %> <br/>
<%-- /jspCh04/01_requestinfo.jsp 호스트명을 제외한 전체경로 --%>
서버명 : <%= request.getServerName() %> <br/> <%-- 서버명은 localhost --%>
프로토콜 : <%= request.getProtocol() %> <br/> <%-- 프로토콜은 http/1.1 --%>
</body>
</html>