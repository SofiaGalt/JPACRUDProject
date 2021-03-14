<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<h1>learn anything</h1>
	
	<!-- filter -->
	<form action="findResourceBySubject.do" method="get">
			<label for="subject">filter by subject:</label> <input type="text" name="subject">
			<input type="submit" value="Search">
	</form>
	
	<!-- display resource results -->
	<table class="table table-striped table-hover">
		<tbody>
			<c:forEach var="resource" items="${resources}">
				<tr>
					<td><a href="${resource.url}">${resource.name}</a></td>
					<td>${resource.subject}</td>
				</tr>
			</c:forEach>
		</tbody>
	</table>
	
	<!-- add resource button -->
	<form action="addResource.do" method="get">
			<input type="submit" value="Add Resource">
	</form>
</body>
</html>