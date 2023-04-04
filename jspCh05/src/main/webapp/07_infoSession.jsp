<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>infoSession</title>
</head>
<body>
<h3>세션 정보를 얻어오는 메소드를 사용하기</h3>
<%
String id_str = session.getId(); //세션의 고유 번호
long lasttime = session.getLastAccessedTime(); //밀리초
long createdtime = session.getCreationTime(); //밀리초
long time_used = (lasttime - createdtime) / 60000; //밀리초를 분 단위로
int inactive = session.getMaxInactiveInterval() / 60; //초를 분으로 표시
boolean b_new = session.isNew();
%>
[1] 세션 ID : [
<%=session.getId() %>]이다.
<br/>
<hr/>
[2]당신이 웹 사이트에 머문 시간은
<%=time_used%>
분 이다.
<br/>
<hr/>
[3]세션의 유효 시간은
<%=inactive%>
분 이다.
<br/>
<hr/>
[4]세션이 새로 생성 되었나?
<br/>
<%
if(b_new)
	out.print(" 넵! 새로운 세션을 생성하였습니다.");
else
	out.print(" 아뇨, 새로운 세션을 생성하지 못했습니다.");
%>
</body>
</html>