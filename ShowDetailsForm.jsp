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
String sid=request.getParameter("sid");    //  read  student id from textfield

out.print(StudentOperations.getStudentDetails(Integer.parseInt(sid)));
%>
</body>
</html>