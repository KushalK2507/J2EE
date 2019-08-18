<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Reading Data from Bean</title>
</head>
<body>
	<jsp:useBean id="user" class="org.kushal.bean.UserNew" scope="page"></jsp:useBean>
	Using the getter method: ${user.getFirstName() }
	<br /> Directly printing the variable: ${user.firstName }
	<br /> Using JSTL out tag:
	<c:out value="${user.getFirstName() }"></c:out>
</body>
</html>