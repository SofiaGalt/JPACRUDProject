<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Update Resource</title>
</head>
<body>

<div>
		<h3>Update Resource:</h3>
		<form action="submitUpdatedResource.do" method="post">
			<input type="text" hidden="true" name="id" value="${resource.id}">
			<label for="name">Name:</label> <input type="text" name="name" value="${resource.name}" >
			<label for="url">url:</label> <input type="text" name="url" value="${resource.url}">
			<label for=subject>Subjects:</label> <input type="text" name="subject" value="${resource.subject}"> 
			<input type="submit" value="Submit">
		</form>
	</div>
	
	<!-- return to home page -->
	<form action="/" method="get">
			<input type="submit" value="Return to Homepage">
	</form>
</body>
</html>