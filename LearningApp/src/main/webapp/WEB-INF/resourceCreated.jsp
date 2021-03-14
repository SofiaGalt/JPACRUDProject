<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>

Your new resource has been successfully created -
	<td><a href="${resource.url}">${resource.name}</a></td>
	
	<!-- return to home page -->
	<form action="/" method="get">
			<input type="submit" value="Return to Homepage">
	</form>
</body>
</html>