<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Hello JSP</title>
</head>
<body>
	<h1>JSP Scriplet</h1>
	<%
		int x = 25;
		out.print(x);
		out.print("<br>");
		if (x > 25) {
			out.print("X is greater then 25");
		} else {
			out.print("X is less than 25");
		}
		out.print("<br>");
		for (int i = 0; i < 5; i++) {
			out.print(i);
		}
	%>
	<br>
	<%=x%>
</body>
</html>