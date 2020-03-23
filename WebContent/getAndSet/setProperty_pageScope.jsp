<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Set Property</title>
</head>
<body>
<jsp:useBean id="user" class="org.studyeasy.com.Beans_User" scope="page"></jsp:useBean>
<jsp:setProperty property="firstNM" name="user" value="manoj"/>
<jsp:setProperty property="lastNM" name="user" value="kumar"/>
Values have been set</br>

First Name : <jsp:getProperty property="firstNM" name="user"/><br>
Last Name : <jsp:getProperty property="lastNM" name="user"/>
</body>
</html>