<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Teacher-HomePage</title>
</head>
<%@ include file="teacherHeader.jsp"%>
<body>
<%
		String msg = request.getParameter("msg");
		if ("valid".equals(msg)) {
	%>
	<h1 style="color:green;">Successfully Logined: into Teacher Portal Page</h1>
	<%
								}
	%>
<h1 style="color: red;"> Welcome @ Respected Teacher to the Teacher Portal </h1>
</body>
<%@ include file="footer.jsp"%>
</html>