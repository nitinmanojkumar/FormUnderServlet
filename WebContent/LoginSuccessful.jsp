<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>

Name : <%= request.getParameter("name") %><br>
Gender : <%= request.getParameter("gender") %><br>
Languages known : <%
String [] languages=request.getParameterValues("language");
if(languages!=null){
	for(String var:languages){
		//out.print("<br/>");
		out.print(var);
		
	}
}else{
	out.print("None selected");
}

%>
<br>
Country : <%= request.getParameter("country") %><br>

<br>
DOB : <%= request.getParameter("birthday") %><br>

</body>
</html>