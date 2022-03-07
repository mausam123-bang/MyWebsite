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
<form action="delete.jsp">
  
  <table align="center">
   <tr><td>studentId</td><td><%=StudentOperations.getSnos()%></td></tr>
   <tr><td></td> <td><input type="submit" value="Delete"></td></tr>
  </table>

</form>
</body>
</html>