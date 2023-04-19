<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%> 
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>   
<!DOCTYPE html>
<html lang="ko">
<head>
<meta charset="UTF-8">
<title>게시글 암호 체크 성공</title>
</head>
<body>

<script>
if (window.name == "update") {
window.opener.parent.location.href = "BoardServlet?command=board_update_form&num=${param.num}";
}
else if (window.name == 'delete') {
alert('삭제되었습니다.');
window.opener.parent.location.href = "BoardServlet?command=board_delete&num=${param.num}";
}
window.close();
</script>
</body>
</html>