<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<c:import url="/include/header.jsp">
	<c:param name="title" value="Learning Redirects and URL"></c:param>
</c:import>

<!--  Below when executed give the complete URL of the page on Web Page but the 
URL we would the URL of of this page only as base page only -->
<c:url value="/RedirectAndURL.jsp" />

<!-- Giving the param in URL -- > Just add ?paramVariable=paramValue 
in Below after URL ?msg=Redirect to redirect the page to Google.com -->

<c:choose>
	<c:when test="${param.msg!='Redirect' }">
		<a href="<c:url value="/RedirectAndURL.jsp"/>">Link to Redirect</a>
	</c:when>
	<c:when test="${param.msg=='Redirect'}">
		<c:redirect url="http://www.google.com" />
	</c:when>
</c:choose>

<c:import url="/include/Footer.jsp"></c:import>