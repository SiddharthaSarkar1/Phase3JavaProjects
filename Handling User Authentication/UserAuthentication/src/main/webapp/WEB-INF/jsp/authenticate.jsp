<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>  

<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Authentication Page</title>
</head>
<body>
	<center>
	<h1>Login Page</h2><br>
		<form:form action="Auth" method="post" commandName="login">
			<fieldset>
			 Enter your username:
			<input name="username" id="username" type="text" required/>
			<br><br>
			
			Enter your password:
			<input name="password" id="password" type="password" required/>
			<br><br>
			<input type="submit" name="Submit"/>
			</fieldset>
		</form:form>
	</center>
</body>
</html>