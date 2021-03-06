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
String un1= request.getParameter("rollno");
String pass1 = request.getParameter("password");
int i=0;
String uid=null;
user r = new user();
try{
	Class.forName("com.mysql.jdbc.Driver");
	Connection con=null;
	con=DriverManager.getConnection("jdbc:mysql://localhost:3306/student","root","golu");
	 Statement s=con.createStatement();
     ResultSet r1=s.executeQuery("select * from register");
     while(r1.next())
     {
          String un=r1.getString(1);
          String pass=r1.getString(3);
          String branch=r1.getString(5);
          
      if(un.equals(un1)&&pass.equals(pass1))
    	 {
    	  String name=r1.getString(2);
        uid=request.getParameter("userid"); 
        
        HttpSession s2=request.getSession();
        s2.setAttribute("userid",uid);
        s2.setAttribute("name",name);
        s2.setAttribute("branch",branch);
        i++;
         break;
         }
     	
     }
     if(i==1)
     {
    	response.sendRedirect("student.jsp");
     }
     else
     {
    	 response.sendRedirect("Slogin-error.html");
    	    	 
     }
        
	}
catch(Exception e){System.out.println(e);}

%>

</body>
</html>