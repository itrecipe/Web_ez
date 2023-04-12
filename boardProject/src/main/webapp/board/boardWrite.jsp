<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<!DOCTYPE html>
<html lang="ko">
<head>
<meta charset="UTF-8">
<title>boardWrite - 게시글 입력</title>

<link rel="stylesheet" type="text/css" href="css/board.css">
<script src="script/board.js">
</script>
</head>
<body>
<div id="wrap" align="center">
<h1>게시글 등록</h1>
<form name="frm" method="get" action="BoardServlet">
	<!--hidden은 command를 서버로 보내기 위해 안보이게 정의  -->
	<input type="hidden" name="command" value="board_write">
	<table>
		<tr>
			<th>작성자</th>
			<td><input type="text" name="name" required> * 필수</td>
	 	</tr>
		<tr>
			<th>비밀번호</th>
			<td><input type="password" name="pass" required> * 필수(게시물 삭제시 필요하다.)</td>
	 	</tr>
		<tr>
			<th>이메일</th>
			<td><input type="text" name="email" placeholder="ex) test@naver.com"></td>
	 	</tr>
	 	<tr>
			<th>제목</th>
			<td><input type="text" size="70" name="title"> * 필수</td>
	 	</tr>
	 	<tr>
			<th>내용</th>
			<td><textarea rows="15" cols="70" name="content"></textarea></td>
	 	</tr>
	</table>
	<br/><br/>
	<input type="submit" value="등록" onclick="return boardCheck()">
	<input type="reset" value="재작성">
	<input type="button" value="종료" onclick="location.href='BoardServlet?command=board_list'">
</form>
</div>
</body>
</html>