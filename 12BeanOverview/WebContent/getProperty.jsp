<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Get Property JSP</title>
</head>
<body>
	<jsp:useBean id="user" class="org.kushal.bean.User" scope="session"></jsp:useBean>
	First Name:
	<jsp:getProperty property="firstName" name="user" />
	<%--In this first name is the property name in the entity class and name is the id 
	of the bean that we have given in just above line. --%>
	Last Name:
	<jsp:getProperty property="lastName" name="user" />
</body>
</html>