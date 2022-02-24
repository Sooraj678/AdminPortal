<%@page import="adminportal.model.DbConnectionProvider"%>
<%@page import="java.sql.*"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Student-ClassSchedulesView</title>
<link rel="stylesheet" href="../css/viewRegisteredDataCSS.css">
<link rel="stylesheet" href="css/viewRegisteredDataCSS.css">
<link rel="stylesheet" href="../css/register.css">
<link rel="stylesheet" href="css/register.css">
</head>
<%@ include file="studentHeader.jsp"%>
<body>

<%
	String firstName = request.getParameter("firstName");
	System.out.println("Coming first Name is:"+firstName);
	int flag=0;
	String course = request.getParameter("course");
	System.out.println("Coming course Name is:"+course);
				 
%>

<table id="allRegisteredData">
<div ><center><h3 style="color:green;"> <b>Your Class Schedule is..!!!</b></h3></center> </div>
		
		<tr>
			<th scope="col">YourName</th>
			<th scope="col">YourCourse</th>
			<th scope="col">YourSubject</th>
		</tr>
		

	<%
       		try{
       			
       			Connection con = DbConnectionProvider.getCon();
       			Statement stmt = con.createStatement();
       			ResultSet rs = stmt.executeQuery("select *from assignstudent where nameStudent='"+firstName+"' and courseStudent ='"+course+"' ");
       			 while(rs.next()){
       				 
       %>
       
		<tr>
			<td><%=rs.getString(2) %></td>
			<td><%=rs.getString(3)%></td>
			<td><%=rs.getString(6)%></td>

		</tr>
		<% 					}
       			
       			 }catch(Exception e){
       				System.out.println(e); 
       			 }  			 
	 	%>	

</table>

<table id="allRegisteredData">
<div ><center><h3 style="color:red;"> <b>Your Assigned Teacher Information is..!!!</b></h3></center> </div>
		
		<tr>
			<th scope="col">Assigned-TeacherName</th> 
			<th scope="col">Teacher-Qualification</th>
			<th scope="col">Schedule-OfClass</th> 
			<th scope="col">Contact-US</th> 
		</tr>
		

	<%
       		try{
       			
       			Connection con = DbConnectionProvider.getCon();
       			Statement stmt = con.createStatement();
       			ResultSet rs = stmt.executeQuery("select *from assignteacher where studentName='"+firstName+"' and studentCourse ='"+course+"'");
       			 while(rs.next()){ flag++;
       				 
      %>
       
		<tr>
			<td><%=rs.getString(2) %></td>
			<td><%=rs.getString(3)%></td>
			<td><%=rs.getString(5)%></td>
			<td><a href="contactUS.jsp">WriteUS-ForAnyQuery</a></td>

		</tr>
		<% 					}
       			
       			 }catch(Exception e){
       				System.out.println(e); 
       			 }  			 
	 	%>	

</table>
<%
if (flag==0){
	response.sendRedirect("studentClassSchedule.jsp?msg=invalid");
}
				 
%>
  
<div><center><h1> <b>Show Page</b> <a href="contactUS.jsp"> 
<b>Contact-US </b> </a> </h1></center> </div>
<div><center><h1> <b>Show Page</b> <a href="aboutUS.jsp"> 
<b>About-US </b> </a> </h1></center> </div>
<div><center><h1> <b>Show Page</b> <a href="aboutUS.jsp"> 
<b>Student-ClassSchedule</b> </a> </h1></center> </div>
</body>
<div style="margin-top: 120px">
    <%@ include file="../footer.jsp"%>
  </div>
</html>