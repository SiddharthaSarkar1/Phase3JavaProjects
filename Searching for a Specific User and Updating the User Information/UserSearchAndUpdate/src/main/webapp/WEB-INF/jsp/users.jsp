<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>

<%@ taglib prefix = "c" uri = "http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
	
	<style>
	table {
	float: left;
	}
	table, th, td {
	border: 3px solid black;
	padding : 5px;
	margin: 5px;
	}
	</style>

</head>
<body>

		<h2>Users Page</h2>
		<table>
		<tr><th>ID</th><th>Name</th><th>Email</th><th>Password</th></tr>
			<c:forEach items="${users}" var="user" varStatus="count">
				<tr id="${count.index}">
				<td>${user.id}</td>
				<td>${user.name}</td>
				<td>${user.email}</td>
				<td>${user.password}</td>
				</tr>
			</c:forEach>
		</table>

</body>
</html>