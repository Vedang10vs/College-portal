<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>


<%@page import="java.sql.*"%>
<%@page import="student.*"%>


{
	Class.forName("com.mysql.jdbc.Driver");
	Connection con=null;
	con=DriverManager.getConnection("jdbc:mysql://localhost:3306/student","root","golu");
	Statement s=con.createStatement();
	PreparedStatement ps = con.prepareStatement("insert into notification values(?,?)");
    
    
    HttpSession s1=request.getSession(true);
    String branch=(String)s1.getAttribute("branch");
    String notification= request.getParameter("notice");
   
    ps.setInt(1,branch); 
    ps.setString(2,notification); 
    ps.executeUpdate();
}
catch(Exception e)
{
	System.out.println(e);
}



</body>
</html>