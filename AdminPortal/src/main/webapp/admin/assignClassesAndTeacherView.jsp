<%@page import="adminportal.controller.LAAPView"%>
<%@page import="adminportal.model.DbConnectionProvider"%>
<%@page import="java.sql.*"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>AssignActionClass-ViewPage</title>
<link rel="stylesheet" href="../css/viewRegisteredDataCSS.css">
<link rel="stylesheet" href="css/viewRegisteredDataCSS.css">
<link rel="stylesheet" href="../css/register.css">
<link rel="stylesheet" href="css/register.css">
</head>
<%@ include file="../admin/adminHeader.jsp"%>
<body>

<%
		String msg = request.getParameter("msg");
		if ("validStudent".equals(msg)) {
%>
	<h1 style="color:blue;">Student got Assigned Successfully: For a Class...!!!  </h1>
	<%
								}
	%>
	
	<%
	if ("invalidStudent".equals(msg)) {
	%>
	<h1 style="color:red;">Assigning Student For a Class got some Problem: Please try again...!!!! </h1>
	<%
								}
	%>


<%

		if ("validClass".equals(msg)) {
%>
	<h1 style="color:blue;">Class got Assigned Successfully: For a Student and For a Teacher...!!!  </h1>
	<%
								}
	%>
	
	<%
	if ("invalidClass".equals(msg)) {
	%>
	<h1 style="color:red;">Assigning Class For a Student and Teacher got some Problem: Please try again...!!!! </h1>
	<%
								}
	%>


<%
		
		if ("validTeacher".equals(msg)) {
%>
	<h1 style="color:blue;">Teacher got Assigned Successfully: For a Class...!!!  </h1>
	<%
								}
	%>
	
	<%
	if ("invalidTeacher".equals(msg)) {
	%>
	<h1 style="color:red;">Assigning Teacher For a Class got some Problem: Please try again...!!!! </h1>
	<%
								}
	%>



<table id="allRegisteredData">
<div ><center><h3 style="color:green;"> <b>Registered Students List is..!!!</b></h3></center> </div>
		
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
			<th scope="col">AssignStudent-Action</th>
			
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
			<td><a href="assignClassesActionView.jsp?idStudent=<%=rs.getString(1)%>">AssigningStudent-ForClass</a></td>
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
			<th scope="col">AvailableClassName</th>
			<th scope="col">idSubject</th>
			<th scope="col">SubjectsForClass</th>
			<th scope="col">AssignClasses-Action</th>
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
			<td><a href="assignClassesActionView.jsp?idSubject=<%=rs.getString(1)%>">AssigningSubjects-ToStudent</a></td>		
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
			<th scope="col">AssignTeacher-Action</th>
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
			<td><a href="assignClassesActionView.jsp?idTeacher=<%=rs1.getString(1)%>">AssigningTeacher-ForClasses</a></td>
			
		</tr>
		<% 					}
       			
       			 }catch(Exception e){
       				System.out.println(e); 
       			 }  			 
	 	%>	

</table>
</body>
<div style="margin-top: 120px">
    <%@ include file="../footer.jsp"%>
  </div>
</html>