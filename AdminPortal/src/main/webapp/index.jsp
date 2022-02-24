<html>
<head><title>IndexPageLanding</title>
<style>
h1{
background-color: #3377ff;
color:#ffffff;
border-radius: 25px;
font-family: "Comic Sans MS", "Comic Sans", cursive;
}
</style>  
</head>
<%@ include file="header.jsp"%>
<body>

<%
	String msg = request.getParameter("msg");
	if ("valid".equals(msg)) {
%>
	<h1 style="color:white;">We Got Your Query, We will get back to you very soon...! Your Query is Submitted
	Successfully, to us .....!!! </h1>

	<%
							}
	%>
	
<%
	if ("invalid".equals(msg)) {
%>
	<h1 style="color:black;">While Submitting your Query, Got some error, Please try again...!</h1>

	<%
								}
	%>

	<div id="carouselExampleControls" class="carousel slide"
		data-ride="carousel">
		<div class="carousel-inner">
			<div class="carousel-item active">
				<img src="/AdminPortal/image/1.jpg" class="d-block w-100"
					alt="..." height="300px">
			</div>
			<div class="carousel-item">
				<img src="/AdminPortal/image/2.jpg" class="d-block w-100"
					alt="..." height="300px">
			</div>
			<div class="carousel-item">
				<img src="/AdminPortal/image/3.jpg" class="d-block w-100"
					alt="..." height="300px">
			</div>
			<div class="carousel-item">
				<img src="/AdminPortal/image/4.jpg" class="d-block w-100"
					alt="..." height="300px">
			</div>
			<div class="carousel-item">
				<img src="/AdminPortal/image/5.jpg" class="d-block w-100"
					alt="..." height="300px">
			</div>
			<div class="carousel-item">
				<img src="/AdminPortal/image/6.jpg" class="d-block w-100"
					alt="..." height="300px">
			</div>
		</div>
		<a class="carousel-control-prev" href="#carouselExampleControls"
			role="button" data-slide="prev"> <span
			class="carousel-control-prev-icon" aria-hidden="true"></span> <span
			class="sr-only">Previous</span>
		</a> <a class="carousel-control-next" href="#carouselExampleControls"
			role="button" data-slide="next"> <span
			class="carousel-control-next-icon" aria-hidden="true"></span> <span
			class="sr-only">Next</span>
		</a>
	</div>
	<h1 style="padding: 100px;">Welcome @==> Learner's Academy Platform</h1>
</body>
<%@ include file="footer.jsp"%>
</html>
