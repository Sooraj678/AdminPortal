<!DOCTYPE html>
<html lang="en" dir="ltr">
  <head>
    <meta charset="utf-8">
    <title>AboutUS-Page</title>
   <link rel="stylesheet" href="../css/about.css">
	<link rel="stylesheet" href="css/about.css">
    <meta name="viewport" content="width=device-width, initial-sclae=1.0">

  </head>
  <%@ include file="adminHeader.jsp"%>
  <body>
      <div class="about-section">
        <div class="inner-width">
          <h1>About-US</h1>
          <div class="border"></div>
          <div class="about-section-row">
            <div class="about-section-col">
              <div class="about">
                <p>
                  Learners Academy is a school that has an online management system. The system keeps track of its classes, subjects, students, and teachers. 
                  It has a back-office application with a single administrator login.
                </p>
                <a href="#">Read More</a>
              </div>
            </div>
            <div class="about-section-col">
            <h2 style="background-color: yellow;" >We have Best Classes as per User's Ratings</h2>
              <div class="skills">
                <div class="skill">
                  <div class="title">Mathematics</div>
                  <div class="progress">
                    <div class="progress-bar p1"><span>90%</span></div>
                  </div>
                </div>

                <div class="skill">
                  <div class="title">Computer Science</div>
                  <div class="progress">
                    <div class="progress-bar p2"><span>85%</span></div>
                  </div>
                </div>
                
                <div class="skill">
                  <div class="title">Science</div>
                  <div class="progress">
                    <div class="progress-bar p2"><span>79.30%</span></div>
                  </div>
                </div>
                <div class="skill">
                  <div class="title">English Speaking & As Subject</div>
                  <div class="progress">
                    <div class="progress-bar p2"><span>69%</span></div>
                  </div>
                </div>

                <div class="skill">
                  <div class="title">Civil Subjects</div>
                  <div class="progress">
                    <div class="progress-bar p3"><span>65%</span></div>
                  </div>
                </div>
              </div>
            </div>
          </div>
        </div>
      </div>
  </body>
  <%@ include file="../footer.jsp"%>
</html>