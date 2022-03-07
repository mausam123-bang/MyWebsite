<%@page import="jspwebsite.StudentOperations"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body bgcolor=cyan>
<% 
String sid=request.getParameter("sno");
String sname=request.getParameter("sname");
String scourse=request.getParameter("scourse");
String sfees=request.getParameter("sfees");

boolean status=StudentOperations.updateStudent(Integer.parseInt(sid), sname, scourse, Float.parseFloat(sfees));
if(status){
	out.print("<h2>Updated successfully</h2> <a href=operations.jsp>OPerations Page</a>");
}
%>
</body>
</html>