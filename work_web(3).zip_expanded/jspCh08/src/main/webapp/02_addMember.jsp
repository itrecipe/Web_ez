<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.PreparedStatement"%>
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
	PreparedStatement pstmt = null;
	ResultSet rs = null;
	String url = "jdbc:oracle:thin:@localhost:1521:XE";
	String uid = "scott";
	String pass = "tiger";
	String sql = "insert into member values(?,?,?,?,?,?)";
%>  
<!DOCTYPE html>
<html lang="ko">
<head>
<meta charset="UTF-8">
<title>02_addMember</title>
</head>
<body>

<%
	request.setCharacterEncoding("UTF-8"); //post시 한글 입력데이터 깨짐 방지
	String name = request.getParameter("name");
	String userid = request.getParameter("userid");
	String pwd = request.getParameter("pwd");
	String email = request.getParameter("email");
	String phone = request.getParameter("phone");
	String admin = request.getParameter("admin"); //form에서 오는건 모두 String
	try {
		//(1 단계) JDBC 드라이버 로드
		Class.forName("oracle.jdbc.driver.OracleDriver");
		//(2 단계) 데이터베이스 연결 객체인 Connection 생성
		conn = DriverManager.getConnection(url, uid, pass);
		//(3 단계) Statement 객체 생성하기
		pstmt = conn.prepareStatement(sql);
		//(4 단계) 바인딩 변수를 채운다.
		//숫자는 물음표 순서로 1부터 시작
		pstmt.setString(1, name);
		pstmt.setString(2, userid);
		pstmt.setString(3, pwd);
		pstmt.setString(4, email);
		pstmt.setString(5, phone);
		pstmt.setInt(6, Integer.parseInt(admin)); //DB의 컬럼이 number이므로 setInt
		//(5단계) SQL문을 실행하여 결과 처리
		pstmt.executeUpdate(); //DML중 insert,update,delete시 사용
		//executeQuery()는 select문시 사용
		//자바에서 DML사용시는 자동 commit되므로 commit필요 없음
	} catch (Exception e) {
		e.printStackTrace();
	} finally {
		//(6단계) 사용한 리소스 해제
		try {
			if (pstmt != null)
				pstmt.close();
			if (conn != null)
				conn.close();
		} catch (Exception e) {
			e.printStackTrace();
		}
	}//finally의 끝
%>
<h3>회원 가입 성공</h3>
<a href="01_allMember.jsp"> 회원 전체 목록 보기 </a> }
</body>
</html>