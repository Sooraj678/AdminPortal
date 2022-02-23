<%@page import="adminportal.controller.LAAPView"%>
<%@page import="adminportal.model.DbConnectionProvider"%>
<%@page import="java.sql.*"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>ViewPage-ForAssignedClasses</title>
<link rel="stylesheet" href="../css/viewRegisteredDataCSS.css">
<link rel="stylesheet" href="css/viewRegisteredDataCSS.css">
<link rel="stylesheet" href="../css/register.css">
<link rel="stylesheet" href="css/register.css">
</head>
<%@ include file="../admin/adminHeader.jsp"%>
<body>

<table id="allRegisteredData">
<div ><center><h3 style="color:green;"> <b>Student's List Details For Classes  is..!!!</b></h3></center> </div>
		
		<tr>
			<th scope="col">idAssignStudent</th>
			<th scope="col">StudentName</th>
			<th scope="col">Course-OfStudent</th>
			<th scope="col">Email-OfStudent</th>
			<th scope="col">PhoneNo-OfStudent</th> 		
		</tr>
		

	<%
       		try{
       			
       			Connection con = DbConnectionProvider.getCon();
       			Statement stmt = con.createStatement();
       			ResultSet rs = stmt.executeQuery("select *from assignstudent");
       			 while(rs.next()){
       				 
       %>
       
		<tr>
			<td><%=rs.getString(1)%></td>
			<td><%=rs.getString(2)%></td>
			<td><%=rs.getString(3)%></td>
			<td><%=rs.getString(4)%></td>
			<td><%=rs.getString(5)%></td>
		</tr>
		<% 					}
       			
       			 }catch(Exception e){
       				System.out.println(e); 
       			 }  			 
	 	%>	

</table>
<table id="allRegisteredData">
<div ><center><h3 style="color:red;"> <b>Available Classes and Subjects List is..!!!</b></h3></center> </div>
		<tr>
			<th scope="col">idAssignClass</th>
			<th scope="col">Available-Courses</th>
			<th scope="col">AvailableSubjects-ForAvailableCourses</th>
		</tr>
		<%
       		try{
       			
       			Connection con = DbConnectionProvider.getCon();
       			Statement stmt = con.createStatement();
       			ResultSet rs = stmt.executeQuery("select *from assignclasses");
       			
       			 while(rs.next()){
       				 
       %>
		
		<tr>
			<td><%=rs.getString(1)%></td>
			<td><%=rs.getString(2)%></td>
			<td><%=rs.getString(3)%></td>	
		</tr>
		<% 					}
       			
       			 }catch(Exception e){
       				System.out.println(e); 
       			 }  			 
	 %>	 	
</table>
<table id="allRegisteredData">
<div ><center><h3 style="color: blue;"> <b>Available Teachers List is..!!!</b></h3></center> </div>
		<tr>
			<th scope="col">idAssignTeacher</th>
			<th scope="col">Assigned-TeacherName</th>
			<th scope="col">Teacher's-Qualification</th>
			<th scope="col">SpecializedSubject-OfTeacher</th>
			<th scope="col">Schedule-OfClass</th>
		</tr>	
		
		<%	    try{
       			Connection con = DbConnectionProvider.getCon();
       			Statement stmt = con.createStatement();
       			ResultSet rs1 = stmt.executeQuery("select *from assignteacher");
       			 while(rs1.next()){
       				 
       %>
		
		<tr>
			<td><%=rs1.getString(1)%></td>
			<td><%=rs1.getString(2)%></td>
			<td><%=rs1.getString(3)%></td>
			<td><%=rs1.getString(4)%></td>
			<td><%=rs1.getString(5)%></td>
			
		</tr>
		<% 					}
       			
       			 }catch(Exception e){
       				System.out.println(e); 
       			 }  			 
	 	%>	

</table>
<div><center><h1> <b>Show</b> <a href="assignClassesAndTeacherView.jsp"> 
<b>AssignModule-ForClasses</b> </a> </h1></center> </div>
</body>
<div style="margin-top: 120px">
    <%@ include file="../footer.jsp"%>
  </div>
</html>