<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Yuvatech Computer Institute</title>
    <style> 
    /* style of about section */
        body {
        font-family: 'poppins', cambria;
          margin: 0;
          padding: 0;
      }
      .container {
          padding: 40px;
          /* background-color: #ffffff; */
          width: 80%;
          margin: 50px auto;
          display: flex;
          flex-direction: row;
          gap: 40px;
      }
      .image-section {
          flex: 1;
      }
      .image-section img {
          width: 100%;
          border-radius: 10px;
          margin-bottom: 10px;
          box-shadow: 0 0 15px rgba(0, 0, 0, 0.550);
      }
      .text-section {
          flex: 2;
      }
      .text-section h1 {
          color: #003366;
          margin-left: 250px;
      }
      .text-section h2 {
          color: #003366;
      }
      .text-section p {
          font-size: 20px;
          line-height: 1.8;
          font-weight: bold;
          color: #333333;
          margin-left: 10px;
      }
      .text-section h3 {
          color: #003366;
          margin-top: 30px;
          margin-left: 155px;
      }
/* footer style */
footer {
            background-color: #ffffff;
            color: rgb(0, 0, 0);
            text-align: center;
            padding: 15px;
            width: 100%;
            bottom: 0;
        }
      

  </style>

    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.5/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-SgOJa3DmI69IUzQ2PVdRZhwQ+dy64/BUtbMJw1MZ8t5HZApcHrRKUc4W0kG879m7" crossorigin="anonymous">
    <link href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css" rel="stylesheet">
    <link href="./Style.css" rel="stylesheet">
  </head>
<body>
  <div>
    <!-- navbar -->
  <nav class="navbar fixed-top navbar-expand-lg navbar-light bg-light bg-light shadow-xl" id="fullnavbar">
              <img src="./logo.png" alt="Home" style="height: 50px;">
    <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
      <span class="navbar-toggler-icon"></span>
    </button>
    <nav class="collapse navbar-collapse" id="navbarSupportedContent">
      <ul class="navbar-nav mr-auto">
        <li class="nav-item active">
          <a class="nav-link" href="#">Home <span class="sr-only">(current)</span></a>
        </li>
        <li class="nav-item active">
          <a class="nav-link" href="#about">About</a>
        </li>
        <li class="nav-item active dropdown">
          <a class="nav-link dropdown-toggle" href="#" id="navbarDropdown" role="button" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">Courses</a>
          <div class="dropdown-menu" aria-labelledby="navbarDropdown">
            <a class="dropdown-item" href="#">Ms-Offices</a>
            <a class="dropdown-item" href="#">Tally Prime+GST</a>
            <a class="dropdown-item" href="#">CCC</a>
            <a class="dropdown-item" href="#">Photoshop</a>
            <a class="dropdown-item" href="#">Coral Draw</a>
            <a class="dropdown-item" href="#">Excel + Adv.Excel</a>
            <a class="dropdown-item" href="#">Data Structure</a>
            <a class="dropdown-item" href="#">C,C++</a>
            <a class="dropdown-item" href="#">HTML,CSS</a>
            <a class="dropdown-item" href="#">Java Programming</a>
            <a class="dropdown-item" href="#">Adv.Java</a>
            <a class="dropdown-item" href="#">MySQL</a>
            <a class="dropdown-item" href="#">Autocad 2D+3D</a>
            <a class="dropdown-item" href="#">3DS Max</a>
            <a class="dropdown-item" href="#">Google Scetchup</a>
            <a class="dropdown-item" href="#">Staad Pro</a>
            <a class="dropdown-item" href="#">Catia V5</a>
            <a class="dropdown-item" href="#">Solidwork</a>
            <a class="dropdown-item" href="#">Graphic + Web Design</a>
            <a class="dropdown-item" href="./DataAnalysis.jsp">Data Analysis</a>
            <a class="dropdown-item" href="./MeanStack.jsp">MEAN Stack</a>
            <a class="dropdown-item" href="./MernStack.jsp">MERN Stack</a>
            <a class="dropdown-item" href="./JavaFullStack.jsp">Java Full Stack</a>
            <a class="dropdown-item" href="./mysql.jsp">MYSQL</a>
            <a class="dropdown-item" href="#">Python</a>
            <a class="dropdown-item" href="#">typing</a>
            <div class="dropdown-divider"></div>
            <a class="dropdown-item" href="#">Something else here</a>
          </div>
        </li>
        <li class="nav-item active">
          <a class="nav-link" href="#Teachers">Teacher</a>
        </li>
        <li  class="nav-item active">
          <a class="nav-link" href="#student-reviews">Review</a>
        </li>
        <li  class="nav-item active">
          <a class="nav-link" href="#achievement">Achivements</a>
        </li>
        <li  class="nav-item active">
          <a class="nav-link" href="#Contact">Contact</a>
        </li>
          <li  class="nav-item active">
          <a class="nav-link" href="./Enquiry.jsp" >Enquiry</a>
          </li>
          <li  class="nav-item active">
            <a class="nav-link" href="./login.jsp" >Login</a>
            </li>
        </ul>
    </div>
  </nav>
  </nav>
  <br>
  <br>
  <!-- background-image -->
    <!-- Home -->
    <div class="section-box">
  <div style="background-image: url('./yuvatech\ bg.jpg'); background-size: cover; background-position: center; height: 550px;">
    <div class="hero-section">
      <div class="hero-content">
          <h1>Empower Your Future With YuvaTech Computer Institute</h1>
          <p>
              At YuvaTech Computer Institute, we provide top-notch computer education and skill development
              courses to help you excel in the digital era. Unlock your potential, learn cutting-edge
              technologies, and step confidently into a tech-driven future with YuvaTech.
          </p>
          <button class="hero-button" href="#">EXPLORE MORE COURSES</button>
      </div>
    </div>
    </div>
    </div>
    </body>
    </html>
    </div>
    <br>
