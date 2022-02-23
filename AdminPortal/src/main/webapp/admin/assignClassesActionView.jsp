<%@page import="adminportal.model.DbConnectionProvider"%>
<%@page import="java.sql.*"%>
<%@page import="adminportal.controller.LAAPView"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>AssignAction-ViewPage</title>
<link rel="stylesheet" href="../css/register.css">
<link rel="stylesheet" href="css/register.css">
</head>
<%@ include file="adminHeader.jsp"%>
<body>
<%
       		
		String idStudent = request.getParameter("idStudent");
		System.out.println("Coming ID is:"+idStudent);
		try{
       			
       			Connection con = DbConnectionProvider.getCon();
       			Statement stmt = con.createStatement();
       			ResultSet rs = stmt.executeQuery("select *from usersadminportal where loginRole='Student' and id='"+idStudent+"' ");
       			while(rs.next()){
       				 
  %>
<div class="container">
<form action="<%=LAAPView.AssignStudentCtl%>" method="post">
<label>   
			<b>Student Name is:</b>
</label> 
<input type="text" name="studentName" placeholder="Enter Student Name:" value="<%=rs.getString(3)%>" required>
 	<div>  
		<label>   
			<b>Course of Student is:</b>
		</label>     
			<select id="course" name="course">  
				<option value="<%=rs.getString(6)%>"><%=rs.getString(6)%></option>    
			</select>  
	</div>

<label><b>Student Email:</b></label> <br>   
<input type="text" name="email" placeholder="Enter email of student....!!!" value="<%=rs.getString(10)%>" required />

<br><label><b>Student Phone No:</b></label>    
<input type="text" name="phoneNo" placeholder="Enter Phone of student....!!!" value="<%=rs.getString(8)%>" required />

<button type="submit" class="registerbtn">AssignClasses-Submit</button>
</form>
<% 						
			}			
	
	}
	catch(Exception e){
		System.out.println(e);
	}
%>
</div>
<%
       		
		String idSubject = request.getParameter("idSubject");
		System.out.println("Coming ID is:"+idStudent);
		try{
       			
       			Connection con = DbConnectionProvider.getCon();
       			Statement stmt = con.createStatement();
       			ResultSet rs1 = stmt.executeQuery("select *from subjects where idSubject='"+idSubject+"' ");
       			while(rs1.next()){
       				 
  %>
<div class="container">
<form action="<%=LAAPView.AssignClassCtl %>" method="post">
 	<div>  
		<label>   
			<b>Available Class For Registered Course is:</b>
		</label>     
			<select id="availableCourse" name="availableCourse">  
				<option value="<%=rs1.getString(3)%>"><%=rs1.getString(3)%> </option>    
			</select>  
	</div>

<label><b>Subjects for Registered Class is:</b></label> <br>   
<input type="text" name="subjectName" placeholder="Enter Subject for registered Class....!!!" 
value="<%=rs1.getString(2)%>" required />
<button type="submit" class="registerbtn">AssignSubject-Submit</button>
</form>
<% 						
			}			
	
	}
	catch(Exception e){
		System.out.println(e);
	}
%>
</div>
<%
       		
		String idTeacher = request.getParameter("idTeacher");
		System.out.println("Coming ID is:"+idTeacher);
		try{
       			
       			Connection con = DbConnectionProvider.getCon();
       			Statement stmt = con.createStatement();
       			ResultSet rs2 = stmt.executeQuery("select *from teachers where idTeacher='"+idTeacher+"' ");
       			while(rs2.next()){
       				 
  %>
<div class="container">
<form action="<%=LAAPView.AssignTeacherCtl %>" method="post">

<label><b>Teacher Name is:</b></label> <br>   
<input type="text" name="teacherName" placeholder="Enter Teacher's Name....!!!" 
value="<%=rs2.getString(2)%>" required />

<label><b>Teacher's Specialized Knowledge in Subject is: </b></label> <br>   
<input type="text" name="specialSubject" placeholder="Enter Teacher's Specialized Subject....!!!" 
value="<%=rs2.getString(4)%>" required />

 	<div>  
		<label>   
			<b>Teacher's Qualification is:</b>
		</label>     
			<select id="qualification" name="qualification">  
				<option value="<%=rs2.getString(3)%>"><%=rs2.getString(3)%> </option>    
			</select>  
	</div>

<label><b>Schedule of Class is: </b></label> <br>   
<input type="text" name="classSchedule" placeholder="Enter Schedule of Class with time, date and hours....!!!" 
required />

<button type="submit" class="registerbtn">AssignTeacher-Submit</button>
</form>
<% 						
			}			
	
	}
	catch(Exception e){
		System.out.println(e);
	}
%>
</div>
<div><center><h1> <b>Show</b> <a href="assignClassesAndTeacherView.jsp"> 
<b>AssignModule-ForClasses</b> </a> </h1></center> </div>
</body>
<div>
    <%@ include file="../footer.jsp"%>
  </div>

</html>