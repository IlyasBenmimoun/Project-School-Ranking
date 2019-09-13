<!DOCTYPE html>
<html lang="en">
<head>
<title>formulaire</title>
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

<link rel="stylesheet" href="static/css/styleF.css">
<!--===============================================================================================-->
<link rel="stylesheet" type="text/css"
	href="static/style2/css/font-awesome-4.7.0/css/font-awesome.min.css">

<link rel="stylesheet" type="text/css"
	href="static/style2/css/iconic/css/material-design-iconic-font.min.css">

<link rel="stylesheet" type="text/css" href="static/style2/css/css2.css">
<link rel="stylesheet" type="text/css" href="static/style2/css/css1.css">
<!--===============================================================================================-->
<script>
	$(document).ready(function() {
		$('[data-toggle="tooltip"]').tooltip();
	});
</script>
</head>
<body data-spy="scroll" data-target=".site-navbar-target"
	data-offset="300">


	<div class="site-section block-13 overlay bg-image"
		id="sidentifier-section"
		style="background-image: url('static/images/backdrop.jpg');">
		<div class="container">
			<div class="row">




				<div class="limiter"
					style="background-color: white; width: 900px; height: 1000px;">

					<form class="login100-form validate-form" method="get"
						action="/VieEstudiantine">
						<div class="login100-form-title p-b-49" style="display: inline">
							<img src="static/images/Rs-icon.png" style="margin-left: 250px;">
							<span
								style="font-size: 20px; color: #333333; line-height: 1.2; text-align: center; display: absolute; font-family: Poppins-Bold; margin-left: 10px">
								Evaluez votre Etablissement </span>
						</div>

						<div class="container">
							<br />
							<div class="panel panel-default">


								<div class="panel-body"
									style="width: 1600px; margin-left: 40px;">

									 <fieldset class="col-md-6">     
          <legend style="color: #333333; line-height: 1.2; font-family: Poppins-SemiBold;">Vie estudiantine</legend>
          
          <div class="panel panel-default">
            <div class="panel-body">
             
                <br/>
             

              <div>
             <label class="label-input100 "data-toggle="tooltip" data-placement="right" title="Hi khawla!">
              Total des Prix gagné dans des compétitions (par année):
             </br>
            <input type="text" name="Prix_gagne"  placeholder="saisir" required>
            </label>
            </div>

            <div>
            <label class="label-input100 " data-toggle="tooltip" data-placement="right" title="Hi khawla!">
             Nombre des clubs dans votre établissement:
            </br>
            <input type="text" name="club" placeholder="saisir" required>
            </label>
            </div>
         
          <label class="label-input100 " data-toggle="tooltip" data-placement="right" title="Hi khawla!">Est ce qu'il y a une association des étudiants(ADE)?</label>
          <div>
           <label>
           <input type="radio" class="option-input radio" name="ADE" value="oui" checked" style="margin-left:20px;" required />
            Oui
           </label>
           <label>
           <input type="radio" class="option-input radio" name="ADE" value="non" required/>
            Non
           </label>
            </div>
            <label class="label-input100 " data-toggle="tooltip" data-placement="right" title="Hi khawla!"> Est ce qu'il y a une  Assistance médicale pour les étudiants?</label>
          <div>
           <label>
           <input type="radio" class="option-input radio" name="etud" value="oui" checked" style="margin-left:20px;" required/>
            Oui
           </label>
           <label>
           <input type="radio" class="option-input radio" name="etud" value="non" name="etud" required/>
            Non
           </label>
            </div>
         <label class="label-input100 " data-toggle="tooltip" data-placement="right" title="Hi khawla!">Est ce qu'il y a une  Assistance médicale pour les handicapées?</label>
           <div>
           <label>
           <input type="radio" class="option-input radio" name="hand" value="oui" checked" style="margin-left:20px;"required />
            Oui
            
           </label>
           <label>
           <input type="radio" class="option-input radio" name="hand" value="non" required  />
            Non
           </label>
            </div>
         <label class="label-input100 " data-toggle="tooltip" data-placement="right" title="Hi khawla!"> Votre établissement contient : </label>
            <div>
  <label>
    <input type="checkbox" name="etab" value="Internat" class="option-input checkbox"  style="margin-left:20px;"/>
    Internat
  </label>
  <label>
    <input type="checkbox" name="etab" value="Buvette" class="option-input checkbox" />
    Buvette
  </label>
  <label>
    <input type="checkbox" name="etab" value="Mosquée" class="option-input checkbox" />
    Mosquée
  </label>
  <label>
    <input type="checkbox" name="eta" value="sport" class="option-input checkbox" />
   Terrain de sport
  </label>
</div>
         <label class="label-input100 " data-toggle="tooltip" data-placement="right" title="Hi khawla!">Est ce qu' il y a une Cérémonie de remise des diplômes ?</label>
           <div>
           <label>
           <input type="radio" class="option-input radio" value="oui" name="ceremonie" checked" style="margin-left:20px;"required />
            Oui
           </label>
           <label>
           <input type="radio" class="option-input radio" value="non" name="ceremonie" required />
            Non
           </label>
            </div>
            <label class="label-input100 " data-toggle="tooltip" data-placement="right" title="Hi khawla!">Est ce qu'il y a un espace dédié a la création des startups ?</label>
           
           <div>
           <label>
           <input type="radio" class="option-input radio" value="oui" name="startup" checked" style="margin-left:20px;"required />
            Oui
           </label>
           <label>
           <input type="radio" class="option-input radio" value="non" name="startup" required/>
            Non
           </label>
            </div>
        
          </form>

          </div>
            </div>
          </div>
          

								<div class="clearfix"></div>
							</div>

							<div>
								<br />

								<nav aria-label="navigation" >
  <ul class="pager">
    <div style="display: inline-flex;">
    <li><a href="retourinfo" title="Précédent" class="btn btn-outline-secondary" style="margin-right:10px ;margin-left:300px">Précédent </a></li>
    
    <input type="submit" title="Suivant" class="btn btn-outline-secondary" value=" Suivant  ">
    
  </div>
  </ul>
</nav>

							</div>
						</div>
				</div>





				</form>

			</div>

		</div>
	</div>
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