<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ page isErrorPage="true" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>에러 발생</title>
</head>
<body>

	요청처리 과정에서 에러가 발생했습니다. <br>
	빠른 시간 내에 문제를 해결하도록 하겠습니다. 
	<p>
	에러 타입 : <%= exception.getClass().getName() %><br>
	에러 메시지 :<b><%=   exception.getMessage()%></b><br> 
</body>
</html>