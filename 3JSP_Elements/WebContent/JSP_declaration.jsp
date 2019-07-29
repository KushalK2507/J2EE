<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Hello JSP</title>
</head>
<body>
	<h1>JSP Declaration</h1>
	<%!public int x = 10;%>
	<%!String message() {
		return "JSP Method";
	}%>
	<%=message()%>
	<br>
	<%
		out.print(x);
	%>
</body>
</html>