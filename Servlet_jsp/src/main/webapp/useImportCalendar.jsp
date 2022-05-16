<!DOCTYPE html>
<%@ page contentType="text/html; charset=UTF-8" %>
<%@page import="java.util.Calendar" %>
<%@ page trimDirectiveWhitespaces="true" %>
<html >
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Document</title>
</head>
<body>
    <%
    	Calendar cal =  Calendar.getInstance();
    %>
    오늘은 <%= cal.get(Calendar.YEAR) %>년
    			<%= cal.get(Calendar.MONDAY)+1 %>월
    			<%= cal.get(Calendar.DATE) %>일 
    입니다.
</body>
</html>