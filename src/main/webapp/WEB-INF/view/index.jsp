<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib uri='http://java.sun.com/jsp/jstl/core' prefix='c'%>
<%@ page import="java.util.*"%>
<%@page import="com.RS.modal.Classement"%>
<%List<Classement> classement=null;
classement = (List) request.getAttribute("list");
%>

<c:if test="${not empty user}">
	<script>
		document.getElementById('scrol').scrollIntoView()
	</script>
</c:if>
<!DOCTYPE html>
<html lang="fr">
<head>
<title>School Ranking</title>
<meta charset="UTF-8">
<meta charset="ISO-8859-1">

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

				<nav class="site-navigation text-center ml-auto" role="navigation">

					<ul
						class="site-menu main-menu js-clone-nav ml-auto d-none d-lg-block">
						<li><a href="#home-section" class="nav-link">Acceuil</a></li>
						<li><a href="#about-section" class="nav-link">A Propos</a></li>
						<li><a href="#classement-section" class="nav-link">Classement</a></li>
						<c:if test="${ empty utilisateur}">
							<c:if test="${ empty admin}">
								<li><a href="#sidentifier-section" class="nav-link">S'identifier</a></li>
							</c:if>
						</c:if>
						<li><a href="#contact-section" class="nav-link">Contactez
								nous</a></li>
					</ul>
				</nav>



				<div class="toggle-button d-inline-block d-lg-none">
					<a href="#" class="site-menu-toggle py-5 js-menu-toggle text-black"><span
						class="icon-menu h3"></span></a>
				</div>

			</div>
		</div>

	</header>

	<div class="owl-carousel slide-one-item">




		<div class="site-section-cover overlay img-bg-section"
			style="background-image: url('static/images/back.jpg');">
			<div class="container">
				<div class="row align-items-center justify-content-center">
					<div class="col-md-12 col-lg-7 text-center">
						<h1>Rank your school today for a better defenition</h1>
						<br />
						<p>
							<a href="#contact-section"
								class="btn btn-white-outline border-w-2 btn-md">Get in touch</a>
						</p>
					</div>
				</div>
			</div>

		</div>

		<div class="site-section-cover overlay img-bg-section"
			style="background-image: url('static/images/hero_2.jpg');">
			<div class="container">
				<div class="row align-items-center justify-content-center">
					<div class="col-md-12 col-lg-7 text-center">
						<h1>Rank your school today for a better defenition</h1>
						<br />
						<p>
							<a href="#contact-section"
								class="btn btn-white-outline border-w-2 btn-md">Get in touch</a>
						</p>
					</div>
				</div>
			</div>

		</div>


	</div>






	<div class="site-section" id="about-section">
		<div class="container">
			<div class="row mb-5">
				<div class="col-lg-6 mb-4">
					<img src="static/images/back2.jpg" alt="Image" class="img-fluid">

				</div>
				<div class="col-lg-5 ml-auto">
					<h2 class="text-primary mb-4">A propos</h2>
					<p>Face à  la rareté des informations sur les écoles, le classement de ces derniers devient une tache trés difficile.</p> 
					<p> D'ici vient l'idée de créer la  plateforme " School Ranking"  dans le but est de rassembler le plus grand nombre d'informations et de réaliser une base de données des différents établissements et d'amortir le fameux dilemme « classement des écoles ».</p>
					<p> Ces établissements seront classer suivant 4 catégorie de critéres :
					</p>
					<p>
						<a href="/apro">Read More</a>
					</p>
				</div>
			</div>





		</div>
	</div>

	<div class="site-section bg-light" id="classement-section">
		<div class="container">
			<div class="row mb-5">
				<div class="col-12">
					<div class="block-heading-1">
						<h2>Classement des établissements</h2>
					</div>
				</div>
			</div>
			<table class="table table-striped">
				<thead>
					<tr>
						<th scope="col">#</th>
						<th scope="col">Nom d'établissement</th>
						<th scope="col">Ville</th>
						<th scope="col">Score</th>
						<th scope="col">Info</th>
					</tr>
				</thead>
				<%if (classement != null) { %>
				<tbody class="btn-grp">
					<%
						
							for (int i = 1; i <= classement.size(); i++) {
								 if(i==4) break;
					%>
					<tr>
						<th scope="row"><%=i%></th>
						<td><%=classement.get(i - 1).getNomEtablissement()%></td>
						<td><%=classement.get(i - 1).getVille()%></td>
						<td><%=classement.get(i - 1).getScoretotal()%></td>
						<td><form method="get"
								action="/viewmore/<%=classement.get(i - 1).getId()%>">

								<input type="submit" value="plus d'info" class="btn "
									style="background-color: #00d0d9; color: grey" />
							</form></td>
					</tr>
					<%
						}
					%>

				</tbody>
			</table>
			<p>
				<a href="/getAllClass" style="position: relative;">View More</a>
			</p>
			<%
				}
			%>
		</div>
	</div>






	<div class="site-section block-13 overlay bg-image"
		id="sidentifier-section"
		style="background-image: url('static/doc/images/grad.jpg');">
		<div class="container">
			<div class="row">
				<div class="col-lg-4 mb-5 mb-lg-0">
					<div class="block-heading-1"></div>
				</div>
				<c:if test="${ empty utilisateur}">
					<c:if test="${ empty admin}">

						<div class="limiter">
							<div class="container-login100">
								<div class="wrap-login100 p-l-55 p-r-55 p-t-65 p-b-54">
									<form action="/Login" method="post"
										class="login100-form validate-form">

										<c:if test="${not empty error}">
											<div class="alert alert-danger">
												<c:out value="${error }"></c:out>
											</div>
										</c:if>

										<span class="login100-form-title p-b-49"> <img
											src="static/doc/images/icons/Rs-icon.png"></span> <span
											id="scrol" class="login100-form-title p-b-49"> Accéder à votre compte personnel </span>



										<div class="wrap-input100 validate-input m-b-23"
											data-validate="Username is reauired">

											<span class="label-input100">Nom d'utilisateur</span> <input
												name="username" class="input100" type="text"
												placeholder="votre nom d'utilisateur" value="${user.username }" />
											<span class="focus-input100" data-symbol="&#xf206;"></span>
										</div>


										<div class="wrap-input100 validate-input"
											data-validate="Password is required">
											<span class="label-input100">Mot de passe</span> <input
												class="input100" type="password" name="password"
												value="${user.password }" placeholder="votre mot de passe" />
											<span class="focus-input100" data-symbol="&#xf190;"></span>
										</div>

										<div class="text-right p-t-8 p-b-31">
											<a href="#"> mot de passe oublié? </a>
										</div>

										<div class="container-login100-form-btn">
											<div class="wrap-login100-form-btn">
												<div class="login100-form-bgbtn"></div>
												<button class="login100-form-btn">Login</button>
											</div>
										</div>


									</form>
								</div>
							</div>
						</div>
					</c:if>
				</c:if>
			</div>
		</div>
	</div>


</div>

</div>
</div>




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
							<input type="text" class="form-control" placeholder="Nom">
						</div>
						<div class="col-md-6">
							<input type="text" class="form-control" placeholder="PrÃ©nom">
						</div>
					</div>

					<div class="form-group row">
						<div class="col-md-12">
							<input type="text" class="form-control"
								placeholder="Email">
						</div>
					</div>

					<div class="form-group row">
						<div class="col-md-12">
							<textarea name="" id="" class="form-control"
								placeholder="votre message..." cols="30" rows="10"></textarea>
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
					Pour plus d'information appelez-nous<a href="tel://13923929482">+212607536520</a>
				</h2>
				<p>
					Nous vous invitons Ã  remplir notre formulaire, si vous avez des questions. <a
						href="#">lien des pages ici </a> Trouvez vos rÃ©ponses Ã  vos questions et bien plus encore sur nos rÃ©seaux sociaux.
				</p>
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
		elmnt.scrollIntoView(false); 
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

<script src="static/js/main.js"></script>

</body>
</html>