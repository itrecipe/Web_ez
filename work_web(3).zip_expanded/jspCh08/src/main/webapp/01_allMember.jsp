<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.Connection"%>
<%@page import="java.sql.DriverManager"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>

<%!
    //선언부는 첫 방문자에 의해서 단 한번 수행합니다.
    //가능하면 doctype위에 작성
	Connection conn = null;
	Statement stmt = null;
	ResultSet rs = null;
	String url = "jdbc:oracle:thin:@localhost:1521:XE";
	String uid = "scott";
	String pass = "tiger";
	String sql = "select * from member";
%>
<!DOCTYPE html>
<html lang="ko">
<head>
<meta charset="UTF-8">
<title>01_allMember</title>
</head>
<body>

<table width='800' border='1'>
	<tr>
		<th>이름</th>
		<th>아이디</th>
		<th>암호</th>
		<th>이메일</th>
		<th>전화번호</th>
		<th>권한(1:관리자, 2:일반회원)</th>
	</tr>
	<%
	try {
		
		Class.forName("oracle.jdbc.driver.OracleDriver"); //드라이버 로딩
		conn = DriverManager.getConnection(url, uid, pass); 
		//로딩드라이버관리클래스인 DriverManager로 Connection객체 생성,데이토베이스서버와 접속
		stmt = conn.createStatement(); //SQL 실행 객체인 Statement객체를 Connection객체 메서드로 만들어줌
		rs = stmt.executeQuery(sql); //sql실행객체의 메서드인 executeQuery(sql문)으로 sql실행하고 결과를 ResultSet으로 받음
		while (rs.next()) { //next()는 다음행으로 이동(다음행이 있으묜 true)
			out.println("<tr>");
			out.println("<td>" + rs.getString("name") + "</td>"); //DB의 데이터형이 varchar2,char일시는 getString("컬럼이름")
			out.println("<td>" + rs.getString("userid") + "</td>");
			out.println("<td>" + rs.getString("pwd") + "</td>");
			out.println("<td>" + rs.getString("email") + "</td>");
			out.println("<td>" + rs.getString("phone") + "</td>");
			out.println("<td>" + rs.getInt("admin") + "</td>"); //DB의 데이터형이 number일시 getInt("컬럼명")
			out.println("</tr>");
		} //while의 끝
	} catch (Exception e) {
		e.printStackTrace();
	} finally {
		try {
			if (rs != null)
				rs.close();
			if (stmt != null)
				stmt.close();
			if (conn != null)
				conn.close();
		}catch (Exception e) {
			e.printStackTrace();
		}
	} //finally의 끝
	%>
</table>
</body>
</html>