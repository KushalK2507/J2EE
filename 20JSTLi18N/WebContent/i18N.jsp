<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fr"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>i18N</title>
</head>
<body>
	View Website in
	<a href="?locale=en_US">English(US)</a>
	<a href="?locale=pt_BR">Portugese(BR)</a>
	<a href="?locale=es_AR">Spanish(Argentina)</a>
	<a href="?locale=hi_IN">Hindi(India)</a>
	<br />
	<br>
	<hr>
	<fr:setLocale value="${param.locale }" />
	<fr:bundle basename="i18N/website">
		<p>
			<fr:message key="label.hello" />
			Kushal
		<p>
			<fr:message key="label.welcome" />
		<p>
			<fr:message key="label.message" />
		<p>
			<fr:message key="label.thankYou" />
	</fr:bundle>

	<h2>Locale : ${param.locale }</h2>
</body>
</html>