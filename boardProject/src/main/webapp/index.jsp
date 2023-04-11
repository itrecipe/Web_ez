<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<!DOCTYPE html>
<html lang="ko">
<head>
<meta charset="UTF-8">
<title>index</title>
</head>
<body>

<!-- 프로젝트 실행시 맨처음 페이지 -->
<% response.sendRedirect("BoardServlet?command=board_list");%>

<!-- 테스트를 위해 클릭시 첫 페이지로 이동하도록 처리 -->

<!--
<a href="BoardServlet?command=board_list">게시판 리스트</a>
-->

</body>
</html>