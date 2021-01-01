
<%@page import="org.nlt.service.PostService"%>
<%@page import="org.nlt.model.User"%>
<%@page import="java.util.List"%>
<%@page import="org.nlt.service.UserService"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>

<%
	List<User> userList = UserService.findAllUsers();
%>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title></title>
</head>
<body>
	<div class="container">
		<h2>Users List</h2>
		<br>
		<table class="table table-hover">
			<thead>
				<tr>
					<th>User ID</th>
					<th>Name</th>
					<th>Email</th>
					<th>Gender</th>
					<th>City</th>
					<th>State</th>
					<th>Blogs Posted</th>
				</tr>
			</thead>
			<tbody>

				<%
					for (User user : userList) {
				%>

				<tr>
					<td><%=user.getId()%></td>
					<td><%=user.getName()%></td>
					<td><%=user.getEmail()%></td>
					<td><%=user.getGender()%></td>
					<td><%=user.getCity()%></td>
					<td><%=user.getState()%></td>
					<td><%=PostService.totalBlogPostedByUser(user)%></td>
				</tr>
				<%
					}
				%>
			</tbody>
		</table>
	</div>
</body>
</html>