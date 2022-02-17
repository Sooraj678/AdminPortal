<%@page import="adminportal.controller.LAAPView"%>
<%@page import="adminportal.model.DbConnectionProvider"%>
<%@page import="java.sql.*"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>RegisteredData-Page</title>

<link rel="stylesheet" href="../css/viewRegisteredDataCSS.css">
<link rel="stylesheet" href="css/viewRegisteredDataCSS.css">
</head>

<%@ include file="../admin/adminHeader.jsp"%>

<body>

<%
		String msg = request.getParameter("msg");
		if ("done".equals(msg)) {
%>
	<h1 style="color:green;">Data Updated Successfully: For Student</h1>
	
	<%
								}
	%>
	
	<%
	if ("wrong".equals(msg)) {
	%>
	
	<h1 style="color:red;">Some Problem is there , Requested Operation is not Completed:Please try Again</h1>
	
	<%
								}
	%>
	
	<%
	if ("Done".equals(msg)) {
	%>
	
	<h1 style="color:blue;">Data Updated Successfully: For Teacher</h1>
	
	<%
								}
	%>
	
	<%
	if ("deleteOpDone".equals(msg)) {
	%>
	
	<h1 style="color:red;">Data Deleted Successfully .....!!!</h1>
	
	<%
								}
	%>
	


<h1 style="color: Red"> Welcome @ADMIN to the Page on which ADMIN will be able to see complete Registered Data</h1>

<table id="allRegisteredData">
		
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
			<th scope="col">Qualification</th>
			<th scope="col">Salary</th>
			<th scope="col">Edit</th>
			<th scope="col">Delete</th>
		</tr>
		

	<%
       		try{
       			
       			Connection con = DbConnectionProvider.getCon();
       			Statement stmt = con.createStatement();
       			ResultSet rs = stmt.executeQuery("select *from usersadminportal");
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
			<td><%=rs.getString(15)%></td>
			<td><%=rs.getString(16)%></td>
			<!-- Giving a edit option to User so that they can edit the user -->
			<% String loginRole = rs.getString(2);
			if("Student".equals(loginRole)){		
			
			%>
			<td><a href="updateRegisterStudent.jsp?id=<%=rs.getString(1)%>">Update-StudentData</a></td>
			<%     } else if ("Teacher".equals(loginRole)) {%>
			
			<td><a href="updateRegisterTeacher.jsp?id=<%=rs.getString(1)%>">Update-TeacherData</a></td>
			
			<% }%>
			
			<!-- Giving a Delete option to User so that they can delete the specific user's record based on got id from
			View Part only -->
			
			<td><a href="<%=LAAPView.DeleteCtl %>?id=<%=rs.getString(1)%>">Delete-CompleteData</a></td>
	
		</tr>
		<% 					}
       			
       			 }catch(Exception e){
       				System.out.println(e); 
       			 }  			 
	 %>
	
</table>
</body>
<%@ include file="../footer.jsp"%>
</html>
