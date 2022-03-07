<%@page import="jspwebsite.StudentOperations"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body bgcolor='cyan'>
<%
String sid=request.getParameter("sid");
boolean status=StudentOperations.deleteStudent(Integer.parseInt(sid));
if(status){
	out.print("<h2>Deleted successfully</h2> <a href='operations.jsp'> Operations Page </a>");
}
%>
</body>
</html>