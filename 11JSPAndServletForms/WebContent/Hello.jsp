<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Sing Up form</title>
</head>
<h1>Welcome to Sign Up Page</h1>
<h5>Fill the below details</h5>
<body>
	<form action="Submit.jsp" method="post">
		First Name : <input type="text" name="firstName" required="required"/><br>
		<br> 
		Gender : 	<input type="radio" name="gender" value="Male">Male
					<input type="radio" name="gender" value="Female">Female <br>
		<br> 
		Language :	<input type="checkbox" name="language"	value="English">English 
					<input type="checkbox" name="language" value="Hindi">Hindi
		<br><br>
		Country :
		 <select name="country">
			<option selected="selected">Please select one</option>
			<option>INDIA</option>
			<option>AFRICA</option>
			<option>CHINA</option>
			<option>MALAYSIA</option>
		</select>
		<br>
		<input type="submit" value="Submit">
	</form>
</body>
</html>