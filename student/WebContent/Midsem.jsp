<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
<style>




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
float:right;
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
width:320px;
height:550px;
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

.loginbox input[type="password"]
{
border:none;
border-bottom:10px grey;
background:transparent;
height:30px;
color:#7EF9FF;
font-size:16px;

}

.loginbox input[type="submit"]
{
border:none;
outline:none;
height:40px;
background:white;
font-size:15px;
border-radius:10px;
width:70px;
margin-left:90px;
}
.loginbox input[type="submit"]:hover
{
cursor:pointer;
background:#7EF9FF;
color:blue;

}
.loginbox a{
text-decoration:none;
font-size:12px;
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
margin-top:40px;
color:white;
}

.footer a{
float:right;
display:block;
color:pink;
text-align:center;
padding:10px 10px;
font-size:15px;

}

.footer a:hover{
background:orange;
color:white;
}
</style>
</head>


<body background="medium.jpg">

<p><h1 style="float:left;color:black;font-family:'Arial Black';margin-left:20px;">TEACHER</h1></p><br>
<p><h2 style="float:left;color:black;font-family:'Arial narrow';">Login</h2></p>


<div class="navbar">
<a href="studetail.html">Student</a>
<a href="Tupdate.html">Settings</a>
<a href="Teacher.jsp">Home</a>
<b href="AboutUs.html">About Us</b>
<b href="Logout.html">logout</b>
</div>

<div class="loginbox" style="margin-left:450px;">
<form action="Midsem1.jsp" method=post><br></form>


<%@page import="java.sql.*"%>
<%@page import="student.*"%>


<%
String sub1=null;
String sub2=null;
String sub3=null;
String sub4=null;
String sub5=null;

HttpSession s1=request.getSession(true);
String branch=(String)s1.getAttribute("branch");
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
%>

Rollno.   : <input type="text" name="roll" placeholder="Roll No.">
<%=sub1%> : <input type="text" name="s1" placeholder="result">
<%=sub2%> : <input type="text" name="s2" placeholder="result">
<%=sub3%> : <input type="text" name="s3" placeholder="result">
<%=sub4%> : <input type="text" name="s4" placeholder="result">
<%=sub5%> : <input type="text" name="s4" placeholder="result">
<input type="submit" value="Submit"><br>


<center>
<div class="footer">
<h5>@ Copyright. All Rights Reserved.<br>
Contact:75662<br>
Email:student@gmail.com</h5>
<a href="AboutUs.html">About Us</a>
<a href="Home.html">Home</a>
</div>

</center>

</body>
</html>