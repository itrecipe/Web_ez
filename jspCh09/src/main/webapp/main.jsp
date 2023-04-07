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
			<!--session객체에 저장한 속성 loginUser는 mVo빈객체이므로,
			    빈 객체의 멤버변수를 EL로 접근한다.
			  --실제로는 get메서드로 접근하여 EL에서는 SessionScope로
			    접근하지 않아도 알아서 처리한다.
			 -->
			<td>안녕하세요! ${loginUser.name}(${loginUser.userid})님</td>
		</tr>
		<tr>
			<td colspan="2" align="center">
			<input type="submit" value="로그아웃">&nbsp;&nbsp;
			<input type="button" value="회원정보변경"
			onclick="location.href='memberUpdate.do?userid=${loginUser.userid}'">
			</td>
		</tr>	
	</table>
</form>
</body>
</html>