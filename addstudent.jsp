<%@page import="jspwebsite.StudentOperations"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body bgcolor="cyan">
<%
String sid=request.getParameter("sno");    
String sname=request.getParameter("sname");    
String scourse=request.getParameter("scourse");    
String sfee=request.getParameter("sfee");

boolean status=StudentOperations.addStudentDetails(Integer.parseInt(sid), sname, scourse.toLowerCase(), Float.parseFloat(sfee));

if(status){
    out.print("<h2>Student Record inserted successfully</h2> <a href='operations.jsp'>Home</a>");
}

%>

</body>
</html>