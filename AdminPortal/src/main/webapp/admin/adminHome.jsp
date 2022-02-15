<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>AdminHomePage</title>
</head>
<%@ include file="../admin/adminHeader.jsp"%>

<body>
	<%
		String msg = request.getParameter("msg");
		if ("valid".equals(msg)) {
	%>
	<h1 style="color:green;">Successfully Logined: Into Admin Page</h1>
	<%
								}
	%>


<h1 style="color: red;"> Welcome @ Admin to the Admin Portal </h1>
</body>

<%@ include file="../footer.jsp"%>
</html>