<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>

	<form action="/test_form" method="post">
	  <label for="user">User:</label><br>
	  <input type="text" id="user" name="user" placeholder="John"><br>
	  <label for="comments">Comments:</label><br>
	  <input type="text" id="comments" name="comments" placeholder="Doe"><br><br>
	   <label for="rating">Rating:</label><br>
	  <input type="range" name="rating" id="rating" min="0" max="10" value="5" class="slider"><br><br>
	  <input type="submit" value="Submit">
	</form> 

</body>
</html>