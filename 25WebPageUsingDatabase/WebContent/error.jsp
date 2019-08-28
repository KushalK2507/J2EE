<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<c:import url="/include/header.jsp">
	<c:param name="title" value="Error"></c:param>
</c:import>
<br />
<br />
Oops !!!!! Something went wrong.....
<%
	String error = (String) request.getAttribute("error");
	if (null != error && !error.isEmpty()) {
		out.print(error);
	}
%>
<br />
<c:import url="/include/Footer.jsp"></c:import>