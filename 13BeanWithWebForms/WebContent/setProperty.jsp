<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Set Property JSP</title>
</head>
<body>
	<jsp:useBean id="user" class="org.kushal.bean.User" scope="session"></jsp:useBean>
	<form action="getProperty.jsp">
		FirstName : <input type="text" name="firstName"
			value='<jsp:getProperty property="firstName" name="user"/>'>
			<br/>
		LastName : <input type="text" name="lastName"
			value='<jsp:getProperty property="lastName" name="user"/>'>
			<br/>
			<input type="submit" value="submit">
		
	</form>
</body>
</html>