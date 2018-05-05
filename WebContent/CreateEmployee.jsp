<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Create Employee</title>
<STYLE TYPE="text/css">

TD{font-family: Arial; font-size: 15pt;}
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
input[type=text],input[type="password"], input[type="number"],input[type="date"]  {
    font-size:16px;
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
 </style>
</head>
<body>
<%@ include file ="EAHeader.jsp" %> 
<br>
<form action="CreateEmployeeServlet" method="post">

	<table align="left">
		<tr>
			<td>Name : </td> 
			<td> <input type="text"></td>
		</tr>
		<tr>
			<td>Type of Employee : </td>
			<td><select name="EmployeeType" >
				<option value = "ENGINEER" >ENGINEER</option>
				<option value = "MANAGEMENT">MANAGEMENT</option>
				<option value = "ACCOUNTANT">ACCOUNTANT</option>
				<option value = "ASSOCIATE">ASSOCIATE</option>
				<option value = "ADMIN">ADMIN</option>
				</select></td>
		</tr>
		<tr>
			<td>Date of Birth : </td>
			<td> <input type = "date" name="ename"></td>
		</tr>
		<tr>
			<td>Employee since : </td>
			<td> <input type = "date" name="edob"></td>
		</tr>
		<tr>
			<td>Salary : </td>
			<td> <input type="number" name="esalary"></td>
		</tr>
		<tr>
			<td>Address : </td>
			<td><textarea rows="5" cols="50" name="eaddress"></textarea></td>
		</tr>
		<tr>
			<td>Mobile Number : </td>
			<td><input type="number" name="emob"></td>
		<tr>
		<td><input type="submit"></td>
		
	</table>
</form>

</body>
</html>