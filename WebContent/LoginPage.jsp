<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Dr.C.SIVAPRAKASAM & ASSOCIATES</title>
<style type="text/css">

input[type=button], input[type=submit], input[type=reset] {
    background-color: #4CAF50;
    font-size:22px;
    border: none;
    color: white;
    padding: 16px 32px;
    text-decoration: none;
    margin: 4px 2px;
    cursor: pointer;
}
  


select {
    font-size:22px;
    width: 125%;
    padding: 16px 20px;
    border: 1;
    border-radius: 4px;
    background-color: #FFFFFF;
}
input[type=text],input[type="password"] {
    font-size:22px;
    width: 125%;
    padding: 12px 20px;
    margin: 8px 0;
    box-sizing: border-box;
}
input[type=text]:focus {
    border: 3px solid #555;
}
input[type=password]:focus {
    border: 3px solid #555;
}
select :focus {
	border: 3px solid #555;
}

.center {
    margin: 0;
    width: 50%;
    align: center;
    padding: 0;
     margin: auto;
     resize:both;
     
}
h2{
  font:  arial, helvetica, sans-serif;
 

  line-height: 1;
  direction: ltr;
}
grey{
	font-color:#F1F1F1;
}

.head{
background-color: #000000;
color:#ffffff;
margin: 0 0;


}

table{
margin:0 0;
}
.wrapper{

	width : 600px;
	margin: 0 auto;
	border: solid;
	background-color:#D3D3D3;
	

}
</style>
</head>
<body bgcolor =	"#DCDCDC" >
<form name = "home"  action="LoginServlet" method="post">


<div class ="head">
<h1 align="center" >DR.C.SIVAPRAKASAM & ASSOCIATES</h1>
</div>
<br>
<p align="center" class="grey"><font size="5"><u>LOGIN</u></font></p>


<div  class="wrapper">

<table align="CENTER" cellspacing="20">

<tr>
<td><font size ="6">Type of User  </font></td>

<td>
<select name="userType" >
<option value = "ENGINEER" >ENGINEER</option>
<option value = "MANAGEMENT">MANAGEMENT</option>
<option value = "ACCOUNTANT">ACCOUNTANT</option>
<option value = "ASSOCIATE">ASSOCIATE</option>
<option value = "ADMIN">ADMIN</option>
</select>
</td>
</tr>
<tr>
<td><font size = "6">User Name </font> </td>
<td><input type="text" name="name" required></td>
</tr>
<tr>
<td><font size = "6">Password </font></td>
<td><input type="password" name="password" required></td>
</tr>
<tr>
<td></td>
<td><input type="submit" value = "LOGIN" ></td>
</tr>
</table> 
</div>
</form>
</body>
</html>