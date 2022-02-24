<%@page import="adminportal.model.DbConnectionProvider"%>
<%@page import="java.sql.*"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Student-ClassSchedules</title>
<link rel="stylesheet" href="../css/viewRegisteredDataCSS.css">
<link rel="stylesheet" href="css/viewRegisteredDataCSS.css">
<link rel="stylesheet" href="../css/register.css">
<link rel="stylesheet" href="css/register.css">
</head>
<%@ include file="studentHeader.jsp"%>
<body>
<table id="allRegisteredData">
<div ><center><h3 style="color:green;"> <b>Your Class Schedule is..!!!</b></h3></center> </div>
		
		<tr>
			<th scope="col">YourName</th>
			<th scope="col">YourCourse</th>
			<th scope="col">YourSubject</th>
			<th scope="col">Schedule-OfClass</th>
			<th scope="col">Assigned-TeacherName</th> 
			<th scope="col">Email-Teacher</th>
			<th scope="col">Phone-Teacher</th>   
		</tr>
		

	<%
       		try{
       			
       			Connection con = DbConnectionProvider.getCon();
       			Statement stmt = con.createStatement();
       			ResultSet rs = stmt.executeQuery("select *from assignstudent");
       			 while(rs.next()){
       				 
       %>
       
		<tr>
			<td>1</td>
			<td>2</td>
			<td>3</td>
			<td>4</td>
			<td>5</td>
			<td>6</td>
			<td>7</td>
		</tr>
		<% 					}
       			
       			 }catch(Exception e){
       				System.out.println(e); 
       			 }  			 
	 	%>	

</table>
<div><center><h1> <b>Show Page</b> <a href="contactUS.jsp"> 
<b>Contact-US </b> </a> </h1></center> </div>
<div><center><h1> <b>Show Page</b> <a href="aboutUS.jsp"> 
<b>About-US </b> </a> </h1></center> </div>
</body>
<div style="margin-top: 120px">
    <%@ include file="../footer.jsp"%>
  </div>
</html>