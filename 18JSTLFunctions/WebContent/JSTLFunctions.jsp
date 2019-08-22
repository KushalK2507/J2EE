<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>JSTL Functions</title>
</head>
<body>
	<%
		String names[] = { "Kushal", "Ved", "Uma", "Komal" };
	%>
	<c:set var="namesArray" value="<%=names%>" />
	<!-- This is will the no of object i.e. 4 -->
	${fn:length(namesArray) }
	<!-- This will return the length of the String i.e. 6 -->
	${fn:length("Kushal") }
	<br />
	<!-- This is used remove the extra spaces i.e. in below it will only single
	 spaces before and after every tag -->
	${fn:trim("         Kushal           Kesarwani") }

	<!-- escapeXL will make the tag to behave as normal String and not as tags
	In below h1 tag inside escapeXML would not print Kushal as Heading it will 
	simmply print Kushal alonf with h1 as whole -->
	<h1>Kushal</h1>
	${fn:escapeXml("<h1>Kushal</h1>") }
	<br />
	<c:set var="x" value="Kushal" />
	${fn:startsWith(x,"Ku") }
	<br /> ${fn:endsWith(x,"l") }
	<br />${fn:contains(x,"HA") }
	<br /> ${fn:containsIgnoreCase(x,"HA") }

	<br />Upper case: ${fn:toUpperCase("Kushal") }
	<br />Lower case: ${fn:toLowerCase("Kushal") }
	<br />Index Of: ${fn:indexOf("Kushal","u") }
	<br />Replace: ${fn:replace("Kushal","K","k") }
	<br />Substring: ${fn:substring("Kushal Kesarwani",0,6) }
	<br />SubstringBefore: ${fn:substringBefore("Kushal Kesarwani","Kesarwani") }
	<br />
	<br />
	<br />
	<b>Split Function:</b>
	<br />
	<c:set var="elements" value="${fn:split('www.google.com','.') }" />
	<c:forEach var="element" items="${elements }">
	${element }
	<br />
	</c:forEach>
	<br>
	<Br>
	<b>Join Function:</b>
	<br>
	<br />Elements: ${fn:join(elements,'.') }

</body>
</html>