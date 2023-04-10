<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<!DOCTYPE html>
<html lang="ko">
<head>
<meta charset="UTF-8">
<title>main</title>
</head>
<body>

<h2>회원 전용 페이지</h2>
<form action="logout.do">
	<table>
		<tr>
			<!-- session객체에 저장한 속성 loginUser는 mVo 빈객체이므로 빈 객체의 멤버변수를 EL로 접근  -->
			<!-- 실제로는 get메서드로 접근 EL에서는 SessionScope로 접근 안해도 알아서 처리-->
			<td>안녕하세요. ${loginUser.name}(${loginUser.userid})님</td>
		</tr>
		<tr>
			<td colspan="2" align="center">
				<input type="submit" value="로그아웃"> &nbsp;&nbsp; 
				<input type="button" value="회원정보변경" onclick="location.href='memberUpdate.do?userid=${loginUser.userid}'">
				<!-- window.location.href는 페이지 이동 요청경로?쿼리문으로 속성명=값  -->
			</td>
		</tr>
	</table>
</form>
</body>
</html>