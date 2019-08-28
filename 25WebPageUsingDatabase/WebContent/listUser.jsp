<%@page import="org.apache.jasper.tagplugins.jstl.core.ForEach"%>
<%@page import="org.kushal.servlet.entity.Users"%>
<%@page import="java.util.List"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<c:import url="/include/header.jsp">
	<c:param name="title" value="Welcome"></c:param>
</c:import>
<br />
<br />
List of users are as below
<table border="1">
	<tr>
		<th>User ID</th>
		<th>User Name</th>
		<th>Email</th>
		<th colspan="2">Operation</th>
	</tr>
	<tr>
		<%
			List<Users> listUsers = (List<Users>) request.getAttribute("listUsers");
			String tempURL = null;
			String delURL = null;
			for (int i = 0; i < listUsers.size(); i++) {
				out.print("<tr>");
				out.print("<td>" + listUsers.get(i).getUser_id() + "</td>");
				out.print("<td>" + listUsers.get(i).getUsername() + "</td>");
				out.print("<td>" + listUsers.get(i).getEmail() + "</td>");
				tempURL = request.getContextPath() + "/home?page=updateUser&usersId=" + listUsers.get(i).getUser_id()
						+ "&username=" + listUsers.get(i).getUsername() + "&email=" + listUsers.get(i).getEmail();
				out.print("<td> <a style=color:black href =" + tempURL + ">Update</a></td>");
				delURL = request.getContextPath() + "/appController?page=deleteUser&userId="
						+ listUsers.get(i).getUser_id();
				out.print("<td> <a style=color:black href =" + delURL + ">Delete</a></td>");
				out.print("</tr>");
			}
		%>
	</tr>
</table>

<br />
<c:import url="/include/Footer.jsp"></c:import>