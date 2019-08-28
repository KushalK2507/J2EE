<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>${param.title}</title>
<style type="text/css">
.link {
	color: black;
	float: right;
}
</style>
</head>
<body bgcolor="blue">
	<div>
		<span> Welcome to World of Learning </span> 
		<span class="link">
			<a href="<%=request.getContextPath()%>/home?page=home">Home</a> 
			<a href="<%=request.getContextPath()%>/home?page=listUsers">List Users</a>
			<a href="<%=request.getContextPath()%>/home?page=addUsers">Add Users</a>
		</span>
	</div>
	<hr>
	<br />
	<br />
	<br />
	<br />