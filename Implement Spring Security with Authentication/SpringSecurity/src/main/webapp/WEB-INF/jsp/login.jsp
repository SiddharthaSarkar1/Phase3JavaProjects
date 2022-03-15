<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
	<center>
		<h1 style="color:brown; font-size:25px;">Please Enter the Below Fields</h1>
		<br><br>
		<div th:if="${param.error}">
		<p style="color:red;">Invalid username or password.</p>
		</div>
		<div th:if="${param.logout}">
		<p  style="color:red;">You have been logged out.</p>
		</div>


        <form th:action="@{/login}" method="post">
           	<div>
				<label> <b>Enter your username :</b> <input type="text" name="username" /> </label>
			</div>
			<br><br>
           	<div>
				<label> <b>Enter your password:</b> <input type="password" name="password" /> </label>
			</div>
			<br><br>
           	<div>
				<input type="submit" value="Sign In" />
			</div>
			<br><br>	
        </form>


		<a href="/">Return to Main Page</a>
	</center>
</body>
</html>