<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Successful Login</title>
</head>
<body>
	Its successful login
	<br>

	Username : <%=request.getSession().getAttribute("username")%><br> 
	sessionID : <%=request.getSession().getId()%><br>

	<form action="<%=request.getContextPath()%>/MemberAreaController" method="get">
		<input type="hidden" name="action" value="destroy"></input>
		<input type="submit" value="logout"/>
	</form>


</body>
</html>