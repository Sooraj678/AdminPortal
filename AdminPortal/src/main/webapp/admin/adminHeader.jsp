<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<link rel="stylesheet"
	href="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/css/bootstrap.min.css"
	integrity="sha384-Vkoo8x4CGsO3+Hhxv8T/Q5PaXtkKtu6ug5TOeNV6gBiFeWPGFN9MuhOf23Q9Ifjh"
	crossorigin="anonymous">

<script src="https://code.jquery.com/jquery-3.4.1.slim.min.js"
	integrity="sha384-J6qa4849blE2+poT4WnyKhv5vZF5SrPo0iEjwBvKU7imGFAV0wwj1yYfoRSJoZ+n"
	crossorigin="anonymous"></script>

<script
	src="https://cdn.jsdelivr.net/npm/popper.js@1.16.0/dist/umd/popper.min.js"
	integrity="sha384-Q6E9RHvbIyZFJoft+2mJbHaEWldlvI9IOYy5n3zV9zzTtmI3UksdQRVvoxMfooAo"
	crossorigin="anonymous"></script>

<script
	src="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/js/bootstrap.min.js"
	integrity="sha384-wfSDF2E50Y2D1uUdj0O3uMBJnjuUD4Ih7YwaYd1iqfktj0Uod8GCExl3Og8ifwB6"
	crossorigin="anonymous"></script>

<!-- Linking Style Sheet here because in every page we are adding header.jsp -->
<link rel="stylesheet" href="../css/style.css">
<link rel="stylesheet" href="css/style.css">

</head>
<body>
	<nav class="navbar navbar-expand-lg navbar-light bg-secondary">
		<a class="navbar-brand" href="learnersAcademy-Admin.jsp">Learners-Academy</a>
		<button class="navbar-toggler" type="button" data-toggle="collapse"
			data-target="#navbarNav" aria-controls="navbarNav"
			aria-expanded="false" aria-label="Toggle navigation">
			<span class="navbar-toggler-icon"></span>
		</button>
		<div class="collapse navbar-collapse" id="navbarNav">
			<ul class="navbar-nav">
				
				<li class="nav-item active"><a class="nav-link"
					href="adminHome.jsp">Home-Page<span class="sr-only">(current)</span>
				</a></li>
				
				<li class="nav-item"><a class="nav-link"
					href="adminDashboardView.jsp">ViewAdminDashboard-ClassReport</a></li>
				
				<li class="nav-item"><a class="nav-link"
					href="viewRegisteredData.jsp">GetRegistered-Data</a></li>
				
				<li class="nav-item"><a class="nav-link"
					href="MaterListForSubjectsView.jsp">SetUpSubjects-ForClasses</a></li>
					
				<li class="nav-item"><a class="nav-link"
					href="MasterListForTeachersView.jsp">SetUp-TeachersList</a></li>
					
				<li class="nav-item"><a class="nav-link"
					href="MasterListForClassesView.jsp">SetUp-ClassesList</a></li>
					
				<li class="nav-item"><a class="nav-link"
					href="assignClassesAndTeacherView.jsp">AssignAction-ForClasses</a></li>
				
				<li class="nav-item"><a class="nav-link"
					href="viewAssignedClasses.jsp">View-AssignedClasses</a></li>
					
				<li class="nav-item"><a class="nav-link"
					href="viewMasterListStudent.jsp">View-MasterListStudent</a></li>
					
				<li class="nav-item"><a class="nav-link"
					href="../logout.jsp">Logout</a></li>

			</ul>
			
		</div>
	</nav>
</body>
</html>