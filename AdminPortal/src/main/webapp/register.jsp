<!DOCTYPE html>  
<%@page import="adminportal.controller.LAAPView"%>
<html>  
<head>  
<meta name="viewport" content="width=device-width, initial-scale=1">  
<title>Student-RegistrationPage</title>
<link rel="stylesheet" href="../css/register.css">
<link rel="stylesheet" href="css/register.css">
</head>  
<%@ include file="header.jsp"%> 
<body>
	<%
		String msg = request.getParameter("msg");
		if ("valid".equals(msg)) {
	%>
	<h1 style="color:green;">Successfully Registered</h1>
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

	<form action=" <%=LAAPView.StudentRegistrationCtl%> " method="post">  
  <div class="container">  
  <center>  <h1> Student Registeration Form</h1> </center>  
  <hr> 
<label>   
Please Select Your Role:  
</label>   
  
<select id="loginRole" name="loginRole">  
<option value="role">Register as: </option>
<option value="Student">Student</option>
</select> <br>
  <label> Firstname </label>   
<input type="text" name="firstname" placeholder= "Firstname" size="15" required />   
<label> Middlename: </label>   
<input type="text" name="middlename" placeholder="Middlename" size="15" required />   
<label> Lastname: </label>    
<input type="text" name="lastname" placeholder="Lastname" size="15"required />   
<div>  
<label>   
Course :  
</label>   
  
<select id="course" name="course">  
<option value="Course">Course</option>  
<option value="BCA">BCA</option>  
<option value="BBA">BBA</option>  
<option value="B.Tech">B.Tech</option>  
<option value="MBA">MBA</option>  
<option value="MCA">MCA</option>  
<option value="M.Tech">M.Tech</option>  
</select>  
</div>  
<div>  
<label>   
Gender :  
</label><br>  
<input type="radio" value="Male" name="gender" checked > Male   
<input type="radio" value="Female" name="gender"> Female   
<input type="radio" value="Other" name="gender"> Other  
  
</div>  
<label>   
Phone :  
</label>  
<input type="text" name="country code" placeholder="Country Code"  value="+91" size="2"/>   
<input type="text" name="phone" placeholder="phone no." size="10/" required>   
Current Address :  
<textarea cols="80" rows="5" name ="address" placeholder="Current Address"  required>  
</textarea>  
 <label for="email"><b>Email</b></label>  
 <input type="text" placeholder="Enter Email" name="email" required>  
  
    <label for="psw"><b>Password</b></label>  
    <input type="password" placeholder="Enter Password" name="psw" required>  
  
    <label for="psw-repeat"><b>Re-type Password</b></label>  
    <input type="password" placeholder="Retype Password" name="psw-repeat" required> 

<label>   
<b>Select Your question for Password Reset :<b>  
</label><br>
    
    <select name="securityQuestions" required>
			<option value="What is your first car?">What is your first car?</option>
			<option value="What is the name of your first pet?">What is the name of your first pet?</option>
			<option value="What elementary school did you attend?">What elementary school did you attend?</option>
			<option value="What is the name of the town where you were born?">What is the name of the town where you were born?</option>
	</select>
	
	<input type="text" name="answer" placeholder="Enter Your Answer" required>
     
    <button type="submit" class="registerbtn">Register</button>    
</form>  
</body>  
   <div style="margin-top: 120px">
    <%@ include file="footer.jsp"%>
  </div>
</html> 
