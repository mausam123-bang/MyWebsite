<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
<script>
function check(){
	if(document.getElementById('sno').value.length!=3){
		alert("student number should be 3 digits");
		return false;
	}	
}
</script>

</head>
<body bgcolor="cyan">
<form action="addstudent.jsp" method="get" onsubmit="return check()">
    <h3 align="center"><u>StudentApplicationForm</u></h3>
    <table align="center">
    <tr><td>StudentNo:</td><td><input id="sno" type="text" name="sno"></td></tr>
    <tr><td>StudentName:</td><td><input type="text" name="sname"></td></tr>
    <tr><td>StudentCourse:</td><td><input type="text" name="scourse"></td></tr>   
    <tr><td>StudentFee:</td><td><input type="text" name="sfee"></td></tr>
    <tr><td></td><td><input type="submit" value="Insert"></td></tr>     
   </table>
</form>
</body>
</html>