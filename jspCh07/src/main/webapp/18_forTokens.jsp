<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html lang="ko">
<head>
<meta charset="UTF-8">
<title>18_forTokens</title>
</head>
<body>

<%--dilims속성에는 복수개 지정이 가능하다. delims=",."
  --forTokens는 문자열을 구분자로 분리하여 배열 형태로 전환하여 각 요소별로 반복 처리한다.
--%>
<c:forTokens var="city" items="서울.인천,대구.부산" delims=",">
${city}<br/>
</c:forTokens>
<hr>
<c:forTokens var="city" items="서울.인천,대구.부산" delims=",.">
${city}<br/>
</c:forTokens>
</body>
</html>