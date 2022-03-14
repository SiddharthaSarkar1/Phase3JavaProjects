<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>

<%@ taglib prefix = "c" uri = "http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
	<style>
	table, th, td {
	border: 2px solid black;
	padding : 5px;
	}
	</style>
</head>
<body>

	<h2>Search for User</h2>

	<table>
		<tr>
			<th>ID</th>
			<th>Name</th>
			<th>Email</th>
			<th>Password</th>
		</tr>
		<tr>
			<td>${userSearch.id}</td>
			<td>${userSearch.name}</td>
			<td>${userSearch.email}</td>
			<td>${userSearch.password}</td>
		</tr>
	</table>

	<br />
	<br />
	<br />
	<br />
	<br />
	<br />
	<form action="update" method="post">
		<h3>Update This User?</h3>
		<p>User ID: ${userSearch.id}</p>
		<input type="hidden" name="id" id="id" value="${userSearch.id}"
			required />
		<label for="name">New Name:</label>
		<br />
		<input type="text" name="name" id="name" value="${userSearch.name}"
			required />
		<br />
		<label for="email">New Email:</label>
		<br />
		<input type="text" name="email" id="email" value="${userSearch.email}"
			required />
		<br />
		<label for="password">New Password:</label>
		<br />
		<input type="text" name="password" id="password"
			value="${userSearch.password}" required />
		<br />
		<br />
		<input type="submit" value="Submit" />
	</form>
	<br />
	<br />
	<a href="/">Return to Menu</a>

</body>
</html>