<!DOCTYPE html>   
<%@page import="adminportal.controller.LAAPView"%>
<html>  
<%@ include file="header.jsp"%> 
<head>  
<meta name="viewport" content="width=device-width, initial-scale=1">  
<title> LoginPage </title>  
<link rel="stylesheet" href="../css/Login.css">
<link rel="stylesheet" href="css/login.css">  
</head>    
<body>

	<%
	String msg = request.getParameter("msg");
	System.out.println("Coming Response Parameter is:"+msg);
		if ("invalid".equals(msg)) {
	%>
	<h1 style="color:red;">Some thing Went Wrong! Please Try Again to LOGIN !</h1>

	<%
									}
	%>
	
	<%   
	if ("notExist".equals(msg)) {
	%>
	<h1 style="color:red;">Some thing Went Wrong! User Does Not Exist..! Please register first..</h1>

	<%
									}
	%>     

    <center> <h1> Login Form </h1> </center>   
    <form action="<%=LAAPView.LoginCtl%>" method="post">  
        <div class="container">   
            <label><b>Username : </b></label> <br>  
            <input type="text" placeholder="Your E-Mail as Username" name="username" required>  
            <br><label> <b>Password : </b></label>   
            <input type="password" placeholder="Enter Password" name="password" required>
            
            <label for="loginRole"><b>Select Your Login Role:</b></label><br> 
            <select id="loginRole" name="loginRole">  
				<option value="role">Login-AS --------------------------------------------------------!!!</option>
					<option value="Teacher">Teacher</option>
					<option value="Student">Student</option>
					<option value="Admin">Admin</option>
			</select> <br>
			
			<button type="submit">Login</button>     
            <h1><b>Forgot</b> <a href="forgotPassword.jsp"> <b>Password?</b> </a></h1>   
            <center><b>New Student</b>  <a href="register.jsp"><b>Please Register Here....!!</b></a> </center> 
           <center><b>New Teacher</b>  <a href="teacherRegister.jsp"><b>Please Register Here....!!</b></a> </center> 
        </div>   
    </form>       
</body> 
<%@ include file="footer.jsp"%>     
</html>  