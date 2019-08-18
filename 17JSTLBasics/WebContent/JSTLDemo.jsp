<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>JSTL Demo</title>
</head>
<body>
	<c:set var="name" value="Kushal"></c:set>
	<!-- This will set the value from to a variable -->
	<c:out value="${name}"></c:out>
	<!--  This is used to print the value of the variable by use of Expression language -->
	<c:remove var="name" />
	<!-- This will reomve the value form the variable -->
	<c:out value="${name}"></c:out>
</body>
</html>