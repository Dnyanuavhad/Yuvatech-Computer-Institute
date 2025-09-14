<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>profile</title>
    <style>
        nav {
    font-family: 'Poppins',Cambria ;
    position: fixed;
}
nav a{
text-decoration: none;
}

nav a:hover {
border-bottom: 2px solid black;
padding:5px ;
transition: color 0.3s ease, border-bottom 0.3s ease;
}
.navbar-nav {
margin-left: 225px;
font-size: 20px;
}
nav ul {
list-style: none;
display: flex;
gap: 10px;
padding: 0;
margin: 0 auto;
}
body {
            font-family: Arial, sans-serif;
            background:rgb(195, 87, 14);
            display: flex;
            justify-content: center;
            align-items: center;
            height: 100vh;
            margin: 0;
        }
        .profile-container {
            background-color: white;
            padding: 40px;
            border-radius: 15px;
            box-shadow: 0 8px 16px rgba(0,0,0,0.2);
            text-align: center;
        }
        h1 {
            color: #333;
        }
        p {
            color: #666;
        }
        .logout-btn {
            margin-top: 20px;
            padding: 10px 20px;
            background: #ff5e62;
            border: none;
            color: white;
            border-radius: 5px;
            cursor: pointer;
        }
        .logout-btn:hover {
            background: #e84c50;
        }

    </style>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.5/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-SgOJa3DmI69IUzQ2PVdRZhwQ+dy64/BUtbMJw1MZ8t5HZApcHrRKUc4W0kG879m7" crossorigin="anonymous">
    <link href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css" rel="stylesheet">
  </head>
<body>
  <div>
  <nav class="navbar fixed-top navbar-expand-lg navbar-light bg-light bg-light shadow-xl">
              <img src="./logo.png" alt="Home" style="height: 50px;">
    <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
      <span class="navbar-toggler-icon"></span>
    </button>
    <nav class="collapse navbar-collapse" id="navbarSupportedContent">
      <ul class="navbar-nav mr-auto">
        <li class="nav-item active">
          <a class="nav-link" href="yuvatech.jsp">Home <span class="sr-only">(current)</span></a>
        </li>
        <li class="nav-item active">
          <a class="nav-link" href="#about">About</a>
        </li>
        <li class="nav-item dropdown">
          <a class="nav-link dropdown-toggle" href="#" id="navbarDropdown" role="button" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">Courses</a>
          <div class="dropdown-menu" aria-labelledby="navbarDropdown">
            <a class="dropdown-item" href="./DataAnalysis.jsp">Data Analysis</a>
            <a class="dropdown-item" href="./MeanStack.jsp">MEAN Stack</a>
            <a class="dropdown-item" href="./MernStack.jsp">MERN Stack</a>
            <a class="dropdown-item" href="./JavaFullStack.jsp">Java Full Stack</a>
            <a class="dropdown-item" href="#">MYSQL</a>
            <a class="dropdown-item" href="#">Python</a>
            <div class="dropdown-divider"></div>
            <a class="dropdown-item" href="#">Something else here</a>
          </div>
        </li>
        <li class="nav-item active">
          <a class="nav-link" href="#">Teacher</a>
        </li>
        <li  class="nav-item active">
          <a class="nav-link" href="#">Review</a>
        </li>
        <li  class="nav-item active">
          <a class="nav-link" href="#">Achivements</a>
        </li>
        <li  class="nav-item active">
          <a class="nav-link" href="#">Contact</a>
        </li>
          <li  class="nav-item dropdown">
          <a class="nav-link" href="./getdata.jsp" >Show Enquiry</a>
          </li>
          <li  class="nav-item dropdown">
            <a class="nav-link" href="./login.jsp" >Login</a>
            </li>
        </ul>
    </div>
  </nav>
  </nav>
  <br>
  <br>
  <div class="profile-container">
    <h1>Welcome to Your Profile</h1>
    <p>You are successfully logged in.</p>
    <form action="login.jsp" method="get">
        <input class="logout-btn" type="submit" value="Logout">
    </form>
</div>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.5/dist/js/bootstrap.bundle.min.js"></script>
  <script src="https://code.jquery.com/jquery-3.5.1.slim.min.js"></script>
  <script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.5.3/dist/umd/popper.min.js"></script>
  <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>

  </body>
  </html>
