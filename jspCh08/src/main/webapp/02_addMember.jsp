<%@page import="java.sql.*"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>

<%! //선언부는 첫 방문자에 의해서 단 한번 수행합니다.
	//선언부는 <!DOCTYPE html>태그 위에 작성하는 것이 제일 바람직하다.
	Connection conn = null;
	PreparedStatement pstmt =  null;
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
<title>02_addMember.jsp</title>
</head>
<body>
<%
	request.setCharacterEncoding("UTF-8"); //post방식 사용시 한글 입력 데이터 깨짐을 방지한다.
	String name = request.getParameter("name");
	String userid = request.getParameter("userid");
	String pwd = request.getParameter("pwd");
	String email = request.getParameter("email");
	String phone = request.getParameter("phone");
	String admin = request.getParameter("admin");
	
	try {
		//1단계 : JDBC 드라이버 로드
		Class.forName("oracle.jdbc.driver.OracleDriver");
		//2단계 : DB연결 객체인 Connection 생성
		conn = DriverManager.getConnection(url, uid, pass);
		//3단계 : Statement객체 생성
		pstmt = conn.prepareStatement(sql);
		//4단계 : 바인딩 변수를 채운다.
		//숫자는 물음표의 순서대로 1부터 시작한다.
		pstmt.setString(1, name);
		pstmt.setString(2, userid);
		pstmt.setString(3, pwd);
		pstmt.setString(4, email);
		pstmt.setString(5, phone);
		pstmt.setInt(6, Integer.parseInt(admin)); //DB 컬럼이 number이므로 setInt
		//5단계 : SQL문을 실행해 결과를 처리한다.
		pstmt.executeUpdate(); //DML중 insert, update, delete시 사용한다.
		/* executeQuery()는 select문에서 사용한다.
		 * 자바에서 DML을 사용시 자동으로 commit가 되므로 별도의 commit는 필요없다.
		 */ 
		
	} catch (Exception e) {
		e.printStackTrace();
	} finally {
		//6단계 : 사용한 리소스를 해제 한다.
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
<a href="01_allMember.jsp">회원 전체 목록 보기</a>
</body>
</html>