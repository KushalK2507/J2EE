<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<c:import url="/include/header.jsp">
	<c:param name="title" value="Add Users"></c:param>
</c:import>
<br />
<br />
<form action="<%=request.getContextPath()%>/appController" method="post">
	UserName :	<input type="text" name="username" required="required"/>
	<br>
	<br>
	Email :		<input type="email" name="email" required="required"/>
	<br>
	<br>
	<input type="hidden" name="form" value="addUser"> <!-- this field is added to identify the field in doPost that this would be form addUsers form -->
	<input type="submit" value="Add User"/>
	<br>
</form>
<c:import url="/include/Footer.jsp"></c:import>