<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Test Forward and Redirect</title>
</head>
<body>
	<h1>Test Forward and Redirect</h1>
	<%--   <jsp:forward page="Forward.jsp"></jsp:forward> --%>
	<%
		request.getRequestDispatcher("Forward.jsp").forward(request, response);
	%>


</body>
</html>