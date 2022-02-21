<%@page import="adminportal.controller.LAAPView"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>SetUpPage-SubjectsForClasses</title>
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
<form action="<%=LAAPView.AddClassCtl %>" method="post">
 	<div>  
		<label>   
			<b>Available Classes are: --!!!! </b>
		</label>     
			<select id="class" name="class">  
				<option value="Class">Class</option>  
				<option value="BCA">BCA</option>  
				<option value="BBA">BBA</option>  
				<option value="B.Tech">B.Tech</option>  
				<option value="MBA">MBA</option>  
				<option value="MCA">MCA</option>  
				<option value="M.Tech">M.Tech</option>  
			</select>  
	</div>

<label><b>Enter available Subject's Name for selected Class: to create Master List of Classes ----!!</b></label>    
<input type="text" name="subjectName" placeholder="Enter Subject's Name....!!!"  required />

<button type="submit" class="registerbtn">AddClass-MasterList</button>
</form>
</div>
<div>
<%
		if ("valid".equals(msg)) {
%>
	<h1 style="color:green;">Successfully Data Inserted into Classes Table:</h1>
	
	<%
								}
	%>
<div><center><h1> <b>Show</b> <a href="showMasterListOfClasses.jsp"> 
<b>Classes-MasterListWithSubjects</b> </a> </h1></center> </div>
</div>
</body>
<div>
    <%@ include file="../footer.jsp"%>
  </div>

</html>