<!DOCTYPE html>   
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
    <form action="" method="get">  
        <div class="container">   
            <label>Username : </label>   
            <input type="text" placeholder="Enter Username" name="username" required>  
            <label>Password : </label>   
            <input type="password" placeholder="Enter Password" name="password" required>
            
            <label for="loginRole">Select Your Role to Login</label> 
            <select id="loginRole" name="loginRole">
				<option value="select">Please Select Your Role For Login</option>
				<option value="student">Student</option>
				<option value="teacher">Teacher</option>
				<option value="admin">Admin</option>
			</select>
			
			<button type="submit">Login</button>     
            Forgot <a href="#"> password? </a>   
            New User <a href="register.jsp"> Please Register....!! </a>
        </div>   
    </form>       
</body> 
<%@ include file="footer.jsp"%>     
</html>  