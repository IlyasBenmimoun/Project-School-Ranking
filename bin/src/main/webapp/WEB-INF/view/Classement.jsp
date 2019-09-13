<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ taglib uri='http://java.sun.com/jsp/jstl/core' prefix='c'%>
 <%@ page import="java.util.*" %>
<%@page import="com.RS.modal.Classement" %>
    <%List <Classement> classement=(List)session.getAttribute("list"); %>
<!DOCTYPE html>
<html lang="en">
  <head>
  

    <title>School Ranking</title>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">

    <link href="https://fonts.googleapis.com/css?family=Nunito:300,400,700" rel="stylesheet">

    <link rel="stylesheet" href="/static/fonts/icomoon/style.css">
<link rel="stylesheet" href="/static/css/dataTables.bootstrap.min.css">
    <link rel="stylesheet" href="/static/css/bootstrap.min.css">
    <link rel="stylesheet" href="/static/css/magnific-popup.css">
    <link rel="stylesheet" href="/static/css/jquery-ui.css">
    <link rel="stylesheet" href="/static/css/owl.carousel.min.css">
    <link rel="stylesheet" href="/static/css/owl.theme.default.min.css">
   <!--===============================================================================================-->
    <link rel="stylesheet" type="text/css" href="/static/doc/css/font-awesome-4.7.0/css/font-awesome.min.css">
<link rel="stylesheet" href="/static/css/dataTables.bootstrap.min.css">
  <link rel="stylesheet" type="text/css" href="/static/doc/css/iconic/css/material-design-iconic-font.min.css">

  <link rel="stylesheet" type="text/css" href="/static/doc/css/util.css">
  <link rel="stylesheet" type="text/css" href="/static/doc/css/main.css">
