<%@page import="adminportal.model.DbConnectionProvider"%>
<%@page import="java.sql.*"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>TeacherSchedules-ViewPage</title>
<link rel="stylesheet" href="../css/viewRegisteredDataCSS.css">
<link rel="stylesheet" href="css/viewRegisteredDataCSS.css">
<link rel="stylesheet" href="../css/register.css">
<link rel="stylesheet" href="css/register.css">
</head>
<%@ include file="teacherHeader.jsp"%>
<body>
<body>


<%
	String teacherName = request.getParameter("teacherName");
	System.out.println("Coming Teacher Name is:" +teacherName);
	int flag=0;
	String specializedSubject = request.getParameter("specializedSubject");
	System.out.println("Coming Specialized Subject Name is:" +specializedSubject);
				 
%>

<table id="allRegisteredData">
<div ><center><h3 style="color:green;"> <b>Your Sessions Schedule is......!!!</b></h3></center> </div>
		
		<tr>
			<th scope="col">TeacherName</th>
			<th scope="col">TeacherQualification</th>
			<th scope="col">Teacher-SpecializedSubject</th>
			<th scope="col">Schedule-OfClass</th>
			<th scope="col">Assigned-StudentName</th>
			<th scope="col">Course-OfStudent</th>
			<th scope="col">Subject-ForStudent</th> 
			   
		</tr>
		

	<%
       		try{
       			
       			Connection con = DbConnectionProvider.getCon();
       			Statement stmt = con.createStatement();
       			ResultSet rs = stmt.executeQuery("SELECT *from assignteacher where assignedTeacherName='"+teacherName+"' and specializedSubjectOfTeacher='"+specializedSubject+"'");
       			 while(rs.next()){
       				 
       %>
       
		<tr>
			<td><%=rs.getString(2)%></td>
			<td><%=rs.getString(3)%></td>
			<td><%=rs.getString(4)%></td>
			<td><%=rs.getString(5)%></td>
			<td><%=rs.getString(6)%></td>
			<td><%=rs.getString(7)%></td>
			<td><%=rs.getString(8)%></td>
		</tr>
		<% 					}
       			
       			 }catch(Exception e){
       				System.out.println(e); 
       			 }  			 
	 	%>	

</table>

<table id="allRegisteredData">
<div ><center><h3 style="color:red;"> <b>Contact Information of Student is......!!!</b></h3></center> </div>
		
		<tr> 
			<th scope="col">Email-OfStudent</th>
			<th scope="col">Phone-OfStudent</th>
			   
		</tr>
		

	<%
       		try{
       			
       			Connection con = DbConnectionProvider.getCon();
       			Statement stmt = con.createStatement();
       			ResultSet rs = stmt.executeQuery("SELECT *from assignstudent where subjectForCourse='"+specializedSubject+"' ");
       			 while(rs.next()){flag++;
       				 
       %>
       
		<tr>

			<td><%=rs.getString(4)%></td>
			<td><%=rs.getString(5)%></td>
		</tr>
		<% 					}
       			
       			 }catch(Exception e){
       				System.out.println(e); 
       			 }  			 
	 	%>	

</table>
<%
if (flag==0){
	response.sendRedirect("teacherSessionsSchedule.jsp?msg=invalid");
}
				 
%>
<div><center><h1> <b>Show Page</b> <a href="contactUS.jsp"> 
<b>Contact-US </b> </a> </h1></center> </div>
<div><center><h1> <b>Show Page</b> <a href="aboutUS.jsp"> 
<b>About-US </b> </a> </h1></center> </div>
<div><center><h1> <b>Show Page</b> <a href="teacherSessionsSchedule.jsp"> 
<b>Teacher-ClassSchedule</b> </a> </h1></center> </div>
</body>
<div style="margin-top: 120px">
    <%@ include file="../footer.jsp"%>
  </div>
</html>