<!DOCTYPE html>  
<%@page import="adminportal.model.DbConnectionProvider"%>
<%@page import="java.sql.*"%>
<%@page import="adminportal.controller.LAAPView"%>
<html>  
<head>  
<meta name="viewport" content="width=device-width, initial-scale=1">  
<title>Teacher-UpdationPage</title>
<link rel="stylesheet" href="../css/register.css">
<link rel="stylesheet" href="css/register.css">
</head>  
<%@ include file="adminHeader.jsp"%> 
<body> 
<%
		String msg = request.getParameter("msg");
		if ("valid".equals(msg)) {
	%>
	<h1 style="color:green;">Successfully Registered as a Teacher</h1>
	<%
								}
	%>

	<%
		if ("invalid".equals(msg)) {
	%>
	<h1 style="color:red;">Some thing Went Wrong! Try Again !</h1>

	<%
									}
	%>
	
<%
	String id =request.getParameter("id");
	try{
			Connection con = DbConnectionProvider.getCon();
			Statement stmt = con.createStatement();
			ResultSet rs = stmt.executeQuery("select *from usersadminportal where id ='"+id+"' ");
			 while(rs.next()){
%>
 
<form action="<%=LAAPView.UpdateTeacherCtl %>" method="post">  
  <div class="container">  
  <center>  <h1 style="color: red"> Teacher Updation Form</h1> </center>  
  <hr>
  
<input type="hidden" name="id" value="<% out.println(id);%>">
<label> <b>Please Update Your First Name:</b> </label>   
<input type="text" name="firstname" placeholder= "Firstname" size="15" 
value="<%= rs.getString(3)%>" required />   

<label> <b>Please Update Your Middle Name:</b> </label>   
<input type="text" name="middlename" placeholder="Middlename" size="15" 
value="<%= rs.getString(4)%>" required />   

<label> <b>Please Update Your Last Name:</b> </label>    
<input type="text" name="lastname" placeholder="Lastname" size="15" 
value="<%= rs.getString(5)%>" required />   
 
<label>  <b>Please Enter Your Phone Number:</b>   </label>    
<input type="text" name="phone" placeholder="Phone no." size="10" 
value="<%= rs.getString(8)%>" required>   

 <label for="email"><b>Please Update Your Email:</b></label>  
 <input type="text" placeholder="Enter Email" name="email" 
 value="<%= rs.getString(10)%>" required>  
  
  <label for="psw"><b>Please Update Your Password:</b></label>  
  <input type="password" placeholder="Enter Password" name="psw" 
  value="<%= rs.getString(11)%>" required>  
  
    <label for="psw-repeat"><b>Please Re-type Your Updated Password:</b></label>  
    <input type="password" placeholder="Retype Password" name="psw-repeat" 
    value="<%= rs.getString(12)%>" required> 
    
    <label for="salary"><b>Please Update Your Salary Expectation/Monthly in Thousands:</b></label>  
 	<input type="number" placeholder="Desired Salary" name="salary" 
 	value="<%= rs.getString(16)%>" required>
  
  <div><button type="submit" class="registerbtn">Update-Teacher</button></div>
     
       
  </div>
</form>
<% 						
						}
		
	}
	catch(Exception e){
		System.out.println(e);
	}
%>  
</body>  
   <div style="margin-top: 120px">
    <%@ include file="../footer.jsp"%>
  </div>
</html> 
