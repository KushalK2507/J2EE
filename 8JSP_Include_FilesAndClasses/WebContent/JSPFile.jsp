<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Include File in JSP</title>
</head>
<h1> Including the file in JSP</h1>
<body>
	<%@ include file="File1.txt"%>
	<br>
	<jsp:include page="File2.txt"></jsp:include>
</body>
</html>