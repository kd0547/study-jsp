<%@ page  contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	name 파라미터 값 : 
	<%try { %>
	<%= request.getParameter("name").toUpperCase() %>
	<%} catch(Exception e) { %>
	<script>
		alert("name 파라미터가 올바르지 않습니다.");
		//여기서 sendRedirect로 이전 페이지로 돌아가게 설정을 할 수도 있음 
	</script>
	<%} %>
</body>
</html>