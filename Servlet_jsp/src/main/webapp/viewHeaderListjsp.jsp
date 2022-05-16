<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
  <%@ page import="java.util.Enumeration" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
</head>
<body>
	<%
		Enumeration enumeration = request.getHeaderNames();
		while(enumeration.hasMoreElements()) {
			String headerName = (String)enumeration.nextElement();
			String headerValues = request.getHeader(headerName);
	%>
		<%=  headerName%> = <%= headerValues%> <br>
			
	<%		
		}
	%>
</body>
</html>