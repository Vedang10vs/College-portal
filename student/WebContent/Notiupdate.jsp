<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>notification</title>
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
width:320px;
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
height:50px;
margin-bottom:20px;
}


.loginbox input[type="text"]
{
border:none;
border-bottom:10px grey;
background:white;
height:30px;
color:Black;
font-size:16px;
height:170px;
}

.loginbox input[type="submit"]
{
border:1px;
outline:1px;
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
margin-top:450px;
color:white;
}

.footer a{
float:right;
display:block;
color:#7EF9FF;
text-align:center;
padding:10px 10px;
font-size:15px;

}

.footer a:hover{
background:#7EF9FF;
color:black;
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
<b style="float:right;" href="AboutUs.html">About Us</b>
<b style="float:right;" href="Slogout.jsp">logout</b>
</div>

<%
HttpSession s1=request.getSession(true);
String branch=(String)s1.getAttribute("branch");
%> 

<div class="loginbox" style="margin-left:510px;">
<form action="Notiupdate1.jsp" method="post"><br/>
<center><h2 style="margin-left:50px;margin-top:5px;">Notice For <%=branch%></h2></center>
<input type="text" name="notice" placeholder="enter notice">
<input type="submit" value="Submit"><br>
</form>
</div>

<center>
<div class="footer">
<h5>@ Copyright. All Rights Reserved.<br>
Contact:75662<br>
Email:student@gmail.com</h5>
<a href="AboutUs.html">About Us</a>
<a href="index.html">Home</a>
</div>
</center>


</body>
</html>