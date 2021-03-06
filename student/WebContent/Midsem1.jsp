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
 int sub1= Integer.parseInt(request.getParameter("subject1"));
    int sub2= Integer.parseInt(request.getParameter("subject2"));
    int sub3= Integer.parseInt(request.getParameter("subject3"));
    int sub4= Integer.parseInt(request.getParameter("subject4"));
    int sub5= Integer.parseInt(request.getParameter("subject5"));
    int rollno= Integer.parseInt(request.getParameter("rollno"));
try
{
	Class.forName("com.mysql.jdbc.Driver");
	Connection con=null;
	con=DriverManager.getConnection("jdbc:mysql://localhost:3306/student","root","golu");
	Statement s=con.createStatement();
	PreparedStatement ps = con.prepareStatement("insert into sresult values(?,?,?,?,?,?)");
   
    ps.setInt(1,rollno); 
    ps.setInt(2,sub1); 
    ps.setInt(3,sub2); 
    ps.setInt(4,sub3); 
    ps.setInt(5,sub4); 
    ps.setInt(6,sub5); 
    ps.executeUpdate();

}


catch(Exception e)
{
	System.out.println(e);
}
%>

</body>
</html>