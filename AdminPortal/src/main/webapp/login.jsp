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
    <center> <h1> Login Form </h1> </center>   
    <form action="<%=LAAPView.LoginCtl %>" method="post">  
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
            <b>Forgot</b> <a href="#"> <b>Password?</b> </a>   
            <b>New User</b>  <a href="register.jsp"><b>Please Register....!!</b></a>
        </div>   
    </form>       
</body> 
<%@ include file="footer.jsp"%>     
</html>  