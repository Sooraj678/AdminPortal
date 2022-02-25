<!DOCTYPE html>
<html lang="en">
<head>
  <title>AdminDashBoard-Page</title>
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>
  <style>
    /* Set height of the grid so .sidenav can be 100% (adjust as needed) */
    .row.content {height: 550px}
    
    /* Set gray background color and 100% height */
    .sidenav {
      background-color: #f1f1f1;
      height: 100%;
    }
        
    /* On small screens, set height to 'auto' for the grid */
    @media screen and (max-width: 767px) {
      .row.content {height: auto;} 
    }
  </style>
  <style>
h1{
background-color: #3377ff;
color:#ffffff;
border-radius: 25px;
font-family: "Comic Sans MS", "Comic Sans", cursive;
}
</style>  
</head>
<%@ include file="adminHeader.jsp"%>
<body>
<h1 style="padding: 100px;">Welcome Admin to the AdminDashBoard Portal...!!!</h1>

<div class="container-fluid">
  <div class="row content">
    <div class="col-sm-3 sidenav hidden-xs">
      <ul class="nav nav-pills nav-stacked">
        <li class="active"><a href="adminHome.jsp">Admin-DashBoard</a></li>
        <li><a href="adminAboutUS.jsp">AboutUS</a></li>
      </ul><br>
    </div>
    <br>
    
    <div class="col-sm-9">
      <div class="well">
        <h4>AdminDashboard</h4>
        <p>Learners Academy is a school that has an online management system. The system keeps track of its classes, subjects, students, and teachers. 
        It has a back-office application with a single administrator login.</p>
      </div>
      <div class="row">
        <div class="col-sm-8">
          <div class="well">
            <h4>TotalUsers [RegisteredTeacher+Students]</h4>
            <p><a href="viewTotalUsers.jsp">View-TotalUsers</a></p> 
          </div>
        </div>

        <div class="col-sm-4">
          <div class="well">
            <h4>Scheduled-Sessions</h4>
           <p><a href="viewMasterListStudent.jsp">View-ScheduledSessions</a></p> 
          </div>
        </div>
        <div class="col-sm-4">
          <div class="well">
            <h4>Total-Teachers</h4>
            <p><a href="viewTotalRegisteredTeacher.jsp">View-TotalTeacher</a></p> 
          </div>
        </div>
        <div class="col-sm-4">
          <div class="well">
            <h4>Total-Students</h4>
            <p><a href="viewTotalRegisteredStudents.jsp">View-TotalStudents</a></p>
          </div>
        </div>
         <div class="col-sm-4">
          <div class="well">
            <h4>Available-SubjectsList</h4>
             <p><a href="viewAvailableSubjectsList.jsp">View-AvailableSubjectsList</a></p> 
          </div>
        </div>
      </div>

    </div>
  </div>
</div>

</body>
<%@ include file="../footer.jsp"%>
</html>
