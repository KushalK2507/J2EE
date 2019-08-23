<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/xml" prefix="x"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>JSTL XML tags</title>
</head>
<body>
	<c:import url="/Users.xml" var="XMLfile" />
	<x:parse xml="${XMLfile }" var="XMLDoc" />
	<x:out select="$XMLDoc/users/user/name" />
	<x:out select="$XMLDoc/users/user/age" />
	<br>
	<x:out select="$XMLDoc/users/user[2]/name" />
	<br>
	<table border="1">
		<tr>
			<td colspan="3">
				<h4>Use for for Each below</h4>
			</td>
			<!-- To iterate over whole XML list -->
			<x:forEach select="$XMLDoc/users/user">
				<tr>
					<td><x:out select="name" /></td>
					<td><x:out select="age" /></td>
					<td><x:out select="gender" /></td>
				</tr>
			</x:forEach>
		</tr>
	</table>
	<br>
	<table border="1">
		<tr>
			<td colspan="3">
				<h4>Use of if below</h4>
			</td>
		</tr>
		<!-- Use of if tag i.e. Conditions -->
		<x:forEach select="$XMLDoc/users/user">
			<tr>
				<x:if select="age < 30">
					<td><x:out select="name" /></td>
					<td><x:out select="age" /></td>
					<td><x:out select="gender" /></td>
				</x:if>
			<tr>
		</x:forEach>
	</table>

	<table border="1">
		<tr>
			<td colspan="3">
				<h4>Use of choose,when and otherwise below</h4>
			</td>
		</tr>
		<!-- Use of if tag i.e. Conditions -->
		<x:forEach select="$XMLDoc/users/user">
			<tr>
				<x:choose>
					<x:when select="gender = 'M'">

						<td><x:out select="name" /></td>
						<td><x:out select="age" /></td>
						<td><x:out select="gender" /></td>
					</x:when>
					<x:otherwise>
						<td><b><x:out select="name" /></b></td>
						<td><b><x:out select="age" /></b></td>
						<td><b><x:out select="gender" /></b></td>
					</x:otherwise>
				</x:choose>
			</tr>
		</x:forEach>
	</table>

</body>
</html>