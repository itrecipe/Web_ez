<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<!DOCTYPE html>
<html lang="ko">
<head>
<meta charset="UTF-8">
<title>게시판 비번 체크</title>
<link rel="stylesheet" href="css/board.css">
<script type="text/javascript" src="script/board.js"></script>
</head>
<body>

<div style="width:60%;margin : auto;">
	<h1>비밀번호 확인</h1>
	<form action="BoardServlet" name="frm" method="get">
		<input type="hidden" name="command" value="board_check_pass">
		<!-- parameter로 보낸값은 EL에서 param내장 객체 사용 -->
		<input type="hidden" name="num" value="${param.num}">
		<table style="width: 80%">
			<tr>
				<th>비밀번호</th>
				<td><input type="password" name="pass" size="20"></td>
			</tr>
		</table>
		<br> <input type="submit" value=" 확 인 "
			onclick="return passCheck()"> <br> <br>${message}
	</form>
</div>
</body>
</html>