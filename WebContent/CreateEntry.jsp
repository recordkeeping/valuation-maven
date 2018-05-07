<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>CREATE ENTRY</title>
<STYLE TYPE="text/css">

TD{font-family: Arial; font-size: 15pt;}
input {
    font-size:20px;
    }
    
   select {
    font-size:16px;
    }
    input:focus {
    border: 3px solid #555;
</STYLE>
</head>
<body>
<%@ include file ="EAHeader.jsp" %> 
<h3 ALIGN="RIGHT">ENGINEER NAME</h3>
<P ALIGN="center"><B>CREATE NEW ENTRY</B></P>
<div>
	<FORM action="NewEntryServlet" method="post">
	<table>
	
		<tr>
			<td>Date of inspection</td>
			<td><input type="date" name="doi" required></td>
		</tr>
		<tr>
			<td>File No</td>
			<td><input type="text" name="fileno"></td>
		</tr>
		<tr>
			<td>Bank</td>
			<td><input type="text" name="bank" required></td>
		</tr>
		<tr>
			<td>Branch</td>
			<td><input type="text" name="branch" required></td>
		</tr>
		<tr>
			<td>Client Name</td>
			<td><input type="text" name="cname" size="35" required></td>
		</tr>
		<tr>
			<td>Client Contact</td>
			<td><input type="number" name="cnum"></td>
		</tr>
		<tr>
			<td>Property at</td>
			<td><input type="text" name="propLoc" size="35" required></td>
		</tr>
		<tr>
			<td>Type of Property</td>
			<td>
				<select name="propType" required> 
					<option value="">SELECT</option>
					<option value="VACANT LAND">VACANT LAND</option>
					<option value="RESIDENTIAL FLAT">RESIDENTIAL FLAT</option>
					<option value="LAND AND RESIDENTIAL BUILDING">LAND AND RESIDENTIAL BUILDING</option>
					<option value="LAND AND COMMERCIAL BUILDING">LAND AND COMMERCIAL BUILDING</option>
					<option value="LAND AND RESIDENTIAL CUM COMMERCIAL BUILDING">LAND AND RESIDENTIAL CUM COMMERCIAL BUILDING</option>
					<option value="LAND AND INDUSTRIAL BUILDING">LAND AND INDUSTRIAL BUILDING</option>
					<option value="RESIDENTIAL FLAT UC">RESIDENTIAL FLAT UC</option>
					<option value="LAND AND RESIDENTIAL BUILDING UC">LAND AND RESIDENTIAL BUILDING UC</option>
					<option value="LAND AND COMMERCIAL BUILDING UC">LAND AND COMMERCIAL BUILDING UC</option>
					<option value="LAND AND RESIDENTIAL CUM COMMERCIAL BUILDING">LAND AND RESIDENTIAL CUM COMMERCIAL BUILDING UC</option>
					<option value="LAND AND INDUSTRIAL BUILDING UC">LAND AND INDUSTRIAL BUILDING UC</option>
					
				</select>
			</td>
		</tr>
		<tr>
			<td>Report Prepared by</td>
			<td><input type="text" name="repPrep" required></td>
		</tr>
		<tr>
			<TD></TD>
			
			<td>
			
			<input type="submit" value="CREATE" action="NewEntryServlet" >
			
			</td>
			
	</table>
	</FORM>
</div>

</body>
</html>