<%@page import="java.util.Date"%>
<%@page import="javax.xml.crypto.Data"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Hello JSP</title>
</head>
<body>
	<h1>JSP Expressions</h1>
	<%!public int x = 20;%>
	<%=x%>
	<br>
	<%=new Integer(10)%>
	<br>
	<%=new String("Kushal")%>
	<br>
	<%=new Date()%>
	<br>
	<%=25 * 4%>


</body>
</html>