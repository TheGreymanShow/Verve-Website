<!doctype html>

<html>

<head>
  <title>
    Verve | Registration
  </title>
  <link href="css/bootstrap.min.css" rel="stylesheet">
  <link href="css/animate.min.css" rel="stylesheet"> 
  <link href="css/font-awesome.min.css" rel="stylesheet">
  <link href="css/lightbox.css" rel="stylesheet">
  <link href="css/main.css" rel="stylesheet">
  <link id="css-preset" href="css/presets/preset1.css" rel="stylesheet">
  <link href="css/responsive.css" rel="stylesheet">
  <!--[if lt IE 9]>
    <script src="js/html5shiv.js"></script>
    <script src="js/respond.min.js"></script>
  <![endif]-->
	<style>
	/* The Modal (background) */
	.modal {
		display: none; /* Hidden by default */
		position: fixed; /* Stay in place */
		z-index: 1; /* Sit on top */
		padding-top: 100px; /* Location of the box */
		left: 0;
		top: 0;
		width: 100%; /* Full width */
		height: 100%; /* Full height */
		overflow: auto; /* Enable scroll if needed */
		background-color: rgb(0,0,0); /* Fallback color */
		background-color: rgba(0,0,0,0.4); /* Black w/ opacity */
	}

	/* Modal Content */
	.modal-content {
		position: relative;
		background-color: #333;
		margin: auto;
		padding: 0;
		width: 80%;
		
		-webkit-animation-name: animatetop;
		-webkit-animation-duration: 0.4s;
		animation-name: animatetop;
		animation-duration: 0.4s
	}

	/* Add Animation */
	@-webkit-keyframes animatetop {
		from {top:-300px; opacity:0} 
		to {top:0; opacity:1}
	}

	@keyframes animatetop {
		from {top:-300px; opacity:0}
		to {top:0; opacity:1}
	}

	/* The Close Button */
	.close {
		color: white;
		float: right;
		font-size: 56px;
		font-weight: bold;
		margin-top:20px;
	}

	.close:hover,
	.close:focus {
		color: #000;
		text-decoration: none;
		cursor: pointer;
	}

	.modal-header {
		padding: 2px 16px;
		background-color: #212121;
		color: #ffa000;
		border-bottom-color: inherit;
	}
	
	.modal-body {
		padding: 2px 16px;
	}
	</style>
  <link href='http://fonts.googleapis.com/css?family=Open+Sans:300,400,600,700' rel='stylesheet' type='text/css'>
  <link rel="shortcut icon" href="images/favicon.ico">
  
<head>

