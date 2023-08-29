<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
</head>
<body>
<%
	if(session.getAttribute("admin-login") == null){
		response.sendRedirect("/Restaurant/login.jsp");
	}
%>

</body>
</html>