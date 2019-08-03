<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Member Area</title>
</head>
<body>
	<%
		String userName = "", sessionID = "";

		if (request.getSession().getAttribute("userName") == null) {
			response.sendRedirect("Login.jsp");
		} else {
			userName = request.getSession().getAttribute("userName").toString();
			sessionID = request.getSession().getId();
		}
	%>
	UserName:
	<%=userName%>
	CurrentSession
	<%=sessionID%>
	Member Area !!!!
	<form action="<%=request.getContextPath()%>/MemberAreaController"
		method="get">
		<input type="hidden" name="action" value="destroy"> <input
			type="submit" value="Logout">
	</form>
</body>
</html>