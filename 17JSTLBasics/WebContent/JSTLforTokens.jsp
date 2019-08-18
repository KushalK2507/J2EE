<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>JSTL forTokens</title>
</head>
<body>
	<!-- Below are the tags used items can be any string and delims use character which used 
	to separate the String -->
	<c:forTokens items="www.google.com" delims="." var="temp">
	${temp }
	<br />
	</c:forTokens>
	<br />
	<br />
	<br />
	<br />
	<br />
	<%
		String URL = "www.facebook.com";
	%>
	<c:forTokens items="<%=URL%>" delims="." var="temp">
	${temp }
	<br />
	</c:forTokens>
</body>
</html>