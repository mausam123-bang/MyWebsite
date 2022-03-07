<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Login Portal</title>
<script>
  function check(){  
	  if(document.getElementById('emailid').value==""){
		  alert("Emailid is required");
		  return false;
	  }
	  if(document.getElementById('password').value==""){
		  alert("password is required");
		  return false;
	  }
  }
</script>
</head>
<body bgcolor="cyan">
<form action="EmailValidation.jsp" method="post" onsubmit="return check()">
<h2 align="center"><u>LOGIN</u></h2>
<table align="center">
<tr><td>EmailId</td><td><input id="emailid" type="text" name="emailid"></td></tr>
<tr><td>Password</td><td><input id="password"  type="password" name="password" ></td></tr>
<tr><td> </td><td><input type="submit" value="Login"></td></tr>
</table> 
</form>
</body>
</html>