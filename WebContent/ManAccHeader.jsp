<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">

<style type="text/css">
input[type=button], input[type=submit], input[type=reset] {
    background-color: #4CAF50;
    border: none;
    color: white;
    padding: 16px 32px;
    text-decoration: none;
    margin: 4px 2px;
    cursor: pointer;
}
.head{
background-color: #000000;
color:#ffffff;
}


ul {
    list-style-type: none;
    margin: 0;
    padding: 0;
    overflow: hidden;
    background-color: #ffffff;
}

li {
    float: left;
    border-right:1px solid #bbb;
}

li:last-child {
    border-right: none;
}

li a {
    display: block;
    color: white;
    text-align: center;
    padding: 14px 16px;
    text-decoration: none;
}

li a:hover:not(.active) {
    background-color: #111;
}

.active {
    background-color: #4CAF50;
}
</style>
</head>
<body>
<div>
<h2 align="center" CLASs="head">DR.C.SIVAPRAKASAM & ASSOCIATES</h2>
</div>


<ul>
  <li><form action = "HomePage.jsp" method="post">
	<input type="submit" value="HOME">
	</form>
</li>

 

 <li><form action = "HomePage.jsp" method="post">
	<input type="submit" value="VIEW ENTRIES">
	</form>
</li>

<li style="float:LEFT">
  <form action = "HomePage.jsp" method="post">
	<input type="submit" value="PERFOMANCE">
	</form>
</li>

<li style="float:right">
  <form action = "HomePage.jsp" method="post">
	<input type="submit" value="LOGOUT">
	</form>
</li>

</ul>
</body>
</html>