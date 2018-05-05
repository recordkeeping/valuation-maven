<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>ENGINEER - HOME</title>
<style type="text/css"> 
table, th, td{
 
 border: 2px solid black;
 padding: 5px;
 text-align: left;
 padding-bottom: 5px;
}


<style type="text/css">
	.TFtable{
		width:100%; 
		border-collapse:collapse; 
		font-size:150%;
	}
	.TFtable td{ 
		padding:7px; border:#4e95f4 1px solid;
	}
	
	.TFtable tr{
		background: #b8d1f3;
	}

	.TFtable tr:nth-child(odd){ 
		background: #b8d1f3;
	}

	.TFtable tr:nth-child(even){
		background: #dae5f4;
	}

tr:hover {background-color: #f5f5f5;}

</style>

</head>
<body>
<%@ include file ="EAHeader.jsp" %> 

<h3 align="right">ENGINEER NAME</h3>

<br>
<br>

<div> 
	<table class="TFtable">
		<tr>
			<td><font size = "7">No of Reports this month</font></td>
			<td><font size = "7">10</font></td>
		</tr>
		<tr>
			<td><font size = "7">Completed Reports</font></td>
			<td><font size = "7" color="green">8</font></td>
		</tr>
		<tr>
			<td><font size = "7">Pending</font></td>
			<td><font size = "7" color="red">2</font></td>
		</tr>
	</table>
</div>

</body>
</html>