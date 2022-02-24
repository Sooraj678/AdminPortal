<%@page import="adminportal.model.DbConnectionProvider"%>
<%@page import="java.sql.*"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>TeacherSchedules-Page</title>
<link rel="stylesheet" href="../css/viewRegisteredDataCSS.css">
<link rel="stylesheet" href="css/viewRegisteredDataCSS.css">
<link rel="stylesheet" href="../css/register.css">
<link rel="stylesheet" href="css/register.css">
</head>
<%@ include file="teacherHeader.jsp"%>
<body>
<body>
<%
	String msg = request.getParameter("msg");
	if ("invalid".equals(msg)) {
	%>
	<h1 style="color:red;">Some thing Went Wrong! Please Try Again and Give correct Input, It Does Not matched to Registered Course...!</h1>

	<%
								}
	%>

<form action="viewTeacherAssignment.jsp" method="get">
<label><b>Enter your Name to see your Class Schedules:</b></label> <br>   
<input type="text" name="teacherName" placeholder="Enter your Name :....!!!" 
required />

<label><b>Enter your Specialized Subject Name to see your Class Schedule:</b></label> <br>   
<input type="text" name="specializedSubject" placeholder="Specialized Subject Name:....!!!" 
required />

<button type="submit" class="registerbtn">ShowYour-ClassSchedules</button>

<div><center><h1> <b>Show Page</b> <a href="contactUS.jsp"> 
<b>Contact-US </b> </a> </h1></center> </div>
<div><center><h1> <b>Show Page</b> <a href="aboutUS.jsp"> 
<b>About-US </b> </a> </h1></center> </div>
</form>
</body>
<div style="margin-top: 120px">
    <%@ include file="../footer.jsp"%>
  </div>
</html>