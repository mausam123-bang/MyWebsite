<%@page import="jspwebsite.StudentOperations"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title> Yo chai password change garne thau </title>
</head>
<body bgcolor=cyan>
<%
String password=request.getParameter("password");
String username=(String)session.getAttribute("emailid");

boolean status=StudentOperations.changePassword(username, password);
if(status){
	out.print("<h1>Password changed successfully</h2> <a href='login.jsp'> Signin </a>  ");
} 

%>
</body>
</html>