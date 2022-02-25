<%@page import="adminportal.model.DbConnectionProvider"%>
<%@page import="java.sql.*"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>TotalUsers-ViewPage</title>
<link rel="stylesheet" href="../css/viewRegisteredDataCSS.css">
<link rel="stylesheet" href="css/viewRegisteredDataCSS.css">
<link rel="stylesheet" href="../css/register.css">
<link rel="stylesheet" href="css/register.css">
</head>
<%@ include file="adminHeader.jsp"%>
<body>
<table id="allRegisteredData">
<div ><center><h3 style="color:blue;"> <b>Total Registered Users Count is:</b></h3></center> </div>
		<tr>
			<th scope="col">RegisteredUsers-Count</th>
			<th scope="col">AdminDashBoard-Page</th>
		</tr>
		<%
			
			String totalRowCount="";
       		try{
       			
       			Connection con = DbConnectionProvider.getCon();
       			Statement stmt = con.createStatement();
       			ResultSet rs = stmt.executeQuery("SELECT COUNT(*)  FROM  usersadminportal");
       			
       			 while(rs.next()){ totalRowCount = rs.getString(1); }
       				 
       %>
		
		<tr>
			<td> <h2 style="color:blue;"><b>Total Registered Users are:<% out.println(" " + totalRowCount);%></b></h2></td>
			<td><a href="adminDashboardView.jsp"><b>Goto-AdminDashBoardPage</b></a></td>	
		</tr>
		<% 	
       			
       			 }catch(Exception e){
       				System.out.println(e); 
       			 }  			 
	 %>	
</table> 	
</body>
<div style="margin-top: 120px">
    <%@ include file="../footer.jsp"%>
 </div>