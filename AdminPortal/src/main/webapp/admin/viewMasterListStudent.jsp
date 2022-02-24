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
<div ><center><h3 style="color:green;"> <b>Student's Master List For Assigned Classes..!!!</b></h3></center> </div>
		
		<tr>
			<th scope="col">StudentName</th>
			<th scope="col">Course-OfStudent</th>
			<th scope="col">Email-OfStudent</th>
			<th scope="col">PhoneNo-OfStudent</th>
			<th scope="col">Subject-ForCourse</th> 		
		</tr>
		

	<%
       		try{
       			
       			Connection con = DbConnectionProvider.getCon();
       			Statement stmt = con.createStatement();
       			ResultSet rs = stmt.executeQuery("select *from assignstudent");
       			 while(rs.next()){
       				 
       %>
       
		<tr>
			<td><%=rs.getString(2)%></td>
			<td><%=rs.getString(3)%></td>
			<td><%=rs.getString(4)%></td>
			<td><%=rs.getString(5)%></td>
			<td><%=rs.getString(6)%></td>
		</tr>
		<% 					}
       			
       			 }catch(Exception e){
       				System.out.println(e); 
       			 }  			 
	 	%>	

</table>
<table id="allRegisteredData">
<div ><center><h3 style="color: blue;"> <b>Assigned Teachers List For Each Registred Students..!!!</b></h3></center> </div>
		<tr>
			<th scope="col">Assigned-TeacherName</th>
			<th scope="col">Teacher's-Qualification</th>
			<th scope="col">SpecializedSubject-OfTeacher</th>
			<th scope="col">Schedule-OfClass</th>
			<th scope="col">NameOf-Student</th>
			<th scope="col">CourseOf-Student</th>
			<th scope="col">SubjectForCourse-ForStudent</th>
		</tr>	
		
		<%	    try{
       			Connection con = DbConnectionProvider.getCon();
       			Statement stmt = con.createStatement();
       			ResultSet rs1 = stmt.executeQuery("select *from assignteacher");
       			 while(rs1.next()){
       				 
       %>
		
		<tr>
			<td><%=rs1.getString(2)%></td>
			<td><%=rs1.getString(3)%></td>
			<td><%=rs1.getString(4)%></td>
			<td><%=rs1.getString(5)%></td>	
			<td><%=rs1.getString(6)%></td>
			<td><%=rs1.getString(7)%></td>
			<td><%=rs1.getString(8)%></td>	
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