<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>JSTL Decision Making</title>
</head>
<body>
	<!-- Use of If condition -->
	<c:if test="${param.name =='Kushal'}">
		Hello Kushal
	</c:if>
	<br />
	<!--  Use of choose and when which equivalent to Switch case -->
	<c:choose>
		<c:when test="${param.language=='JAVA' }">
	Learning Java
	</c:when>
		<c:when test="${param.language=='Python' }">
	Learning Pyhton
	</c:when>
		<c:otherwise>
	Learning Something
	</c:otherwise>

	</c:choose>


</body>
</html>