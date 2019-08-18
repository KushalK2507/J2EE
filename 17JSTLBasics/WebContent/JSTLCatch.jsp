<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<c:import url="/include/header.jsp">
	<c:param name="title" value="Use of Catch"></c:param>
</c:import>
<c:catch var="exception">
	<%
		int x = 10 / 0;
	%>
</c:catch>
Exception Caught AND Below is the Exception :
<br />
${exception }
<br />
<br />
Below is the Exception Message only:
<br />
${exception.message }
<c:import url="/include/Footer.jsp"></c:import>


