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


 
<% response.sendRedirect("BoardServlet?command=board_list"); %>

<!--    
<a href="BoardServlet?command=board_list">게시판 리스트</a>
-->
</body>
</html>