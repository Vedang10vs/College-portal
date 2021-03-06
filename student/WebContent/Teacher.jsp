<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Teacher</title>
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
font-size:25px;
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
color:#7EF9FF;
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

<p><h1 style="float:left;color:black;font-family:'Arial Black';margin-left:20px;">TEACHER</h1></p><br>
<p><h2 style="float:left;color:black;font-family:'Arial narrow';">Login</h2></p>


<div class="navbar">
<a href="studetail.html">Student</a>
<a href="Tupdate.html">Settings</a>
<a href="Teacher.jsp">Home</a>
<a style="float:right;" href="AboutUs.html">About Us</a>
<a style="float:right;" href="Logout.html">logout</a>
</div>

<%
HttpSession s1=request.getSession(true);
String name=(String)s1.getAttribute("name");

%>
<center>
<p><h2 style="float:left;color:black;font-family:'Arial narrow';">Welcome <%=name%></h2></p>
</center>

<div class="loginbox" style="margin-left:450px;">

<center>

<a href="Attupdate.jsp">Attendance update</a><br><br><br>
<a href="Notiupdate.jsp">Notification update</a><br><br><br>
<a href="Subject.jsp">Subjects update</a><br><br><br>
<a href="Midsem.jsp">Mid Sem. Result </a><br><br><br>
<a href="Sdetails.jsp">Student Detail</a><br><br><br>
<a href="Tupdate.jsp">Info update</a><br><br><br>


</center>
</form>
</div>


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