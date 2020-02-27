<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Get Property</title>
</head>
<body>
<jsp:useBean id="user" class="org.studyeasy.com.Beans_User" scope="session"></jsp:useBean>
<jsp:setProperty property="*" name="user"/>

First Name : <jsp:getProperty property="firstNM" name="user"/><br>
Last Name : <jsp:getProperty property="lastNM" name="user"/>
</body>
</html>