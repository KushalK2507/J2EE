<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Hello JSP</title>
</head>
<body>
	<h1>JSP Param Value</h1>
	<body>
	<%
		response.getWriter().println("Value 1 " + request.getParameter("getValue1"));
		response.getWriter().println("Value 2 " + request.getParameter("getValue2"));
	%>
	</body>
</body>
</html>