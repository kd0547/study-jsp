<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import="java.util.Enumeration" %>
<%@ page import="java.util.Map" %>
<%
	request.setCharacterEncoding("utf-8");
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>요청 파라미터 출력</title>
</head>
<body>
	<b>request.getParameter() 메서드 사용</b>
	name 파라미터 = <%= request.getParameter("name") %>
	address 파라미터 = <%= request.getParameter("address") %>
	<p>
	<br>
	<b>request.getParameterValues() 메서드 사용</b>
	<%
		String[] values = request.getParameterValues("pet");
		if(values != null) {
			for(int i=0; i < values.length;i++) {
	%>
				<%=  values[i]%>
	<%
			}
		}
	%>
	<br>
	<b>request.getParameterName() 메서드 사용</b>
	<%
		Enumeration paramEnum = request.getParameterNames();
		
		while(paramEnum.hasMoreElements()) {
			String name = (String)paramEnum.nextElement();
	%>
			<%= name %>
	<%
		}
	%>
	<br>
	<b>request.getParameterMap() 메서드 사용</b>
	<%
		Map paramMap= request.getParameterMap();
		
		String[] nameParam = (String[])paramMap.get("name");
		
		if(nameParam != null) {
	%>
	name = <%= nameParam[0] %>
	<%
		}
	%>
	<%
		  	String cpage = request.getParameter("page");
			String cname = request.getParameter("content");
		%>
		<%=cname %>



</body>
</html>