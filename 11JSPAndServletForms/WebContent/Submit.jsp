<%@page import="java.util.List"%>
<%@page import="java.util.Arrays"%>
<%@page import="java.util.ArrayList"%>
<%@page import="java.util.Hashtable"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Form Submited</title>
</head>
<h1>Form Submitted Sucessfully</h1>
<h5>Below details will be submitted</h5>
<body>
	Name:
	<%=request.getParameter("firstName")%>
	Gender:
	<%=request.getParameter("gender")%>
	Language:
	<%
	String languages[] = request.getParameterValues("language");
	for (int i = 0; i < languages.length; i++) {
		out.print(languages[i] + " ");

	}
%>
	Country:
	<%=request.getParameter("country")%>
	<%
	session.setAttribute("firstName", request.getParameter("firstName"));
	session.setAttribute("gender", request.getParameter("gender"));
	List<String> language=Arrays.asList(languages);
	session.setAttribute("languages", language);
	session.setAttribute("country", request.getParameter("country"));
	%>
	<a href="<%= request.getContextPath() %>/Form">Submit</a>
</body>
</html>