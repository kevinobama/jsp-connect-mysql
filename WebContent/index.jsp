<%@ page import="java.sql.*" %> 

<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>    
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
<p>users:</p>
<% 
try {  
	Class.forName("com.mysql.jdbc.Driver");  
	Connection con=DriverManager.getConnection(  
	"jdbc:mysql://localhost:3306/robo2_1228?useSSL=false","root","1");  

	Statement stmt=con.createStatement();  
	ResultSet rs=stmt.executeQuery("select * from users limit 20");  
	while(rs.next())  {
		out.println(rs.getInt(1)+"  "+rs.getString(2)+" <br> "); 
	}	 			
	con.close();  	
} catch(Exception e) { 
	out.println(e);
} 		   
%>
</body>
</html>