<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>

<% 
 
if (session.getAttribute("name") == null) {
    // If null, redirect to the login page
    response.sendRedirect("login.jsp");}
else {
%>


<!DOCTYPE html>
<html lang="en">
<head>
<style>
    /* Container for all cards */
    .flip-card-container {
        display: flex;
        justify-content: space-around; /* Distribute space evenly around cards */
        flex-wrap: wrap; /* Wrap cards to the next line if they don't fit */
        margin: 20px auto; /* Center the container */
        max-width: 1200px; /* Maximum width for the container */
    }

    /* Flip Card Container */
    .flip-card {
        background-color: transparent;
        width: 300px;
        height: 300px;
        perspective: 1000px; /* Remove this if you don't want the 3D effect */
        margin: 20px; /* Margin between cards */
    }

    /* Inner Container */
    .flip-card-inner {
        position: relative;
        width: 100%;
        height: 100%;
        text-align: center;
        transition: transform 0.6s;
        transform-style: preserve-3d;
        box-shadow: 0 4px 8px 0 rgba(0,0,0,0.2);
        border-radius: 10px; /* Rounded corners */
    }

    /* Flip on hover */
    .flip-card:hover .flip-card-inner {
        transform: rotateY(180deg);
    }

    /* Front of the card */
    .flip-card-front, .flip-card-back {
        position: absolute;
        width: 100%;
        height: 100%;
        backface-visibility: hidden;
        border-radius: 10px;
    }

    .flip-card-front {
        background-color: #bbb;
        color: black;
        display: flex;
        align-items: center;
        justify-content: center;
    }

    .flip-card-front img {
        border-radius: 10px;
    }

    /* Back of the card */
    .flip-card-back {
        background-color: #2980b9;
        color: white;
        transform: rotateY(180deg);
        display: flex;
        align-items: center;
        justify-content: center;
        flex-direction: column;
        padding: 20px;
        box-sizing: border-box;
    }

    .flip-card-back h1 {
        margin-bottom: 10px;
        font-size: 24px;
    }

    .flip-card-back p {
        font-size: 18px;
    }
</style>

       
<meta charset="utf-8" />
<meta name="viewport"
	content="width=device-width, initial-scale=1, shrink-to-fit=no" />
<meta name="description" content="" />
<meta name="author" content="" />
<title>Freelancer - Start Bootstrap Theme</title>
<!-- Favicon-->
<link rel="icon" type="image/x-icon" href="assets/favicon.ico" />
<!-- Font Awesome icons (free version)-->
<script src="https://use.fontawesome.com/releases/v5.15.4/js/all.js"
	crossorigin="anonymous"></script>
<!-- Google fonts-->
<link href="https://fonts.googleapis.com/css?family=Montserrat:400,700"
	rel="stylesheet" type="text/css" />
<link
	href="https://fonts.googleapis.com/css?family=Lato:400,700,400italic,700italic"
	rel="stylesheet" type="text/css" />
<!-- Core theme CSS (includes Bootstrap)-->


<link href="css/index-styles.css" rel="stylesheet" />
</head>
<body id="page-top">
	<!-- Navigation-->
	<nav
		class="navbar navbar-expand-lg bg-secondary text-uppercase fixed-top"
		id="mainNav">
		<div class="container">
			<a class="navbar-brand" href="#page-top">Unique Developer</a>
			<button
				class="navbar-toggler text-uppercase font-weight-bold bg-primary text-white rounded"
				type="button" data-bs-toggle="collapse"
				data-bs-target="#navbarResponsive" aria-controls="navbarResponsive"
				aria-expanded="false" aria-label="Toggle navigation">
				Menu <i class="fas fa-bars"></i>
			</button>
			<div class="collapse navbar-collapse" id="navbarResponsive">
				<ul class="navbar-nav ms-auto">
					<li class="nav-item mx-0 mx-lg-1"><a
						class="nav-link py-3 px-0 px-lg-3 rounded" href="#portfolio">Portfolio</a></li>
					<li class="nav-item mx-0 mx-lg-1"><a
						class="nav-link py-3 px-0 px-lg-3 rounded" href="#about">About</a></li>
					<li class="nav-item mx-0 mx-lg-1"><a
						class="nav-link py-3 px-0 px-lg-3 rounded" href="#contact">Contact</a></li>
					<li class="nav-item mx-0 mx-lg-1"><a
						class="nav-link py-3 px-0 px-lg-3 rounded" href="logout">Logout</a></li>
						<li class="nav-item mx-0 mx-lg-1 bg-danger"><a
						class="nav-link py-3 px-0 px-lg-3 rounded" href="#portfolio"><%=session.getAttribute("name")%></a></li>
					
				</ul>
			</div>
		</div>
	</nav>
	  <header class="masthead bg-primary text-white text-center">
        <div class="container d-flex align-items-center flex-column">
            <h1 class="masthead-heading text-uppercase mb-0">Welcome to Smart City</h1>
            <div class="divider-custom divider-light">
                <div class="divider-custom-line"></div>
                <div class="divider-custom-icon"><i class="fas fa-star"></i></div>
                <div class="divider-custom-line"></div>
            </div>
            <p class="masthead-subheading font-weight-light mb-0">Explore the City - Public Services, Infrastructure, Amenities</p>
        </div>
    </header>
    
  <div class="flip-card-container">
  <div class="flip-card">
    <div class="flip-card-inner">
      <div class="flip-card-front">
        <img src="img_avatar.png" alt="Avatar" style="width:300px;height:300px;">
      </div>
      <div class="flip-card-back">
        <h1>John Doe</h1>
        <p>Architect & Engineer</p>
        <p>We love that guy</p>
      </div>
    </div>
  </div>

  <div class="flip-card">
    <div class="flip-card-inner">
      <div class="flip-card-front">
        <img src="img_avatar.png" alt="Avatar" style="width:300px;height:300px;">
      </div>
      <div class="flip-card-back">
        <h1>Jane Doe</h1>
        <p>Graphic Designer</p>
        <p>Creativity unleashed</p>
      </div>
    </div>
  </div>

  <div class="flip-card">
    <div class="flip-card-inner">
      <div class="flip-card-front">
        <img src="img_avatar.png" alt="Avatar" style="width:300px;height:300px;">
      </div>
      <div class="flip-card-back">
        <h1>Mike Smith</h1>
        <p>Software Engineer</p>
        <p>Code is life</p>
      </div>
    </div>
  </div>

  <div class="flip-card">
    <div class="flip-card-inner">
      <div class="flip-card-front">
<a href="durga.jsp">
    <img src="images/signin-image.jpg" alt="sign up image">
</a>     
 </div>
      <div class="flip-card-back">
        <h1>Alice Johnson</h1>
        <p>Product Manager</p>
        <p>Strategy and execution</p>
      </div>
    </div>
  </div>
</div>

    

    <!-- JavaScript for handling service requests -->
    
<button onclick="window.print()">Print this page</button>

   
    </section>
    <!-- Footer-->
    <footer class="footer text-center">
        <div class="container">
            <div class="row">
                <div class="col-lg-4 mb-5 mb-lg-0">
                    <h4 class="text-uppercase mb-4">Location</h4>
                    <p class="lead mb-0">
                        Smart City Office<br>
                        Main Street, Vijayawada, AP
                    </p>
                </div>
                <div class="col-lg-4 mb-5 mb-lg-0">
                    <h4 class="text-uppercase mb-4">Around the Web</h4>
                    <a class="btn btn-outline-light btn-social mx-1" href="#!"><i class="fab fa-fw fa-facebook-f"></i></a>
                    <a class="btn btn-outline-light btn-social mx-1" href="#!"><i class="fab fa-fw fa-twitter"></i></a>
                    <a class="btn btn-outline-light btn-social mx-1" href="#!"><i class="fab fa-fw fa-linkedin-in"></i></a>
                </div>
                <div class="col-lg-4">
                    <h4 class="text-uppercase mb-4">About Smart City</h4>
                    <p class="lead mb-0">A platform to explore and manage all essential city details, including services, infrastructure, and amenities.</p>
                </div>
            </div>
        </div>
    </footer>
	
	
</body>
</html>
<% }%>
