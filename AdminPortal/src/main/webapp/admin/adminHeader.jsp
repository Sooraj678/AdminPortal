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
					href="adminHome.jsp">Home <span class="sr-only">(current)</span>
				</a></li>

				<li class="nav-item"><a class="nav-link"
					href="">MasterList-Subjects</a></li>
					
				<li class="nav-item"><a class="nav-link"
					href="">MasterList-Teachers</a></li>
					
				<li class="nav-item"><a class="nav-link"
					href="">MasterList-Classes</a></li>
					
				<li class="nav-item"><a class="nav-link"
					href="">Assign-Classes</a></li>
					
				<li class="nav-item"><a class="nav-link"
					href="">Assign-Teachers</a></li>
					
				<li class="nav-item"><a class="nav-link"
					href="aboutUS.jsp">MasterList-Students</a></li>
					
				<li class="nav-item"><a class="nav-link"
					href="">ViewReport-Class</a></li>

				<li class="nav-item"><a class="nav-link"
					href="../logout.jsp">Logout</a></li>

			</ul>
			
		</div>
	</nav>
</body>
</html>