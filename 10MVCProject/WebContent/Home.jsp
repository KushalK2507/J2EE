<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>welcome to MVC</title>
</head>
<body>
	<h1>Welcome To MVC</h1>
	<p>This is home page</p>
	<br>
	<a href="<%=request.getContextPath()%>/Controller?page=Login">Login</a>
	<br>
	<a href="<%=request.getContextPath()%>/Controller?page=SignUp">SignUp</a>
	<br>
	<a href="<%=request.getContextPath()%>/Controller?page=About">About
		Us</a>
	<br>
</body>
</html>