<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
<script language="javascript">
   function checkPassword(){
	
	   if(document.getElementById('password').value=="" || document.getElementById('cpassword').value==""){
		   alert("password is required");
		   return false;
	   }	   
	   else  if(document.getElementById('password').value != document.getElementById('cpassword').value){
		  alert("confirm password should be matched");
		   return false;		   
	   }	   
   }     
</script>
</head>
<body bgcolor="cyan">
<form action="changepassword.jsp" method="post"  onsubmit="return checkPassword()">
<h2 align="center"><u>Change Password </u></h2>
<table align="center">
<tr><td>Password</td><td><input id="password"  type="password" name="password" ></td></tr>
<tr><td>ConfirmPassword</td><td><input id="cpassword"  type="password" name="cpassword" ></td></tr>
<tr><td> </td><td><input type="submit" value="Change"></td></tr>
</table> 
</form>
</body>
</html>