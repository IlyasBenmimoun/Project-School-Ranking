<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ taglib uri='http://java.sun.com/jsp/jstl/core' prefix='c'%>
 <%@ page import="java.util.*" %>
<%@page import="com.RS.modal.Classement" %>
    <%List <Classement> classement=(List)request.getAttribute("viewMore"); %>
<!DOCTYPE html>
<html lang="en">
  <head>
    <title>School Ranking</title>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">

    <link href="https://fonts.googleapis.com/css?family=Nunito:300,400,700" rel="stylesheet">

    <link rel="stylesheet" href="/static/fonts/icomoon/style.css">

    <link rel="stylesheet" href="/static/css/bootstrap.min.css">
    <link rel="stylesheet" href="/static/css/magnific-popup.css">
    <link rel="stylesheet" href="/static/css/jquery-ui.css">
    <link rel="stylesheet" href="/static/css/owl.carousel.min.css">
    <link rel="stylesheet" href="/static/css/owl.theme.default.min.css">
   <!--===============================================================================================-->
    <link rel="stylesheet" type="text/css" href="/static/doc/css/font-awesome-4.7.0/css/font-awesome.min.css">

  <link rel="stylesheet" type="text/css" href="/static/doc/css/iconic/css/material-design-iconic-font.min.css">

  <link rel="stylesheet" type="text/css" href="/static/doc/css/util.css">
  <link rel="stylesheet" type="text/css" href="/static/doc/css/main.css">
<!--===============================================================================================-->
    <link rel="stylesheet" href="/static/css/bootstrap-datepicker.css">

    <link rel="stylesheet" href="/static/fonts/flaticon/font/flaticon.css">

    <link rel="stylesheet" href="/static/css/aos.css">

    <link rel="stylesheet" href="/static/css/style.css">
    
  </head>
 <body data-spy="scroll" data-target=".site-navbar-target" data-offset="300">
  
  <div class="site-wrap"  id="home-section">

    <div class="site-mobile-menu site-navbar-target">
      <div class="site-mobile-menu-header">
        <div class="site-mobile-menu-close mt-3">
          <span class="icon-close2 js-menu-toggle"></span>
        </div>
      </div>
      <div class="site-mobile-menu-body"></div>
    </div>
   
      
    <header class="site-navbar js-sticky-header site-navbar-target" role="banner">

      <div class="container">
        <div class="row align-items-center position-relative">
          
            
            <div class="site-logo">
                <img src="/static/images/RS.png" alt="Image" class="img-fluid">
            </div>
            
              <nav class="site-navigation text-center ml-auto" role="navigation">

                <ul class="site-menu main-menu js-clone-nav ml-auto d-none d-lg-block">
                 <li><a href="/admin" class="nav-link">Acceuil</a></li>
                 <li><a href="/admin" class="nav-link">Classement</a></li>
                <li><a href="/admin" class="nav-link">Ajouter un établissement</a></li>
                <li><a href="/logout" class="nav-link">Log Out</a></li>
                </ul>
              </nav>
          
            

          <div class="toggle-button d-inline-block d-lg-none"><a href="#" class="site-menu-toggle py-5 js-menu-toggle text-black"><span class="icon-menu h3"></span></a></div>

        </div>
      </div>
      
    </header>
    
    <div class="owl-carousel slide-one-item">
     
        
          
          
          
        
      </div>
    </div>

    <div class="site-section bg-light" id="classement-section">
      <div class="container">
        <div class="row mb-5">
          <div class="col-12">
            <div class="block-heading-1">
              <h2>Plus d'information sur <%=classement.get(0).getNomEtablissement() %></h2>
            </div>
          </div>
          </div>
        
        
  <%if( classement!=null) {%>
<h3> Nom etablissement : <%=classement.get(0).getNomEtablissement() %></h3>

<h3> Ville : <%=classement.get(0).getVille() %></h3>
<h3> score total : <%=classement.get(0).getScoretotal() %></h3>
<h3> score vie etudiante : <%=classement.get(0).getVieEtudiante() %></h3>
<h3> score formation : <%=classement.get(0).getFormation() %></h3>
<h3> score recherche : <%=classement.get(0).getRecherche()%></h3>
<h3> score ressource humain et materiels  : <%=classement.get(0).getRhm()%></h3>
<h3> A propos de l'école" : <%=classement.get(0).getDescription() %></h3>

<%}
else {%>
<h1>pas de description</h1><%} %>
  
 
 </div>
      </div>
   </div>    
  <div class="site-section block-13 overlay bg-image" id="sidentifier-section" style="background-image: url('/static/doc/images/bg-02.jpg');">
      <div class="container">
        <div class="row">
          <div class="col-lg-4 mb-5 mb-lg-0">
            <div class="block-heading-1">
            
            </div>
          </div>
        
  <script src="/static/js/jquery-ui.js"></script>
  <script src="/static/js/popper.min.js"></script>
  <script src="/static/js/bootstrap.min.js"></script>
  <script src="/static/js/owl.carousel.min.js"></script>
  <script src="/static/js/jquery.magnific-popup.min.js"></script>
  <script src="/static/js/jquery.sticky.js"></script>
  <script src="/static/js/jquery.waypoints.min.js"></script>
  <script src="/static/js/jquery.animateNumber.min.js"></script>
  <script src="/static/js/aos.js"></script>

  <script src="/static/js/main.js"></script>
</body>
</html>