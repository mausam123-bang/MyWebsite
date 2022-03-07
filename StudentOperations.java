package jspwebsite;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.ResultSetMetaData;
import java.sql.SQLException;

public class StudentOperations {	
	static PreparedStatement pst1,pst2,pst3,pst4,pst5,pst6,pst7,pst8;	
	
	static {
		try
		{
			// db configuration 
		Class.forName("com.mysql.jdbc.Driver");			
		Connection con1=DriverManager.getConnection("jdbc:mysql://localhost:3306/jdbc","root", "Mausam123");
		Connection con2=DriverManager.getConnection("jdbc:mysql://localhost:3306/login","root", "Mausam123");		
		
		pst1=con2.prepareStatement("select * from users where emailid=? and password=?");
		pst2=con1.prepareStatement("insert into student_details values(?,?,?,?)");
		pst3=con1.prepareStatement("select * from student_details");
		pst4=con1.prepareStatement("delete from student_details where sno=?");
		pst5=con1.prepareStatement("select sno from student_details");
		pst6=con1.prepareStatement("select sname,scourse,sfees from student_details where sno=?");
		pst7=con1.prepareStatement("update student_details set sname=?,scourse=?,sfees=? where sno=?");
		pst8=con2.prepareStatement("update users set password=? where emailid=?");
		     
		}
		catch(ClassNotFoundException | SQLException ex) {
		ex.printStackTrace();	
		}			
	}
	public static boolean changePassword(String username,String password) {
		boolean status=false;
		try {
			pst8.setString(1, password);
			pst8.setString(2,username);
			int result=pst8.executeUpdate();
			if(result>0) {
				status=true;
			}
			
		}
		catch(SQLException ex){
			ex.printStackTrace();
		}
		return status;
	}
	
	public static boolean updateStudent(int sid,String name,String course,float sfees) {
		
		boolean status=false;
		try {
			pst7.setInt(4,sid);
			pst7.setString(1,name);
			pst7.setString(2, course);
			pst7.setFloat(3, sfees);
			int result=pst7.executeUpdate();
			
			if(result>0) {
				status=true;
			}			
		} catch(SQLException ex) {
			ex.printStackTrace();
		}
		return status;		
	
		
		
	}
	
	
	public static String getStudentDetails(int sid) {
	
		String responseText="<form action='updateDetails.jsp'><table align=center>";
		try {
			pst6.setInt(1,sid);
		ResultSet rs=pst6.executeQuery();
		if(rs.next()) {
			responseText=responseText.concat("<tr><td></td><td><input type=hidden name=sno value="+sid+"></td></tr>");						
			responseText=responseText.concat("<tr><td>Sname</td><td><input type=text name=sname value="+rs.getString(1)+"></td></tr>");			
			responseText=responseText.concat("<tr><td>Scourse</td><td><input type=text name=scourse value="+rs.getString(2)+"></td></tr>");			
			responseText=responseText.concat("<tr><td>Sfees</td><td><input type=text name=sfees value="+rs.getString(3)+"></td></tr>");	
			responseText=responseText.concat("<tr><td></td><td><input type=submit name=sname value=UPDATE></td></tr>");			
			
			
		}
		} catch(SQLException ex) {
			ex.printStackTrace();
		}
		responseText=responseText.concat("</table></form>");
		return responseText;
	
		
	}
	
	
	public static String getSnos() {
		String responseText="<select name='sid' style='width:100%'>";
		try {
		ResultSet rs=pst5.executeQuery();
		while(rs.next()) {
			responseText=responseText.concat("<option>"+rs.getString(1)+"</option>");			
		}
		} catch(SQLException ex) {
			ex.printStackTrace();
		}
		responseText=responseText.concat("</select>");
		return responseText;
	}
	
	
	public static boolean checkEmailAndPaswword(String emailid,String password) {
		boolean status=false;
		try {
			pst1.setString(1, emailid);
			pst1.setString(2,password);
			ResultSet rs=pst1.executeQuery();
			if(rs.next()) {	
				status=true;
			} 			
			}
			catch(SQLException ex) {
				ex.printStackTrace();
			}
		return status;
	}
	
	
	
	public static boolean deleteStudent(int sid) {		
		boolean status=false;
		try {
			pst4.setInt(1,sid);
			int result=pst4.executeUpdate();
			if(result>0) {
				status=true;
			}			
		} catch(SQLException ex) {
			ex.printStackTrace();
		}
		return status;		
	}
			
	public static boolean addStudentDetails(int sid,String sname,String scourse,float sfee) {
	
		boolean status=false;
		try {
		pst2.setInt(1, sid);
		pst2.setString(2,sname);
		pst2.setString(3, scourse);
		pst2.setFloat(4, sfee);
		int result=pst2.executeUpdate();
		if(result>0) {
			status=true;
		}
		}
		catch(SQLException ex) {
			ex.printStackTrace();
		}		
		return status;
	}
	
	public static String showStudents() {
		 String responseText="";	     
		try {
			    ResultSet rs=pst3.executeQuery();
			    ResultSetMetaData md=rs.getMetaData();

			    responseText=responseText.concat("<table align=center border=2 cellspacing=0 width=60% bgcolor=yellow>");

			      for (int i = 1; i <=md.getColumnCount(); i++) {    //   shows table columns  
			    	  responseText=responseText.concat("<th style='background-color:cyan'>"+md.getColumnName(i).toUpperCase()+"</th>");
				 }	      
			      while(rs.next())               //   display records
			      {  
			    	  responseText=responseText.concat("<tr>");				    	  
			    	  for (int i = 1; i <=md.getColumnCount(); i++) {
			    		  responseText=responseText.concat("<td style='text-align:center'>"+rs.getString(i)+"</td>");
			  		 }		    	  
			    	  responseText=responseText.concat("</tr>");				
				   }
			      responseText=responseText.concat("</table>");
		 
			    	    
			    } catch(SQLException ex) {
			    	ex.printStackTrace();
			    }
			    
		  return responseText;
	}

}
