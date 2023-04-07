<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<!DOCTYPE html>
<html lang="ko">
<head>
<meta charset="UTF-8">
<title>login</title>
</head>
<body>
<h2>로그인</h2>
<!--name속성 frm은 자바스크립트에서 엘리먼트 선택시 사용한다. -->
<form action="login.do" method="post" name="frm">
	<table>
		<tr>
			<td>id : </td>
			<td><input type="text" name="userid" value="${userid}"></td>
		</tr>
		<tr>
			<td>pw : </td>
			<td><input type="password" name="pwd"></td>
		</tr>
		<tr>
			<td colspan="2" align="center">
				<input type="submit" value="로그인" onclick="return loginCheck()">&nbsp;&nbsp;
				<input type="reset" value="취소">&nbsp;&nbsp;
				<input type="button" value="회원가입" onclick="location.href='join.do'">
				<!-- location.href는 get방식으로 이동한다. -->
			</td>
		</tr>
		<tr>
		<td colspan="2">${message}</td>
		</tr>
				
	</table>
</form>
</body>
</html>