<body>
<div class="main-nav">
      <div class="container">
        <div class="navbar-header">
          <button type="button" class="navbar-toggle" data-toggle="collapse" data-target=".navbar-collapse">
            <span class="sr-only">Toggle navigation</span>
            <span class="icon-bar"></span>
            <span class="icon-bar"></span>
            <span class="icon-bar"></span>
          </button>
          <a class="navbar-brand" href="index.html">
            <h1><img class="img-responsive" src="images/logo.png" alt="logo"></h1>
          </a>                    
        </div>
        <div class="collapse navbar-collapse">
          <ul class="nav navbar-nav navbar-right">                 
            <li class="scroll"><a href="index.php">Home</a></li>
            <li class="scroll"><a href="events.php">Events</a></li> 
            <li class="scroll"><a href="#about-us">About Us</a></li>                     
            <li class="scroll"><a href="#portfolio">Showcase</a></li>
            <li class="scroll"><a href="#team">Sponsors</a></li>
            <li class="scroll"><a href="#contact">Contact</a></li>       
          </ul>
        </div>
      </div>
    </div><!--/#main-nav-->
	<?php
	    include 'config.php';
		$eid = $_POST['eventid'];
	    $results = $mysqli->query("SELECT * FROM event WHERE id = $eid");
	    if (!$results) {
			printf("Errormessage: %s\n", $mysqli->error);
			exit;
		}
	    $row = mysqli_fetch_row($results);
	?>
	   
 <section id="contact" class="parallax">
    <div id="contact-us">
      <div class="container">
        <div class="row">
          <div class="text-center col-sm-8 col-sm-offset-2 wow fadeInUp" data-wow-duration="1000ms" data-wow-delay="300ms">
            <h2 style="margin:20px;"><?php echo $row[1];?></h2><!-- Event Name -->
            <p style="margin:20px;"><?php echo $row[2];?></p><!-- Desc -->
          </div>
        </div>
        <div class="contact-form wow fadeIn" data-wow-duration="1000ms" data-wow-delay="600ms">
          <div class="row">
            <div class="col-sm-6">
              <form id="main-contact-form" name="contact-form" method="post" action="register.php">
                <div class="row  wow fadeInUp" data-wow-duration="1000ms" data-wow-delay="300ms">
                  <div class="col-sm-6">
                    <div class="form-group">
                      <input type="text" name="name" class="form-control" placeholder="Name" required="required">
                    </div>
                  </div>
                  <div class="col-sm-6">
                    <div class="form-group">
                      <input type="email" name="email" class="form-control" placeholder="Email Address" required="required">
                    </div>
                  </div>
                </div>
				<div class="form-group">
                  <input type="text" name="phone" class="form-control" placeholder="Phone" required="required">
                </div>
				<div class="form-group">
                  <input type="text" name="college" class="form-control" placeholder="College" required="required">
                </div>
				<div class="form-group">
                  <input type="text" name="amba" class="form-control" placeholder="Ambassador" required="required">
                </div>
				<input type="hidden" name="amount" value="0">
				<input type="hidden" name="status" value="hold">
				<input type="hidden" name="event" value="<?php echo $row[1];?>"> <!-- Name(Hidden) -->
                <div class="form-group">
                  <button type="submit" class="btn-submit">Register</button>
                </div>
              </form>   
            </div>
            <div class="col-sm-6">
              <div class="contact-info wow fadeInUp" data-wow-duration="1000ms" data-wow-delay="300ms">
                <ul class="address">
				  <li>
				  <button id="myBtn" class="btn-submit" style="margin:0px;">Event Information</button>
					<!-- The Modal -->
						<div id="myModal" class="modal">

						<!-- Modal content -->
							<div class="modal-content">
								<div class="modal-header">
									<span class="close">&times;</span>
								<h2 style="color:#ffa000;">Event Information</h2>
								</div>
								<div class="modal-body">
									<p style="color:#ffa000;"><?php echo $row[4];?></p> <!-- Rules -->
									<p style="color:#ffa000;"><?php echo $row[5];?></p> <!-- Prize -->
								</div>
							</div>

						</div>
				  </li>
                </ul>
				<img class='img-responsive' src='<?php echo $row[7];?>' alt=''><!--RegPic-->
              </div>                            
            </div>
          </div>
        </div>
      </div>
    </div>
  </section>
  <footer id="footer">
    <div class="footer-top wow fadeInUp" data-wow-duration="1000ms" data-wow-delay="300ms">
      <div class="container text-center">
        <div class="footer-logo">
          <a href="index.php"><img class="img-responsive" src="images/logo.png" alt=""></a>
        </div>
        <div class="social-icons">
            <ul>
			<li><a class="facebook" href="https://www.facebook.com/VERVETheFest/" target="_blank"><i class="fa fa-facebook"></i></a></li>
			<li><a class="instagram" href="https://www.instagram.com/verve.vit/" target="_blank"><i class="fa fa-instagram"></i></a></li>
            <li><a class="youtube" href="https://www.youtube.com/channel/UCUYdb_OeX9BVRmk03XG9wVQ" target="_blank"><i class="fa fa-youtube"></i></a></li> 
            <!--<li><a class="linkedin" href="#"><i class="fa fa-linkedin"></i></a></li>
            <li><a class="tumblr" href="#"><i class="fa fa-tumblr-square"></i></a></li>-->
          </ul>
		  <p style="color:#ffa000;">&copy; Verve'17.</p>
        </div>
      </div>
    </div>
    <!--<div class="footer-bottom">
      <div class="container">
        <div class="row">
          <div class="col-sm-6">
            <p>&copy; Verve'17.</p>
          </div>
          <!--<div class="col-sm-6">hiddengi
		  
            <p class="pull-right">Designed by <a href="http://www.themeum.com/">Themeum</a></p>
          </div>
        </div>
      </div>
    </div>-->
  </footer>
	<script>
	// Get the modal
	var modal = document.getElementById('myModal');

	// Get the button that opens the modal
	var btn = document.getElementById("myBtn");

	// Get the <span> element that closes the modal
	var span = document.getElementsByClassName("close")[0];

	// When the user clicks the button, open the modal 
	btn.onclick = function() {
    modal.style.display = "block";
	}

	// When the user clicks on <span> (x), close the modal
	span.onclick = function() {
		modal.style.display = "none";
	}

	// When the user clicks anywhere outside of the modal, close it
	window.onclick = function(event) {
		if (event.target == modal) {
			modal.style.display = "none";
		}
	}
	</script>
 </body>

</html>
