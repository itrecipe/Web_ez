<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%!
	String str = "안녕?";
	int a = 5, b = -5;
	
	public int abs(int n) {
		if(n < 0) {
			n = -n;
		}
		return n;
	}
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>표현식</title>
</head>
<body>
	<%=str%><br/> <%--선언된 변수 사용 표현식--%>
	<%=a%>
	의 절대값 :
	<%=abs(a)%><br/> <!-- 메서드 호출 사용 표현식 -->
	<%=b%>
	의 절대값 :
	<%=abs(b)%><br/>
	<%--표현식은 문장위에 ;이 없음 이유는 서블릿의 out.print()의 인자로 사용하기 때문,
	츌력은 문자열로 출력 --%>
</body>
</html>