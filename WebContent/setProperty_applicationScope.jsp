<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Set Property</title>
</head>
<body>
<jsp:useBean id="user" class="org.studyeasy.com.Beans_User" scope="application"></jsp:useBean>
<jsp:setProperty property="firstNM" name="user" value="manoj"/>
<jsp:setProperty property="lastNM" name="user" value="kumar"/>
Values have been set
</body>
</html>