<%@page import="adminportal.model.DbConnectionProvider"%>
<%@page import="java.sql.*"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>AvailableSubjects-ViewPage</title>
<link rel="stylesheet" href="../css/viewRegisteredDataCSS.css">
<link rel="stylesheet" href="css/viewRegisteredDataCSS.css">
<link rel="stylesheet" href="../css/register.css">
<link rel="stylesheet" href="css/register.css">
</head>
<%@ include file="adminHeader.jsp"%>
<body>
<table id="allRegisteredData">
<div ><center><h3 style="color:blue;"> <b>Available Classes and Subjects List is..!!!</b></h3></center> </div>
		<tr>
			<th scope="col">Available-Courses</th>
			<th scope="col">AvailableSubjects-ForAvailableCourses</th>
			<th scope="col">AdminDashBoardPage</th>
		</tr>
		<%
       		try{
       			
       			Connection con = DbConnectionProvider.getCon();
       			Statement stmt = con.createStatement();
       			ResultSet rs = stmt.executeQuery("select *from assignclasses");
       			
       			 while(rs.next()){
       				 
       %>
		
		<tr>
			<td><%=rs.getString(2)%></td>
			<td><%=rs.getString(3)%></td>
			<td><a href="adminDashboardView.jsp">Goto-AdminDashBoardPage</a></td>	
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