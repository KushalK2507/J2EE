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
		Cookie cookies[] = request.getCookies();
		if (null != cookies) {
			for (Cookie cookie : cookies) {
				if (cookie.getName().equals("userName")) {
					userName = cookie.getValue();
				}
				if (cookie.getName().equals("JSESSIONID")) {
					sessionID = cookie.getValue();
				}
			}

		}
		if (userName.isEmpty() || sessionID.isEmpty()) {
			response.sendRedirect("Login.jsp");
		}
	%>
	UserName:
	<%=userName%>
	CurrentSession
	<%=sessionID%>
	Member Area !!!!
	<form action="<%=request.getContextPath()%>/MemberAreaController" method="get">
		<input type="hidden" name="action" value="destroy">
		<input type="submit" value="Logout">
	</form>
</body>
</html>