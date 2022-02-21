<%@page import="adminportal.controller.LAAPView"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>SetUpPage-MasterListOfTeachers</title>
<link rel="stylesheet" href="../css/register.css">
<link rel="stylesheet" href="css/register.css">

</head>
<%@ include file="adminHeader.jsp"%>
<body>

	<%
		String msg = request.getParameter("msg");
		if ("invalid".equals(msg)) {
	%>
	<h1 style="color:red;">Some Problems Occurred: Please try again.....!!!</h1>
	<%
								}
	%>

<div class="container">

<form action="<%=LAAPView.AddTeacherCtl %> " method="post">

<label><b>Enter Teacher's Name .........!!</b></label>    
<input type="text" name="teacherName" placeholder="Enter Teacher's Name....!!!"  required />
 	
 	<div>  
		<label>   
			<b>Please Select Qualification of Teacher: --!!!! </b>
		</label>     
			<select id="qualification" name="qualification">  
				<option value="Qualification">Qualification</option>  
				<option value="BCA">BCA</option>  
				<option value="BBA">BBA</option>  
				<option value="B.Tech">B.Tech</option>  
				<option value="MBA">MBA</option>  
				<option value="MCA">MCA</option>  
				<option value="M.Tech">M.Tech</option>
				<option value="M.A">M.A</option> 
				<option value="M.Sc">M.Sc</option> 
				<option value="B.Sc">B.Sc</option> 
				<option value="B.A">B.A</option> 
				<option value="M.A-English">M.A in English</option> 
			</select>  
	</div>
	<label><b>Enter Teacher's Specialized Subject Name.........!!</b></label>    
<input type="text" name="subjectName" placeholder="Enter Teacher's Specialized Subject Name....!!!"  required />



<button type="submit" class="registerbtn">AddTeachers's-MasterList</button>
</form>
</div>
<div>
<%
		if ("valid".equals(msg)) {
%>
	<h1 style="color:green;">Successfully Data Inserted into Teachers Table:</h1>
	
	<%
								}
	%>
<div><center><h1> <b>Show</b> <a href="showMasterListOfTeachers.jsp"> 
<b style="color: blue">Teacher's-MasterList</b> </a> </h1></center> </div>
</div>
</body>
<div>
    <%@ include file="../footer.jsp"%>
  </div>

</html>