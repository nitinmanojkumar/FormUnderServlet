<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Login</title>
</head>

<script>

function dateValidation(){
	var x=document.getElementById("dob").value;
	//console.log(x);
	var today = new Date();
    var birthDate = new Date(x);
    var age=today.getFullYear()-birthDate.getFullYear();
    var month=today.getMonth()-birthDate.getMonth();
    if(month<0 || (month===0 && today.getDate()- birthDate.getDate())){
    	age--;
    }
    console.log(age);
    if(age<18){
    	document.getElementById("dob").value="";
    	alert("Age is less than 18 or in future");
    	return false;
    }
    return true;
    
}

</script>

<body>
You are now in Login page<br>
Using Get Method<br>
<form action="<%= request.getContextPath()%>/Controller" method="get" >

Name : <input type="text" name="name" required/><br>
Gender : <input type="radio" name="gender" value="male" checked="checked">Male
		<input type="radio" name="gender" value="female">Female
		<br/>
Language : <input type="checkbox" name="language" value="English">English
			<input type="checkbox" name="language" value="Frensh">French
			<input type="checkbox" name="language" value="Tamil">Tamil<br/>
Country : <select name="country">
<option value="india">India</option>
<option value="USA">USA</option>
<option value="UK">UK</option>
</select><br/>

<label for="birthday">Birthday:</label>
<input type="date" id="dob" name="birthday" required onchange="dateValidation()">

<input type="submit" value="Submit"/>

</form>
<br>
Using Post Method<br>
<form action="<%= request.getContextPath()%>/Controller" method="post">

Name : <input type="text" name="name" required/><br>
Gender : <input type="radio" name="gender" value="male" checked="checked">Male
		<input type="radio" name="gender" value="female">Female
		<br/>
		
Language : <input type="checkbox" name="language" value="English">English
			<input type="checkbox" name="language" value="Frensh">French
			<input type="checkbox" name="language" value="Tamil">Tamil<br/>

Country : <select name="country">
<option value="india">India</option>
<option value="USA">USA</option>
<option value="UK">UK</option>
</select><br/>

<label for="birthday">Birthday:</label>
<input type="date" id="dob" name="birthday" required onchange="dateValidation()">

<input type="submit" value="Submit"/>

</form>


</body>
</html>