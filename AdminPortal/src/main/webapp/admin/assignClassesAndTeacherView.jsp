<%@page import="adminportal.controller.LAAPView"%>
<%@page import="adminportal.model.DbConnectionProvider"%>
<%@page import="java.sql.*"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>AssignClass-ViewPage</title>
<link rel="stylesheet" href="../css/viewRegisteredDataCSS.css">
<link rel="stylesheet" href="css/viewRegisteredDataCSS.css">
<link rel="stylesheet" href="../css/register.css">
<link rel="stylesheet" href="css/register.css">
</head>
<%@ include file="../admin/adminHeader.jsp"%>
<body>

<table id="allRegisteredData">
<div ><center><h3 style="color:red;"> <b>Available Classes List is..!!!</b></h3></center> </div>
		<tr>
			<th scope="col">AvailableClassName</th>
			<th scope="col">idSubject</th>
			<th scope="col">SubjectsForClass</th>
		</tr>
		<%
       		try{
       			
       			Connection con = DbConnectionProvider.getCon();
       			Statement stmt = con.createStatement();
       			ResultSet rs = stmt.executeQuery("select *from subjects");
       			
       			 while(rs.next()){
       				 
       %>
		
		<tr>
			<td><%=rs.getString(3)%></td>
			<td><%=rs.getString(1)%></td>
			<td><%=rs.getString(2)%></td>		
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
			<th scope="col">IdTeacher</th>
			<th scope="col">TeacherName</th>
			<th scope="col">Qualification</th>
			<th scope="col">Teachers-SpecializedSubject</th>
		</tr>	
		
		<%	    try{
       			Connection con = DbConnectionProvider.getCon();
       			Statement stmt = con.createStatement();
       			ResultSet rs1 = stmt.executeQuery("select *from teachers");
       			 while(rs1.next()){
       				 
       %>
		
		<tr>
			<td><%=rs1.getString(1)%></td>
			<td><%=rs1.getString(2)%></td>
			<td><%=rs1.getString(3)%></td>
			<td><%=rs1.getString(4)%></td>
			
		</tr>
		<% 					}
       			
       			 }catch(Exception e){
       				System.out.println(e); 
       			 }  			 
	 	%>	

</table>
<table id="allRegisteredData">
<div ><center><h3 style="color:red;"> <b>Registered Students List is..!!!</b></h3></center> </div>
		
		<tr>
			<th scope="col">Id</th>
			<th scope="col">Role</th>
			<th scope="col">F-Name</th>
			<th scope="col">M-Name</th>
			<th scope="col">L-Name</th> 
			<th scope="col">Course</th>
			<th scope="col">Gender</th>
			<th scope="col">Phone</th>
			<th scope="col">Address</th>
			<th scope="col">Email</th>
			<th scope="col">Pwd</th>
			<th scope="col">R-Pwd</th>
			<th scope="col">S-Question</th>
			<th scope="col">Ans</th>
			
		</tr>
		

	<%
       		try{
       			
       			Connection con = DbConnectionProvider.getCon();
       			Statement stmt = con.createStatement();
       			ResultSet rs = stmt.executeQuery("select *from usersadminportal where loginRole='Student' ");
       			 while(rs.next()){
       				 
       %>
       
		<tr>
			<td><%=rs.getString(1)%></td>
			<td><%=rs.getString(2)%></td>
			<td><%=rs.getString(3)%></td>
			<td><%=rs.getString(4)%></td>
			<td><%=rs.getString(5)%></td>
			<td><%=rs.getString(6)%></td>
			<td><%=rs.getString(7)%></td>
			<td><%=rs.getString(8)%></td>
			<td><%=rs.getString(9)%></td>
			<td><%=rs.getString(10)%></td>
			<td><%=rs.getString(11)%></td>
			<td><%=rs.getString(12)%></td>
			<td><%=rs.getString(13)%></td>
			<td><%=rs.getString(14)%></td>
		</tr>
		<% 					}
       			
       			 }catch(Exception e){
       				System.out.println(e); 
       			 }  			 
	 	%>	

</table>
<div style="margin-top: 130px"><button type="submit" class="registerbtn"><h3 style="color:blue;">AssignClasses-Action</h3></button></div>
</body>
<div style="margin-top: 120px">
    <%@ include file="../footer.jsp"%>
  </div>
</html>