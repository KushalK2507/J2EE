<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Login</title>
</head>
<h1>Welcome to our site</h1>
<h5>PLease fill below details for login</h5>
<body>
	<form action="<%=request.getContextPath()%>/SiteController"
		method="post">
		Username : <input type="text" name="userName"> <br>
		Password : <input type="password" name="password"> <br> <br>
		<input type="submit" value="Login">
	</form>
</body>
</html>