<!--===============================================================================================-->
    <link rel="stylesheet" href="/static/css/bootstrap-datepicker.css">

    <link rel="stylesheet" href="/static/fonts/flaticon/font/flaticon.css">

    <link rel="stylesheet" href="/static/css/aos.css">

    <link rel="stylesheet" href="/static/css/style.css">
    
    
    <!--==========================================================================================-->
    
     <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous"> 
    <link href="/static/dist/css/smart_wizard.css" rel="stylesheet" type="text/css" />
    <link href="/static/dist/css/smart_wizard_theme_circles.css" rel="stylesheet" type="text/css" />
    <link href="/static/dist/css/smart_wizard_theme_arrows.css" rel="stylesheet" type="text/css" />
    <link href="/static/dist/css/smart_wizard_theme_dots.css" rel="stylesheet" type="text/css" />
    
     <!--==========================================================================================-->
    
    
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
                  <li><a href="/" class="nav-link">Home</a></li>
                  <li><a href="/#about-section" class="nav-link">A Propos</a></li>
                   <li><a href="#" class="nav-link">Classement</a></li>
                  <li><a href="/#sidentifier-section" class="nav-link">S'identifier</a></li>
                  <li><a href="/#contact-section" class="nav-link">Contactez nous</a></li>
                </ul>
              </nav>
          
                   <div class="container">

         <div id="smartwizard">
             <ul>
                <li><a href="#step-1">2019<br /></a></li>
                <li><a href="#step-2">2018<br /></a></li>
                <li><a href="#step-3">2017<br /></a></li>
                <li><a href="#step-4">2016<br /></a></li>
            </ul>
        </div>

    </div>
        

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
              <h2>Classement des etablissements</h2>
            </div>
          </div>
          </div>
          
 
  <table id="Class" class="table table-striped">
  <thead>
    <tr>
      <th scope="col">#</th>
      <th scope="col">Nom d'etablissement</th>
      <th scope="col">ville</th>
       <th scope="col">Score Total</th>
      <th scope="col">info</th>
    </tr>
  </thead>
  <tbody class="btn-grp">
    <%for(int i=1;i<=classement.size();i++){ %>
    <tr>
      <th scope="row"><%=i %></th>
      <td><%=classement.get(i-1).getNomEtablissement() %></td>
      <td><%=classement.get(i-1).getVille()%></td>
      <td><%=classement.get(i-1).getScoretotal() %></td>
      <td><form method="get" action="/viewmore/<%=classement.get(i-1).getId()%>">
     
      <input type="submit" value="plus d'info" class="btn " style="background-color: #00d0d9 ; color: grey" />
  </form>
  </td>
    </tr>
    <%} %>
   
  </tbody>
  </table>
 
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
  <script src="static/js/jquery.dataTables.min.js"></script>
  <script src="/static/js/owl.carousel.min.js"></script>
  <script src="static/js/dataTables.bootstrap.min.js"></script>
  <script src="/static/js/jquery.magnific-popup.min.js"></script>
  <script src="/static/js/jquery.sticky.js"></script>
  <script src="/static/js/jquery.waypoints.min.js"></script>
  <script src="/static/js/jquery.animateNumber.min.js"></script>
  <script src="/static/js/aos.js"></script>
  <script src="/static/js/main.js"></script>
  <script >
    	$('#Class').dataTable();
    </script> 
   <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.1/jquery.min.js"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/1000hz-bootstrap-validator/0.11.5/validator.min.js"></script>
    <script type="text/javascript" src="/static/dist/js/jquery.smartWizard.min.js"></script>

    <script type="text/javascript">
        $(document).ready(function(){

            // Toolbar extra buttons
            var btnFinish = $('<button></button>').text('Finish')
                                             .addClass('btn btn-info')
                                             .on('click', function(){
                                                    if( !$(this).hasClass('disabled')){
                                                        var elmForm = $("#myForm");
                                                        if(elmForm){
                                                            elmForm.validator('validate');
                                                            var elmErr = elmForm.find('.has-error');
                                                            if(elmErr && elmErr.length > 0){
                                                                alert('Oops we still have error in the form');
                                                                return false;
                                                            }else{
                                                                alert('Great! we are ready to submit form');
                                                                elmForm.submit();
                                                                return false;
                                                            }
                                                        }
                                                    }
                                                });
            var btnCancel = $('<button></button>').text('Cancel')
                                             .addClass('btn btn-danger')
                                             .on('click', function(){
                                                    $('#smartwizard').smartWizard("reset");
                                                    $('#myForm').find("input, textarea").val("");
                                                });



            // Smart Wizard
            $('#smartwizard').smartWizard({
                    selected: 0,
                    theme: 'dots',
                    transitionEffect:'fade',
                    toolbarSettings: {toolbarPosition: 'bottom',
                                      toolbarExtraButtons: [btnFinish, btnCancel]
                                    },
                    anchorSettings: {
                                markDoneStep: true, // add done css
                                markAllPreviousStepsAsDone: true, // When a step selected by url hash, all previous steps are marked done
                                removeDoneStepOnNavigateBack: true, // While navigate back done step after active step will be cleared
                                enableAnchorOnDoneStep: true // Enable/Disable the done steps navigation
                            }
                 });

            $("#smartwizard").on("leaveStep", function(e, anchorObject, stepNumber, stepDirection) {
                var elmForm = $("#form-step-" + stepNumber);
                // stepDirection === 'forward' :- this condition allows to do the form validation
                // only on forward navigation, that makes easy navigation on backwards still do the validation when going next
                if(stepDirection === 'forward' && elmForm){
                    elmForm.validator('validate');
                    var elmErr = elmForm.children('.has-error');
                    if(elmErr && elmErr.length > 0){
                        // Form validation failed
                        return false;
                    }
                }
                return true;
            });

            $("#smartwizard").on("showStep", function(e, anchorObject, stepNumber, stepDirection) {
                // Enable finish button only on last step
                if(stepNumber == 3){
                    $('.btn-finish').removeClass('disabled');
                }else{
                    $('.btn-finish').addClass('disabled');
                }
            });

        });
    </script>
  
  
  
  
  
  
  
</body>
</html>