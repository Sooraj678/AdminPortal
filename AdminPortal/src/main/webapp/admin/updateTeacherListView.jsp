<%@page import="adminportal.model.DbConnectionProvider"%>
<%@page import="java.sql.*"%>
<%@page import="adminportal.controller.LAAPView"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Update-SubjectsMasterList</title>
<link rel="stylesheet" href="../css/register.css">
<link rel="stylesheet" href="css/register.css">

</head>
<%@ include file="adminHeader.jsp"%>
<body>
	<%
	String idTeacher =request.getParameter("idTeacher");
	try{
			Connection con = DbConnectionProvider.getCon();
			Statement stmt = con.createStatement();
			ResultSet rs = stmt.executeQuery("select *from teachers where idTeacher ='"+idTeacher+"' ");
			 while(rs.next()){
%>

<div class="container">
<form action="<%=LAAPView.UpdateTeacherListCtl%>" method="post">
<input type="hidden" name="idTeacher" value="<% out.println(idTeacher);%>">
 	<div>  
		<label>   
			<b>Qualification of Teacher is: --!!!! </b>
		</label>     
			<select id="qualification" name="qualification">  
				<option value="<%=rs.getString(3)%>"><%=rs.getString(3)%></option>  
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

<label><b>Enter Teacher's Name .........!!</b></label>    
<input type="text" name="teacherName" placeholder="Enter Teacher's Name....!!!"   value="<%=rs.getString(2)%>" required />

<label><b>Enter Teacher's Specialized Subject Name.........!!</b></label>    
<input type="text" name="subjectName" placeholder="Enter Teacher's Specialized Subject Name....!!!" value="<%=rs.getString(4)%>" required />

<button type="submit" class="registerbtn">UpdateTeachers-MasterList</button>
</form>
<% 						
						}
	
	}
	catch(Exception e){
		System.out.println(e);
	}
%>
</div>
<div><center><h1> <b>Show</b> <a href="showMasterListOfTeachers.jsp"> 
<b style="color: blue">Teacher's-MasterList</b> </a> </h1></center> </div>
</body>
<div >
    <%@ include file="../footer.jsp"%>
  </div>

</html>