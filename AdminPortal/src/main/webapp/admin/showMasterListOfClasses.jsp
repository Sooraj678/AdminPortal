<%@page import="adminportal.controller.LAAPView"%>
<%@page import="adminportal.model.DbConnectionProvider"%>
<%@page import="java.sql.*"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>ClassPage-MasterList</title>
<link rel="stylesheet" href="../css/viewRegisteredDataCSS.css">
<link rel="stylesheet" href="css/viewRegisteredDataCSS.css">
</head>
<%@ include file="../admin/adminHeader.jsp"%>
<body>
<%
		String msg = request.getParameter("msg");
		if ("deleteOpDone".equals(msg)) {
%>
	<h1 style="color:green;">Delete Operation is done for Classes-MasterList: </h1>
	<%
								}
	%>
	
	<%
	if ("wrong".equals(msg)) {
	%>
	<h1 style="color:red;">Some Problem Occurrs: Please try again...!!!! </h1>
	<%
								}
	%>
<%
		if ("updateDone".equals(msg)) {
%>
	<h1 style="color:green;">Update Operation is done for Class-MasterList: </h1>
	<%
								}
	%>
	
	<%
	if ("updateWrong".equals(msg)) {
	%>
	<h1 style="color:red;">Some Problem Occurrs during Updation: Please try again...!!!! </h1>
	<%
								}
	%>
<table id="allRegisteredData">
		<tr>
			<th scope="col">idClass</th>
			<th scope="col">ClassName</th>
			<th scope="col">SubjectForClass</th>
			<th scope="col">updateAction</th>
			<th scope="col">deleteAction</th>
		</tr>
		<%
       		try{
       			
       			Connection con = DbConnectionProvider.getCon();
       			Statement stmt = con.createStatement();
       			ResultSet rs = stmt.executeQuery("select *from classes");
       			 while(rs.next()){
       				 
       %>
		
		<tr>
			<td><%=rs.getString(1)%></td>
			<td><%=rs.getString(2)%></td>
			<td><%=rs.getString(3)%></td>
			<td><a href="updateClassListView.jsp?idClass=<%=rs.getString(1)%>">updateClassList</a></td>
			<td><a href="<%=LAAPView.DeleteClassCtl %>?idClass=<%=rs.getString(1)%>">deleteClassList</a></td>			
		</tr>
		<% 					}
       			
       			 }catch(Exception e){
       				System.out.println(e); 
       			 }  			 
	 %>
	
</table>
<div style="margin-top: 300px"><center><h3> <b>GoTo Add Page For..!!!</b> <a href="MasterListForClassesView.jsp"> 
<b>Classes-MasterListWithSubjects</b> </a> </h3></center> </div>
</body>
<div style="margin-top: 120px">
    <%@ include file="../footer.jsp"%>
  </div>
</html>