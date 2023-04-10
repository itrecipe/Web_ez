<%@page import="javax.naming.*" %>
<%@page import="java.sql.Connection"%>
<%@page import="javax.sql.DataSource"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%> 
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>   
<!DOCTYPE html>
<html lang="ko">
<head>
<meta charset="UTF-8">
<title>01_dbcp</title>
</head>
<body>

<h4>디비 연동</h4>
	<%		
		Context initContext = new InitialContext();		
		Context envContext = (Context) initContext.lookup("java:/comp/env");		
		DataSource ds = (DataSource)envContext.lookup("jdbc/Oracle11g");
		Connection conn = ds.getConnection();
		out.println("DBCP 연동 성공");
	%>
</body>
</html>