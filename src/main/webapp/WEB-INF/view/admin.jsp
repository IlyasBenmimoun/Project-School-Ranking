<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib uri='http://java.sun.com/jsp/jstl/core' prefix='c'%>
<%@ page import="java.util.*"%>
<%@page import="com.RS.modal.Classement"%>
<%
	response.setHeader("cache-control", "no-cache, no-store, must-revalidate");
	response.setHeader("pragma", "no-cache");
	response.setDateHeader("Expires", 0);

	if (session.getAttribute("admin") == null) {
%>

<c:redirect url="/" />
<%
	}
%>

<%
	List<Classement> classement = (ArrayList) session.getAttribute("list");
%>

<!DOCTYPE html>
<html lang="en">
<head>
<title>Admin session</title>
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
<!--===============================================================================================-->
<link rel="stylesheet" type="text/css"
	href="static/doc/css/font-awesome-4.7.0/css/font-awesome.min.css">
<link rel="stylesheet" href="static/css/dataTables.bootstrap.min.css">
<link rel="stylesheet" type="text/css"
	href="static/doc/css/iconic/css/material-design-iconic-font.min.css">

<link rel="stylesheet" type="text/css" href="static/doc/css/util.css">
<link rel="stylesheet" type="text/css" href="static/doc/css/main.css">
<!--===============================================================================================-->

<link rel="stylesheet" href="static/css/bootstrap-datepicker.css">

<link rel="stylesheet" href="static/fonts/flaticon/font/flaticon.css">

<link rel="stylesheet" href="static/css/aos.css">

<link rel="stylesheet" href="static/css/style.css">

</head>
<c:if test="${empty add}">
	<body data-spy="scroll" data-target=".site-navbar-target"
		data-offset="300">
</c:if>
<c:if test="${not empty add}">
	<body onLoad="scrollToBottoma()" data-spy="scroll"
		data-target=".site-navbar-target" data-offset="300">
</c:if>

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
						<li><a href="#home-section" class="nav-link">Acceuil</a></li>
						<li><a href="#classement-section" class="nav-link">Classement</a></li>
						<li><a href="#investors-section" class="nav-link">Ajouter
								un établissement</a></li>
						<li><a href="/logout" class="nav-link">Log Out</a></li>


					</ul>
				</nav>

				<!-- </div> -->

				<div class="toggle-button d-inline-block d-lg-none">
					<a href="#" class="site-menu-toggle py-5 js-menu-toggle text-black"><span
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
								ADMIN
							</span>
							<h1 class="mb-4" data-aos="fade-up" data-aos-delay="100">Welcome
								to School Ranking</h1>
						</div>


					</div>
				</div>
			</div>
		</div>

	</div>

	<div>
		<br />
		<div class="site-section bg-light" id="classement-section">
			<div class="container">
				<div class="row mb-5">
					<div class="col-12">
						<div class="block-heading-1">

							<h2>Classement</h2>
						</div>
					</div>
				</div>
				<table class="table table-striped" id="Classement">
					<thead>
						<tr>
							<th scope="col">#</th>
							<th scope="col">Nom d'etablissement</th>
							<th scope="col">ville</th>
							<th scope="col">score</th>
							<th scope="col">plus info</th>
						</tr>
					</thead>
					<tbody class="btn-grp">
						<%
							if (classement != null) {
								for (int i = 1; i <= classement.size(); i++) {
						%>
						<tr>
							<th scope="row"><%=i%></th>
							<td><%=classement.get(i - 1).getNomEtablissement()%></td>
							<td><%=classement.get(i - 1).getVille()%></td>
							<td><%=classement.get(i - 1).getScoretotal()%></td>
							<td><form method="get"
									action="/admin_plusInfo/<%=classement.get(i - 1).getId()%>">
									<input type="submit" value="plus d'info" class="btn "
										style="background-color: #00d0d9; color: grey" />
								</form></td>
						</tr>
						<%
							}
							}
						%>

					</tbody>
				</table>

			</div>
		</div>

		<br /> <br />
		<div class="site-section block-13 overlay bg-image"
			id="investors-section"
			style="background-image: url('static/doc/images/grad.jpg');">
			<div class="container">
				<div class="row">
					<div class="col-lg-4 mb-5 mb-lg-0">
						<div class="block-heading-1"></div>
					</div>

					<div class="down limiter ">
						<div class="container-login100">
							<div class="wrap-login100 p-l-55 p-r-55 p-t-65 p-b-54">
								<form id="scrol" action="adduser" method="POST"
									class="login100-form validate-form ">

									<c:if test="${not empty action1}">
										<div class="alert alert-danger">
											<c:out value="${action1 }"></c:out>
										</div>
									</c:if>
									<c:if test="${not empty action2}">
										<div class="alert alert-success">
											<c:out value="${action2 }"></c:out>
										</div>
									</c:if>


									<div class="wrap-input100 validate-input m-b-23"
										data-validate="Username is reauired">
										<span class="label-input100">Nom d'utilisateur</span> <input
											class="input100" type="text" name="username"
											value="${newuser.username }" placeholder="Type the username">
										<span class="focus-input100" data-symbol="&#xf206;"></span>
									</div>

									<div class="wrap-input100 validate-input"
										data-validate="Password is required">
										<span class="label-input100">Mot de passe</span> <input
											class="input100" type="password" name="password"
											value="${newuser.password }" placeholder="Type the password">
										<span class="focus-input100" data-symbol="&#xf190;"></span>
									</div>
									<br />


									<div class="container-login100-form-btn">
										<div class="wrap-login100-form-btn">
											<div class="login100-form-bgbtn"></div>
											<button type="submit" class="login100-form-btn">
												Ajouter</button>
										</div>
									</div>


								</form>
							</div>
						</div>
					</div>


				</div>
			</div>
		</div>








		<footer style="background-color: #252728; height: 40px;">
			<div>
				<p></p>
			</div>
			@Copyright......
		</footer>

	</div>
	<script>
		var elmnt = document.getElementById("scrol");
		function scrollToBottoma() {
			elmnt.scrollIntoView(false); // Bottom
		}
	</script>

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
	<script src="static/js/dataTables.bootstrap.min.js"></script>
	<script src="static/js/jquery.dataTables.min.js"></script>
	<script src="static/js/main.js"></script>
	<script>
		$('#Classement').dataTable();
	</script>
	</body>
</html>