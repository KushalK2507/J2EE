<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%><!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>JSP Loops</title>
</head>
<body>
	<!-- Below is the implementation of for loop -->
	<!-- In below loop depends on value of i and begin attribute from when the loop 
	begins -->
	<!-- In JSTL by default the increment of the var will always be 1 this increment
	value can be modified using st3ep attribute as used below -->

	<c:forEach var="i" begin="1" end="10" step="2">
	${i}
	<br />
	</c:forEach>

	<!-- Below is the implementation foreach loop -->
	<%
		String[] names = new String[4];
		names[0] = "Kushal";
		names[1] = "Komal";
		names[2] = "Ved";
		names[3] = "Uma";
	%>

	<c:forEach items="<%=names%>" var="name">
	${name }
	<br />
	</c:forEach>
</body>
</html>