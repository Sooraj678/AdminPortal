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
	String idSubject =request.getParameter("idSubject");
	try{
			Connection con = DbConnectionProvider.getCon();
			Statement stmt = con.createStatement();
			ResultSet rs = stmt.executeQuery("select *from subjects where idSubject ='"+idSubject+"' ");
			 while(rs.next()){
%>

<div class="container">
<form action="<%=LAAPView.UpdateStudentListCtl %>" method="post">
<input type="hidden" name="idSubject" value="<% out.println(idSubject);%>">
 	<div>  
		<label>   
			<b>Please Select Course: --!!!! </b>
		</label>     
			<select id="course" name="course">  
				<option value="<%=rs.getString(3)%>"><%=rs.getString(3)%></option>  
				<option value="BCA">BCA</option>  
				<option value="BBA">BBA</option>  
				<option value="B.Tech">B.Tech</option>  
				<option value="MBA">MBA</option>  
				<option value="MCA">MCA</option>  
				<option value="M.Tech">M.Tech</option>  
			</select>  
	</div>

<label><b>Enter Subject's Name for selected Course: to create Master List for Subjects ----!! </b></label>    
<input type="text" name="subjectName" placeholder="Enter Subject's Name....!!!" value="<%=rs.getString(2)%>"required />

<button type="submit" class="registerbtn">UpdateSubjects-MasterList</button>
</form>
<% 						
						}
	
	}
	catch(Exception e){
		System.out.println(e);
	}
%>
</div>
<div>
</div>
</body>
<div style="margin-top: 120px">
    <%@ include file="../footer.jsp"%>
  </div>

</html>