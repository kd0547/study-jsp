<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
 <%
 		String name = request.getParameter("name");
 		String value = request.getParameter("value");
 		
 		if(name != null && value != null) {
 			application.setAttribute(name, value);
 		}
 		
 %>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
</head>
<body>
	<%
		if(name != null && value != null) {
			
		
	%>
	Application �⺻ ��ü�� �Ӽ� ���� : 
	<%= name %> = <%= value %>
	<% 
		} else {
	%>
	application �⺻ ��ü�� �Ӽ� ���� ���� 
	<%
		}
	%>

</body>
</html>