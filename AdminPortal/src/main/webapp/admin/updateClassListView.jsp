<%@page import="adminportal.model.DbConnectionProvider"%>
<%@page import="java.sql.*"%>
<%@page import="adminportal.controller.LAAPView"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Update-ClassesMasterList</title>
<link rel="stylesheet" href="../css/register.css">
<link rel="stylesheet" href="css/register.css">

</head>
<%@ include file="adminHeader.jsp"%>
<body>
	<%
	String idClass =request.getParameter("idClass");
	try{
			Connection con = DbConnectionProvider.getCon();
			Statement stmt = con.createStatement();
			ResultSet rs = stmt.executeQuery("select *from classes where idClass ='"+idClass+"' ");
			 while(rs.next()){
%>

<div class="container">
<form action="<%=LAAPView.UpdateClassListCtl %>" method="post">

<input type="hidden" name="idClass" value="<% out.println(idClass);%>">
 	<div>  
		<label>   
			<b>Available Classes are: --!!!! </b>
		</label>     
			<select id="class" name="class">  
				<option value="<%=rs.getString(2)%>"><%=rs.getString(2)%></option>  
				<option value="BCA">BCA</option>  
				<option value="BBA">BBA</option>  
				<option value="B.Tech">B.Tech</option>  
				<option value="MBA">MBA</option>  
				<option value="MCA">MCA</option>  
				<option value="M.Tech">M.Tech</option>  
			</select>  
	</div>
	<label><b>Please Update Subject's Name for selected Class: to create Master List of Classes ----!!</b></label>    
<input type="text" name="subjectName" placeholder="Enter Subject's Name....!!!"  value="<%=rs.getString(3)%>" required />

<button type="submit" class="registerbtn">UpdateClass-MasterList</button>


</form>
<% 						
						}
	
	}
	catch(Exception e){
		System.out.println(e);
	}
%>
</div>
<div><center><h1> <b>Show</b> <a href="showMasterListOfClasses.jsp"> 
<b>Classes-MasterList-withSubjects</b> </a> </h1></center> </div>
</body>
<div style="margin-top: 120px">
    <%@ include file="../footer.jsp"%>
  </div>

</html>