<!-- about section -->
<div class="section-box">
    <div class="container" id="about">
      <div class="image-section">
          <img src="./babasir image.jpg" alt="Admin">
      </div>
      <div class="text-section">
        <h1>About Us</h1>
        <br>
          <h2>Embark On Your Journey To Enlightenment With Us.</h2>
          <p>
              "We take great satisfaction in assisting students in realizing their academic potential and achieving their goals.
              Our devoted group of knowledgeable coaches is committed to giving each student individualized attention and assistance
              so they can overcome obstacles and achieve academic success. Our remarkable track record of accomplishment and the trust
              we've won from parents are testaments to our unwavering dedication to student success."
          </p>
          <h3>Mr. Khilari Babasaheb Maruti</h3>
      </div>
      </div>
  </div>
  <br>
<!-- teacher-section -->
<div class="section-box">
  <div id="teacher-section">
    <h2>Our Teachers</h2>
    <div class="teacher-grid" id="Teachers">

        <div class="teacher-card">
            <img src="./babasir image.jpg" alt="Teacher 1">
            <h3>Mr. Babasaheb Khilari</h3>
            <p>Web Development</p>
        </div>

        <div class="teacher-card">
            <img src="./madam (1).jpg" alt="Teacher 2">
            <h3>Ms. khilari</h3>
            <p>Programming Languages</p>
        </div>

        <div class="teacher-card">
            <img src="./pranavsir.jpg" alt="Teacher 3">
            <h3>Mr. pranav</h3>
            <p>Computer Basics</p>
        </div>
        
        <div class="teacher-card">
          <img src="./sanketsir.jpg" alt="Teacher 3">
          <h3>Mr. Sanket</h3>
          <p>Computer Basics</p>
      </div>


    </div>
    </div>
</div>
<br>
<!-- review -->
<div class="section-box">
  <br>
<section id="student-reviews">
  <h2>Reviews</h2>

  <div class="review">
    <img src="./Dnyanu.jpg" alt="John Doe">
    <div class="review-text">
      <h4>Dnyanu Avhad</h4>
      <p>This course really helped me understand the basics of programming. Highly recommended!</p>
    </div>
  </div>

  <div class="review">
    <img src="./profilepic1.jpg" alt="Jane Smith">
    <div class="review-text">
      <h4>Jane Smith</h4>
      <p>The teaching style was clear and engaging. Loved the hands-on projects!</p>
    </div>
  </div>

  <div class="review">
    <img src="./profilepic2.jpg" alt="Ali Khan">
    <div class="review-text">
      <h4>Sadichchha Kale</h4>
      <p>I learned a lot and felt supported throughout. Great experience overall.</p>
    </div>
    </div>
  </div>
  </section>
  <br>
<!-- achievement -->
<div class="section-box">
  <br>
<section id="achievements">
  <h2>Achievements</h2>

  <div class="achievement" id="achievement">
    <img src="images/award1.jpg" alt="Coding Contest Winner">
    <div class="achievement-text">
      <h4>Riya Mehta</h4>
      <p>Won 1st place in the National Coding Hackathon 2024.</p>
    </div>
  </div>

  <div class="achievement">
    <img src="images/award2.jpg" alt="Research Paper">
    <div class="achievement-text">
      <h4>Dev Patel</h4>
      <p>Published a research paper on Artificial Intelligence in IEEE Journal.</p>
    </div>
  </div>

  <div class="achievement">
    <img src="images/award3.jpg" alt="Startup">
    <div class="achievement-text">
      <h4>Fatima Khan</h4>
      <p>Launched an EdTech startup featured in Youth Entrepreneur Magazine.</p>
    </div>
    </div>
  </div>
</section>
<br>
<!-- contact-section -->
<section class="contact-section" id="Contact">
  <h2>Contact Us</h2>
  <form class="contact-form">
    <label for="name">Name</label>
    <input type="text" id="name" placeholder="Your full name" required>

    <label for="email">Email</label>
    <input type="email" id="email" placeholder="you@example.com" required>

    <label for="subject">Subject</label>
    <input type="text" id="subject" placeholder="What's this about?" required>

    <label for="message">Message</label>
    <textarea id="message" rows="5" placeholder="Your message here..." required></textarea>

    <button type="submit">Send Message</button>
  </form>
</section>

<footer>
  <p>&copy; 2025 YuvaTech. All rights reserved.</p>
</footer>
  
  

  <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.5/dist/js/bootstrap.bundle.min.js"></script>
  <script src="https://code.jquery.com/jquery-3.5.1.slim.min.js"></script>
  <script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.5.3/dist/umd/popper.min.js"></script>
  <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>


</body>

</html>