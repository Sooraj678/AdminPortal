<!DOCTYPE html>   
<%@page import="adminportal.controller.LAAPView"%>
<html>  
<%@ include file="header.jsp"%> 
<head>  
<meta name="viewport" content="width=device-width, initial-scale=1">  
<title>ForgotPassword-ViewPage </title>
<link rel="stylesheet" href="../css/Login.css">
<link rel="stylesheet" href="css/login.css">  
</head>    
<body>

	<%
	String msg = request.getParameter("msg");
	System.out.println("Coming Response Parameter is:"+msg);
		if ("updated".equals(msg)) {
	%>
	<h1 style="color:blue;">Password got Updated Successfully...! For LOGIN... Please visit Login Page Again........!</h1>

	<%
									}
	%>
	
	<%   
	if ("notUpdated".equals(msg)) {
	%>
	<h1 style="color:red;">Some thing Went Wrong! User Does Not Exist..! Please register first..</h1>

	<%
									}
	%>     

    <center> <h1> Password Update Form: </h1> </center>   
    <form action="<%=LAAPView.ForgotPasswordCtl %>" method="post">  
        <div class="container">   
            <label><b>Enter Your Registered Email:</b></label> <br>  
            <input type="text" placeholder="Your E-Mail as Username" name="username" required> 
            <label><b>Enter Your Registered Mobile Number:</b></label> <br>  
            <input type="text" placeholder="Enter Your Phone Number...!!" name="phoneNo" required> 
            
            <label><b>Select Your question for Password Update:</b> </label>
            <br>
    <select name="securityQuestions" required>
			<option value="What is your first car?">What is your first car?</option>
			<option value="What is the name of your first pet?">What is the name of your first pet?</option>
			<option value="What elementary school did you attend?">What elementary school did you attend?</option>
			<option value="What is the name of the town where you were born?">What is the name of the town where you were born?</option>
	</select><br>
	
	<label>   
			<b>Enter Your Answer for Security Questions:</b>  
	</label>
	
	<input type="text" name="answer" placeholder="Enter Your Answer" required>
             
            <label for="loginRole"><b>Select Your Login Role:</b></label><br> 
            <select id="loginRole" name="loginRole">  
				<option value="role">Login-AS --------------------------------------------------------!!!</option>
					<option value="Teacher">Teacher</option>
					<option value="Student">Student</option>
					<option value="Admin">Admin</option>
			</select> <br>
	<label> <b>Please SET Your New Password: </b></label>   
            <input type="password" placeholder="Enter New Password....!!!" name="newPassword" required>		
			<button type="submit">Update-YourPassword</button>     
           
           <center> <h2> <b>GoTo...!!</b> <a href="login.jsp"> <b>Login Page.....!!!                     
           </b> </a></h2> </center>   
           
           <center> <h2> <b>New Student</b>  <a href="register.jsp"><b>Please Register Here....!!        
           </b></a></h2> </center> 
           
           <center> <h2> <b>New Teacher</b>  <a href="teacherRegister.jsp"><b>Please Register Here....!! 
           </b></a></h2> </center> 
        </div>   
    </form>       
</body> 
<%@ include file="footer.jsp"%>     
</html>  