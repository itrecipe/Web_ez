<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<!DOCTYPE html>
<html lang="ko">
<head>
<meta charset="UTF-8">
<title>02_addMemberForm.jsp</title>
</head>
<body>
<h2>회원 정보 입력 폼</h2>
<form method="post" action="02_addMember.jsp">
<table>
	<tr>
		<td>이름</td>
		<td><input type="text" name="name" size="20"></td>
	</tr>
	<tr>
		<td>ID : </td>
		<td><input type="text" name="userid" size="20"></td>
	</tr>
	<tr>
		<td>PW : </td>
		<td><input type="password" name="pwd" size="20"></td>
	</tr>
	<tr>
		<td>이메일 : </td>
		<td><input type="text" name="email" size="20"></td>
	</tr>
	<tr>
		<td>전화번호 : </td>
		<td><input type="text" name="phone" size="20"></td>
	</tr>
	<tr>
		<td>등급</td>
		<td><input type="radio" name="admin" value="1" checked="checked">관리자
		<input type="radio" name="admin" value="0">일반회원</td>
	</tr>
	<tr>
		<td><input type="submit" value="전송"></td>
		<td><input type="reset" value="취소"></td>
	</tr>
</table>
</form>
</body>
</html>