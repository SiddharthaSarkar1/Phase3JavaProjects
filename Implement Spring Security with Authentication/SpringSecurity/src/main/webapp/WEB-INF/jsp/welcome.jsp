<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
	<center>
		<h1 th:inline="text" style="color:green; font-size:65px;">Hello  [[${#httpServletRequest.remoteUser}]]!</h1>
		
	    <form th:action="@{/logout}" method="post">
	        <input type="submit" value="Sign Out"/>
	    </form>
	</center>
</body>
</html>