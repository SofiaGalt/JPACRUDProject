<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Add Resource</title>
</head>
<body>
	
	<div>
		<h3>New Resource:</h3>
		<form action="submitNewResource.do" method="post">
			<label for="name">Name:</label> <input type="text" name="name">
			<label for="url">url:</label> <input type="text" name="url">
			<label for=subject>Subjects:</label> <input type="text" name="subject"> 
			<input type="submit" value="Submit">
		</form>
	</div>
	
	<!-- return to home page -->
	<form action="/" method="get">
			<input type="submit" value="Return to Homepage">
	</form>

</body>
</html>