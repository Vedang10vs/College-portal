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

try{
	Class.forName("com.mysql.jdbc.Driver");
	Connection con=null;
	con=DriverManager.getConnection("jdbc:mysql://localhost:3306/student","root","golu");
	 Statement s=con.createStatement();
	 PreparedStatement ps = con.prepareStatement("insert into subject value(?,?,?,?,?,?)");
	
	 HttpSession s1=request.getSession(true);
	 String branch=(String)s1.getAttribute("branch");

	 String sub1= request.getParameter("sub1");
	 String sub2= request.getParameter("sub2");
	 String sub3= request.getParameter("sub3");
	 String sub4= request.getParameter("sub4");
	 String sub5= request.getParameter("sub5");
	 
	 ps.setString(1, branch);
	 ps.setString(2, sub1);
	 ps.setString(3, sub2);
	 ps.setString(4, sub3);
	 ps.setString(5, sub4);
	 ps.setString(6, sub5);
	 ps.executeUpdate();
		con.close();
		response.sendRedirect("Teacher.jsp");
	}
catch(Exception e){System.out.println(e);}

%>


</body>
</html>