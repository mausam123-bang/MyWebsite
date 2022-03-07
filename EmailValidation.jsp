<%@page import="jspwebsite.StudentOperations"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>

<%

  //  reading inputs  from login.jsp   page 
  
String emailid=request.getParameter("emailid");    
String password=request.getParameter("password"); 

boolean status=StudentOperations.checkEmailAndPaswword(emailid, password);
if(status){
	session.setAttribute("emailid",emailid);
   response.sendRedirect("operations.jsp");	
} else {
	out.print("<h2>invalid userName /password </h2> <a href='login.jsp'>Try again</a>");
}
%>

</body>
</html>