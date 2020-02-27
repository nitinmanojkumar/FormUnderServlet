<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Set Property</title>
</head>
<body>
<jsp:useBean id="user" class="org.studyeasy.com.Beans_User" scope="session"></jsp:useBean>

<form action="getProperty_formSubmission.jsp" method="post">

FirstName : <input type="text" name="firstNM" value=<jsp:getProperty property="firstNM" name="user"/>><br>
LastName : <input type="text" name="lastNM" value=<jsp:getProperty property="lastNM" name="user"/>><br>
<input type="submit" value="submit">


</form>

Values have been set
</body>
</html>