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



<%
try
{
	Class.forName("com.mysql.jdbc.Driver");
	Connection con=null;
	con=DriverManager.getConnection("jdbc:mysql://localhost:3306/student","root","golu");
	Statement s=con.createStatement();
	PreparedStatement stmt=con.prepareStatement("update regester set name=?,paswsword=?,email=?,branch=?,semester=?,gender=?,dob=? where rollno=?");
    String name= request.getParameter("name");
    String password = request.getParameter("password");
    String email= request.getParameter("email");
    String branch = request.getParameter("branch");
    String semester= request.getParameter("semester");
    String gender= request.getParameter("gender");
    String dob = request.getParameter("dob");
    HttpSession s2=request.getSession(true);
    String rollno=(String)s2.getAttribute("rollno");
    stmt.setString(1,name); 
    stmt.setString(2,password);
    stmt.setString(3,email);
    stmt.setString(4,branch);
    stmt.setString(5,gender);
    stmt.setString(6,dob);
    stmt.setString(7,rollno);
}
catch(Exception e)
{
	System.out.println(e);
}





%>

</body>
</html>