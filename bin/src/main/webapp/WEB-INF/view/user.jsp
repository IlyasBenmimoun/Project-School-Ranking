<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib uri='http://java.sun.com/jsp/jstl/core' prefix='c'%>
<%
	response.setHeader("cache-control", "no-cache, no-store, must-revalidate");
	response.setHeader("pragma", "no-cache");
	response.setDateHeader("Expires", 0);

	if (session.getAttribute("user") == null) {
%>

<c:redirect url="/" />
<%
	}
%>
<!DOCTYPE html>
<html lang="fr">
<head>
<title>School Ranking</title>
<meta charset="utf-8">
<meta name="viewport"
	content="width=device-width, initial-scale=1, shrink-to-fit=no">

<link href="https://fonts.googleapis.com/css?family=Nunito:300,400,700"
	rel="stylesheet">

<link rel="stylesheet" href="static/fonts/icomoon/style.css">

<link rel="stylesheet" href="static/css/bootstrap.min.css">
<link rel="stylesheet" href="static/css/magnific-popup.css">
<link rel="stylesheet" href="static/css/jquery-ui.css">
<link rel="stylesheet" href="static/css/owl.carousel.min.css">
<link rel="stylesheet" href="static/css/owl.theme.default.min.css">

<link rel="stylesheet" href="static/css/bootstrap-datepicker.css">

<link rel="stylesheet" href="static/fonts/flaticon/font/flaticon.css">

<link rel="stylesheet" href="static/css/aos.css">

<link rel="stylesheet" href="static/css/style.css">

</head>
<body data-spy="scroll" data-target=".site-navbar-target"
	data-offset="300">

	<div class="site-wrap" id="home-section">

		<div class="site-mobile-menu site-navbar-target">
			<div class="site-mobile-menu-header">
				<div class="site-mobile-menu-close mt-3">
					<span class="icon-close2 js-menu-toggle"></span>
				</div>
			</div>
			<div class="site-mobile-menu-body"></div>
		</div>


		<header class="site-navbar js-sticky-header site-navbar-target"
			role="banner">

			<div class="container">
				<div class="row align-items-center position-relative">


					<div class="site-logo">
						<img src="static/images/RS.png" alt="Image" class="img-fluid">
					</div>

					<!-- <div class="col-12"> -->
					<nav class="site-navigation text-center ml-auto" role="navigation">

						<ul
							class="site-menu main-menu js-clone-nav ml-auto d-none d-lg-block">
							<li><a href="#home-section" class="nav-link">Home</a></li>
							<li><a href="/vosinfo" class="nav-link"> Vos Information</a></li>
							<li><a href="#contact-section" class="nav-link">Contactez-nous</a></li>
							<li><a href="logout" class="nav-link">Log Out</a></li>


						</ul>
					</nav>

					<!-- </div> -->

					<div class="toggle-button d-inline-block d-lg-none">
						<a href="#"
							class="site-menu-toggle py-5 js-menu-toggle text-black"><span
							class="icon-menu h3"></span></a>
					</div>

				</div>
			</div>

		</header>

		<div class="site-section-cover overlay inner-page bg-light"
			style="background-image: url('static/images/hero_2.jpg')"
			data-aos="fade">

			<div class="container">
				<div
					class="row align-items-center justify-content-center text-center">
					<div class="col-lg-10">

						<div class="box-shadow-content">
							<div class="block-heading-1">
								<span class="d-block mb-3 text-white" data-aos="fade-up">
									<c:out value="${date}"></c:out><span class="mx-2">&bullet;</span>
									<c:out value="${user.getUsername()}"></c:out>
								</span>
								<h1 class="mb-4" data-aos="fade-up" data-aos-delay="100">Welcome
									to School Ranking</h1>
							</div>


						</div>
					</div>
				</div>
			</div>

		</div>


		<br> <br> <br>


		<c:if test="${not empty Succes}">
			<div class="col-md-5 ml-5">
				<div class="alert alert-success">
					<c:out value="${Succes }"></c:out>
				</div>
			</div>
		</c:if>
		<c:if test="${empty Succes}">
			<div class="col-md-7 ml-auto">
				<form action="/formulaire" method="get">

					<input type="submit" class="btn btn-rounded  py-3 px-5"
						value="PRESS  to  Start"
						style="border-radius: 40px; color: purple">
				</form>
			</div>
		</c:if>




		<section class="site-section">
			<div class="site-section bg-light" id="contact-section">
				<div class="container">
					<div class="row">
						<div class="col-12 text-center mb-5">
							<div class="block-heading-1">
								<span>Get In Touch</span>
								<h2>Contactez-nous</h2>
							</div>
						</div>
					</div>
					<div class="row">
						<div class="col-lg-6 mb-5">
							<form action="#" method="post">
								<div class="form-group row">
									<div class="col-md-6 mb-4 mb-lg-0">
										<input type="text" class="form-control"
											placeholder="First name">
									</div>
									<div class="col-md-6">
										<input type="text" class="form-control"
											placeholder="First name">
									</div>
								</div>

								<div class="form-group row">
									<div class="col-md-12">
										<input type="text" class="form-control"
											placeholder="Email address">
									</div>
								</div>

								<div class="form-group row">
									<div class="col-md-12">
										<textarea name="" id="" class="form-control"
											placeholder="Write your message." cols="30" rows="6"></textarea>
									</div>
								</div>
								<div class="form-group row">
									<div class="col-md-6 ml-auto">
										<input type="submit"
											class="btn btn-block btn-primary text-white py-3 px-5"
											value="Envoyer">
									</div>
								</div>
							</form>
						</div>
						<div class="col-lg-4 ml-auto">
							<h2 class="text-black">
								Pour plus d'information appelez-nous<a href="tel://13923929482">+2126075365</a>
							</h2>
							<p>
								Nous vous invitons à remplir notre formulaire, si vous avez des questions. <a
						href="#">lien des pages ici </a> Trouvez vos réponses à vos questions et bien plus encore sur nos réseaux sociaux.
							</p>
						</div>
					</div>
				</div>
			</div>
		</section>

		<footer style="background-color: #252728; height: 40px;">
			<div>
				<p></p>
			</div>
			@Copyright......
		</footer>

	</div>

	<script src="static/js/jquery-3.3.1.min.js"></script>
	<script src="static/js/jquery-ui.js"></script>
	<script src="static/js/popper.min.js"></script>
	<script src="static/js/bootstrap.min.js"></script>
	<script src="static/js/owl.carousel.min.js"></script>
	<script src="static/js/jquery.magnific-popup.min.js"></script>
	<script src="static/js/jquery.sticky.js"></script>
	<script src="static/js/jquery.waypoints.min.js"></script>
	<script src="static/js/jquery.animateNumber.min.js"></script>
	<script src="static/js/aos.js"></script>

	<script src="static/js/main.js"></script>

</body>
</html>