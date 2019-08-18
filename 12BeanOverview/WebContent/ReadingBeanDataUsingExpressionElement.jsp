<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Reading the Data from Bean</title>
</head>
<body>
	<jsp:useBean id="user" class="org.kushal.bean.User" scope="page"></jsp:useBean>
	Using the getter method: ${user.getFirstName() }
	<br /> Directly printing the variable: ${user.firstName }
	
</body>
</html>