<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
<style type="text/css">



input[type="text"] {
    padding: 6px 12px;
    margin: 2px 0;
    box-sizing: border-box;
    border: 2px mocha ;
    border-color:#7EF9FF;
    border-radius: 4px;
    color: black;
    background-color:white;
}
.navbar{
background-color:#0a3564;
overflow:hidden;
width:100%;
margin-top:0px;
}
.navbar a{
float:left;
display:block;
color:#7EF9FF;
text-align:center;
padding:20px 15px;
font-size:15px;

}
.navbar a:hover{
background:#7EF9FF;
color:Black;
}

.navbar b{
float:right;
display:block;
color:#7EF9FF;
text-align:center;
padding:20px 15px;
font-size:15px;

}
.navbar b:hover{
background:#7EF9FF;
color:Black;
}

input[type="submit"]
{
border:none;
outline:none;
height:40px;
background:#7EF9FF;
font-size:18px;
border-radius:20px;
}
input[type="submit"]:hover{
cursor:pointer;
background:black;
color:#7EF9FF;
}


.loginbox{
width:350px;
height:350px;
background:black;
color:white;
position:absolute;
box-sizing:border-box;
padding:30px 30px;
margin-top:40px;
border-radius:10px;

}


.loginbox p{
margin:0;
padding:0;
font-weight:bold;
}
.loginbox input{
width:100%;
margin-bottom:20px;
}


.loginbox input[type="text"]
{
border:none;
border-bottom:10px grey;
background:transparent;
height:30px;
color:#7EF9FF;
font-size:16px;
}


.loginbox a
{

text-decoration:none;
font-size:40px;
font-family:Arial Black;
line-height:20px;
color:white;
}
.loginbox a:hover{
color:#7EF9FF;
}
.footer{
background:#0a3564;
overflow:hidden;
width:100%;
margin-top:500px;
color:white;
}

.footer a
{
float:right;
display:block;
color:pink;
text-align:center;
padding:10px 10px;
font-size:15px;
}

.footer a:hover{
background:#7EF9FF;
color:Black;
}
</style>
</head>

<body background="medium.jpg">

<p><h1 style="float:left;color:black;font-family:'algerian';margin-left:20px;">STUDENT</h1></p><br>
<p><h2 style="float:left;color:black;font-family:'Arial narrow';">Login</h2></p>

<div class="navbar">
<a href="Supdate.html">Settings</a>
<a href="Student.jsp">Home</a>
<b href="AboutUs.html">About Us</b>
<b href="Logout.html">logout</b>
</div>



<%@page import="java.sql.*"%>
<%@page import="student.*"%>



<%
String sub1=null;
String sub2=null;
String sub3=null;
String sub4=null;
String sub5=null;

HttpSession s2=request.getSession(true);
String branch=(String)s2.getAttribute("branch");
String roll=(String)s2.getAttribute("rollno");

try
{
	Class.forName("com.mysql.jdbc.Driver");
	Connection con=null;
	con=DriverManager.getConnection("jdbc:mysql://localhost:3306/student","root","golu");
	 Statement s=con.createStatement();
	 ResultSet rs = s.executeQuery("select * from subject");
	 
	 while(rs.next())
	 {
	 String branch1=rs.getString(1);
	 if(branch.equals(branch1))
	{
		 sub1= rs.getString(2);
         sub2= rs.getString(3);
		 sub3= rs.getString(4);
		 sub4= rs.getString(5);
		 sub5= rs.getString(6);
		 con.close();
	 }
	 }
}
catch(Exception e)
{
	System.out.println(e);
}

String s1=null;
String su2=null;
String s3=null;
String s4=null;
String s5=null;


try
{
	Class.forName("com.mysql.jdbc.Driver");
	Connection con=null;
	con=DriverManager.getConnection("jdbc:mysql://localhost:3306/student","root","golu");
	 Statement s=con.createStatement();
	 ResultSet rs = s.executeQuery("select * from sresult");
	 
	 while(rs.next())
	 {
	 String rollno=Integer.toString(rs.getInt(1));
	 
	 if(roll.equals(rollno))
	{
		 s1= rs.getString(2);
         su2= rs.getString(3);
		 s3= rs.getString(4);
		 s4= rs.getString(5);
		 s5= rs.getString(6);
		 con.close();
	 }
	 }
}
catch(Exception e)
{
	System.out.println(e);
}
%>
<div class="loginbox" style="margin-left:450px;">

<center>
<br>
<%=sub1%>  :  <%=s1%><br><br><br>
<%=sub2%>  :  <%=su2%><br><br><br>
<%=sub3%>  :  <%=s3%><br><br><br>
<%=sub4%>  :  <%=s4%><br><br><br>
<%=sub5%>  :  <%=s5%><br><br><br>
 </center>
</form>
</div>

</body>
</html>