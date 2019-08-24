<%@page import="java.util.Date"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Formatting Tags</title>
</head>
<body>
	<c:set var="date" value="<%=new Date()%>" />
	<c:out value="${date }"></c:out>
	<br /> Time:
	<fmt:formatDate type="time" value="${date }" />
	<br /> Date:
	<fmt:formatDate type="date" value="${date }" />
	<br /> Date and Time Both :
	<fmt:formatDate type="both" value="${date }" />
	<br /> Date and Time both :
	<fmt:formatDate type="both" value="${date }" timeZone="GMT-1" />
	<fmt:setLocale value="en_UK" />
	<br /> Date and Time both :
	<fmt:formatDate type="both" value="${date }" timeZone="GMT-1" />






</body>
</html>