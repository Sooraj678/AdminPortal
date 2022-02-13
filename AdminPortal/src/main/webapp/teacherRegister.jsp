<!DOCTYPE html>  
<html>  
<head>  
<meta name="viewport" content="width=device-width, initial-scale=1">  
<title>Teacher-RegistrationPage</title>
<link rel="stylesheet" href="../css/register.css">
<link rel="stylesheet" href="css/register.css">
</head>  
<%@ include file="header.jsp"%> 
<body>  
<form>  
  <div class="container">  
  <center>  <h1> Teacher Registeration Form</h1> </center>  
  <hr>
  
<input type="hidden" name="loginRole" placeholder= "Teacher"/>   
  <label> Firstname </label>   
<input type="text" name="firstname" placeholder= "Firstname" size="15" required />   
<label> Middlename: </label>   
<input type="text" name="middlename" placeholder="Middlename" size="15" required />   
<label> Lastname: </label>    
<input type="text" name="lastname" placeholder="Lastname" size="15"required />   
<div>  
<label>   
Please Select Your Qualification:  
</label>   
  
<select>  
<option value="qualification">Qualification</option>  
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
<div>  
<label>   
Please Select Your Gender :  
</label><br>  
<input type="radio" value="Male" name="gender" checked > Male   
<input type="radio" value="Female" name="gender"> Female   
<input type="radio" value="Other" name="gender"> Other  
  
</div>  
<label>   
Please Enter Your Phone Number:  
</label>  
<input type="text" name="country code" placeholder="Country Code"  value="+91" size="2"/>   
<input type="text" name="phone" placeholder="Phone no." size="10"/ required>   
Your Current Address :  
<textarea cols="80" rows="5" placeholder="Current Address" value="address" required>  
</textarea>  
 
 <label for="email"><b>Your Email</b></label>  
 <input type="text" placeholder="Enter Email" name="email" required>  
  
    <label for="psw"><b>Password</b></label>  
    <input type="password" placeholder="Enter Password" name="psw" required>  
  
    <label for="psw-repeat"><b>Re-type Password</b></label>  
    <input type="password" placeholder="Retype Password" name="psw-repeat" required> 
    
     <label for="salary"><b>Salary Expectation/Month in Thousands</b></label>  
 	<input type="number" placeholder="Desired Salary" name="salary" required>
  
 	<br><label>   
	<b>Question for Password Reset: </b> 
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
