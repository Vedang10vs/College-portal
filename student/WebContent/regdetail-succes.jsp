<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>regestration successful</title>
</script>
<style type="text/css">
input[type="text"] {
    padding: 6px 12px;
    margin: 2px 0;
    box-sizing: border-box;
    border: 2px mocha ;
    border-color:#0F52BA;
    border-radius: 4px;
    color: black;
    background-color:white;
}


input[type="password"] {
    padding: 6px 12px;
    margin: 2px 0;
    box-sizing: border-box;
    border: 2px mocha ;
    border-color:#0F52BA;
    border-radius: 4px;
 background-color:white;
    color: black;
}

select {
    padding: 6px 32px;
    margin: 2px 0;
    box-sizing: border-box;
    border: 2px mocha ;
    border-color:#0F52BA;
    border-radius: 4px;
	background-color:white;
    color: black;
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


.navbar{
background-color: #0a3564;
overflow:hidden;
width:100%;
}
.navbar a{

float:right;
display:block;
color:white;
text-align:center;
padding:9px 7px;
font-size:20px;

}
.navbar a:hover{
background:#7EF9FF;
color:black;
margin-bottom:5px;
}

.footer{
background: #0a3564;
overflow:hidden;
width:100%;
margin-top:450px;
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
background:white;
color:#0a3564;
}
</style>
</head>
<body>

<p><h1 style="float:left;color:black;font-family:'Arial Black';margin-left:20px;">REGESTRATION</h1></p><br>

<div class="navbar">

<form action='http://www.google.co.in?'>
<input type ="text" style="margin-top:20px;margin-left:20px;">
<input type="submit" value="search"/>
</form>
<a href="index.html">Home</a>
<a href="AboutUs.html">About Us</a>
</div>

<%
out.println("Record saved successfully!");
out.println(" Back to login page");
%>

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