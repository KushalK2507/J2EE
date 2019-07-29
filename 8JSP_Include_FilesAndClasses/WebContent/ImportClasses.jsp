<%@page import="org.kushal.Demo"%>
<%@page import="java.util.Date"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Import Classes</title>
</head>
<h1>Import classes in JSP</h1>
<body>
	<%
		out.print((new Date()));
		out.print("<br>");
		out.print(new Demo().demo());
	%>
</body>
</html>