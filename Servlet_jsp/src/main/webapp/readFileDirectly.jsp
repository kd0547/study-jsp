<%@page import="java.io.IOException"%>
<%@page import="org.apache.catalina.tribes.group.interceptors.FragmentationInterceptor.FragCollection"%>
<%@page import="java.io.FileInputStream"%>
<%@page import="java.io.InputStreamReader"%>
<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>자원 읽기</title>
</head>
<body>
	<%
		char[] buff = new char[128];
		int len = -1;
		
		String filePath = "C:\\notice.txt";
		
		try {
			InputStreamReader inputStreamReader = new InputStreamReader(new FileInputStream(filePath),"UTF-8");
			while((len = inputStreamReader.read(buff)) != -1) {
				out.print(new String(buff,0,len));
			}
				
				
				
		} catch(IOException e) {
			
		} finally {
			
		}
 	%>
</body>
</html>