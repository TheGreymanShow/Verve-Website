<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <meta name="description" content="">
  <meta name="author" content="">
  <title>VERVE'17 | Events</title>
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
  
  <link href='http://fonts.googleapis.com/css?family=Open+Sans:300,400,600,700' rel='stylesheet' type='text/css'>
  <link rel="shortcut icon" href="images/favicon.ico">
</head><!--/head-->

<body>

  <!--.preloader-->
  <div class="preloader"> <i class="fa fa-circle-o-notch fa-spin"></i></div>
  <!--/.preloader-->
    <div class="main-nav">
      <div class="container">
        <div class="navbar-header">
          <button type="button" class="navbar-toggle" data-toggle="collapse" data-target=".navbar-collapse">
            <span class="sr-only">Toggle navigation</span>
            <span class="icon-bar"></span>
            <span class="icon-bar"></span>
            <span class="icon-bar"></span>
          </button>
          <a class="navbar-brand" href="index.php">
            <h1><img class="img-responsive" style="height:45px; margin-top:5px;" src="images/logo.png" alt="logo"></h1>
          </a>                    
        </div>
        <div class="collapse navbar-collapse">
          <ul class="nav navbar-nav navbar-right">                 
            <li class="scroll"><a href="index.php">Home</a></li>
            <li class="scroll"><a href="#tech-events">Technical Events</a></li>                     
            <li class="scroll"><a href="#performing-arts">Performing Arts</a></li>			
            <li class="scroll"><a href="#literary-arts">Literary Arts</a></li>
            <li class="scroll"><a href="#fine-arts">Fine Arts</a></li>
            <li class="scroll"><a href="#sports">Sports</a></li>
            <li class="scroll"><a href="#photography">Photography</a></li>       
          </ul>
        </div>
      </div>
    </div><!--/#main-nav-->
  </header><!--/#home-->
  <div id="tech-events"></div>
	   <section id="portfolio" class="">
    <div class="container">
      <div class="row">
        <div class="heading text-center col-sm-8 col-sm-offset-2 wow fadeInUp" data-wow-duration="1000ms" data-wow-delay="100ms">
          <h2 style="color:#ffa000;">Technical Events</h2>
        </div>
      </div> 
    </div>
    <div class="container-fluid">
      <div class="row">
	  <?php
	   include 'config.php';
	   $results1 = $mysqli->query("SELECT * FROM event WHERE ecategory = 'te'");
	   if($results1){ 
	    //fetch results set as object and output HTML
		while($obj = $results1->fetch_object())
		{
		echo"
        <div class='col-sm-3'>
          <div class='folio-item wow fadeInRightBig' data-wow-duration='1000ms' data-wow-delay='100ms'>
            <div class='folio-image'>
              <img class='img-responsive' src='{$obj->eimage}' alt=''>
            </div>
            <div class='overlay'>
              <div class='overlay-content'>
                <div class='overlay-text'>
                  <div class='folio-info'>
                    <h3>{$obj->ename}<br><br><br></h3>
                  </div>
                  <div class='folio-overview'>
					<form method='post' action='registration.php'>
					<input type='hidden' name='eventid' value='{$obj->id}'>
					<button type='submit' class='btn-submit'>Register</button>
					</form>
                  </div>
                </div>
              </div>
            </div>
          </div>
        </div>";
		}
	   }?>
	   </div>
    </div>
    <!-- /#portfolio-single-wrap -->
  </section><!--/#portfolio-->
  <div id="performing-arts"></div>
	   <section id="portfolio" class="">
    <div class="container">
      <div class="row">
        <div class="heading text-center col-sm-8 col-sm-offset-2 wow fadeInUp" data-wow-duration="1000ms" data-wow-delay="100ms">
          <h2 style="color:#ffa000;">Performing Arts</h2>
        </div>
      </div> 
    </div>
    <div class="container-fluid">
      <div class="row">
	  <?php
	   include 'config.php';
	   $results1 = $mysqli->query("SELECT * FROM event WHERE ecategory = 'pa'");
	   if($results1){ 
	    //fetch results set as object and output HTML
		while($obj = $results1->fetch_object())
		{
		echo"
        <div class='col-sm-3'>
          <div class='folio-item wow fadeInRightBig' data-wow-duration='1000ms' data-wow-delay='100ms'>
            <div class='folio-image'>
              <img class='img-responsive' src='{$obj->eimage}' alt=''>
            </div>
            <div class='overlay'>
              <div class='overlay-content'>
                <div class='overlay-text'>
                  <div class='folio-info'>
                    <h3>{$obj->ename}<br><br><br></h3>
                  </div>
                  <div class='folio-overview'>
					<form method='post' action='registration.php'>
					<input type='hidden' name='eventid' value='{$obj->id}'>
					<button type='submit' class='btn-submit'>Register</button>
					</form>
                  </div>
                </div>
              </div>
            </div>
          </div>
        </div>";
		}
	   }
		?>
      </div>
    </div>
    <!-- /#portfolio-single-wrap -->
  </section><!--/#portfolio-->
  <div id="literary-arts"></div>
	   <section id="portfolio" class="">
    <div class="container">
      <div class="row">
        <div class="heading text-center col-sm-8 col-sm-offset-2 wow fadeInUp" data-wow-duration="1000ms" data-wow-delay="100ms">
          <h2 style="color:#ffa000;">Literary Arts</h2>
        </div>
      </div> 
    </div>
    <div class="container-fluid">
      <div class="row">
	  <?php
	   include 'config.php';
	   $results1 = $mysqli->query("SELECT * FROM event WHERE ecategory = 'la'");
	   if($results1){ 
	    //fetch results set as object and output HTML
		while($obj = $results1->fetch_object())
		{
		echo"
        <div class='col-sm-3'>
          <div class='folio-item wow fadeInRightBig' data-wow-duration='1000ms' data-wow-delay='100ms'>
            <div class='folio-image'>
              <img class='img-responsive' src='{$obj->eimage}' alt=''>
            </div>
            <div class='overlay'>
              <div class='overlay-content'>
                <div class='overlay-text'>
                  <div class='folio-info'>
                    <h3>{$obj->ename}<br><br><br></h3>
                  </div>
                  <div class='folio-overview'>
					<form method='post' action='registration.php'>
					<input type='hidden' name='eventid' value='{$obj->id}'>
					<button type='submit' class='btn-submit'>Register</button>
					</form>
                  </div>
                </div>
              </div>
            </div>
          </div>
        </div>";
		}
	   }
	   ?>
	   </div>
    </div>
    <!-- /#portfolio-single-wrap -->
  </section>
	<div id="fine-arts"></div>
  <section id="portfolio" class="">
    <div class="container">
      <div class="row">
        <div class="heading text-center col-sm-8 col-sm-offset-2 wow fadeInUp" data-wow-duration="1000ms" data-wow-delay="100ms">
          <h2 style="color:#ffa000;">Fine Arts</h2>
        </div>
      </div> 
    </div>
    <div class="container-fluid">
      <div class="row">
	  <?php
	   include 'config.php';
	   $results1 = $mysqli->query("SELECT * FROM event WHERE ecategory = 'fa'");
	   if($results1){ 
	    //fetch results set as object and output HTML
		while($obj = $results1->fetch_object())
		{
		echo"
        <div class='col-sm-3'>
          <div class='folio-item wow fadeInRightBig' data-wow-duration='1000ms' data-wow-delay='100ms'>
            <div class='folio-image'>
              <img class='img-responsive' src='{$obj->eimage}' alt=''>
            </div>
            <div class='overlay'>
              <div class='overlay-content'>
                <div class='overlay-text'>
                  <div class='folio-info'>
                    <h3>{$obj->ename}<br><br><br></h3>
                  </div>
                  <div class='folio-overview'>
					<form method='post' action='registration.php'>
					<input type='hidden' name='eventid' value='{$obj->id}'>
					<button type='submit' class='btn-submit'>Register</button>
					</form>
                  </div>
                </div>
              </div>
            </div>
          </div>
        </div>";
		}
	   }
	   ?>
	   </div>
    </div>
    <!-- /#portfolio-single-wrap -->
  </section><!--/#portfolio-->
	<div id="sports"></div>
  <section id="portfolio" class="">
    <div class="container">
      <div class="row">
        <div class="heading text-center col-sm-8 col-sm-offset-2 wow fadeInUp" data-wow-duration="1000ms" data-wow-delay="100ms">
          <h2 style="color:#ffa000;">Sports</h2>
        </div>
      </div> 
    </div>
    <div class="container-fluid">
      <div class="row">
	  <?php
	   include 'config.php';
	   $results1 = $mysqli->query("SELECT * FROM event WHERE ecategory = 'sp'");
	   if($results1){ 
	    //fetch results set as object and output HTML
		while($obj = $results1->fetch_object())
		{
		echo"
        <div class='col-sm-3'>
          <div class='folio-item wow fadeInRightBig' data-wow-duration='1000ms' data-wow-delay='100ms'>
            <div class='folio-image'>
              <img class='img-responsive' src='{$obj->eimage}' alt=''>
            </div>
            <div class='overlay'>
              <div class='overlay-content'>
                <div class='overlay-text'>
                  <div class='folio-info'>
                    <h3>{$obj->ename}<br><br><br></h3>
                  </div>
                  <div class='folio-overview'>
					<form method='post' action='registration.php'>
					<input type='hidden' name='eventid' value='{$obj->id}'>
					<button type='submit' class='btn-submit'>Register</button>
					</form>
                  </div>
                </div>
              </div>
            </div>
          </div>
        </div>";
		}
	   }
	   ?>
	   </div>
    </div>
    <!-- /#portfolio-single-wrap -->
  </section><!--/#portfolio-->
  <div id="photography"></div>
  <section id="portfolio" class="">
    <div class="container">
      <div class="row">
        <div class="heading text-center col-sm-8 col-sm-offset-2 wow fadeInUp" data-wow-duration="1000ms" data-wow-delay="100ms">
          <h2 style="color:#ffa000;">Photography</h2>
        </div>
      </div> 
    </div>
    <div class="container-fluid">
      <div class="row">
	  <?php
	   include 'config.php';
	   $results1 = $mysqli->query("SELECT * FROM event WHERE ecategory = 'ph'");
	   if($results1){ 
	    //fetch results set as object and output HTML
		while($obj = $results1->fetch_object())
		{
		echo"
        <div class='col-sm-3'>
          <div class='folio-item wow fadeInRightBig' data-wow-duration='1000ms' data-wow-delay='100ms'>
            <div class='folio-image'>
              <img class='img-responsive' src='{$obj->eimage}' alt=''>
            </div>
            <div class='overlay'>
              <div class='overlay-content'>
                <div class='overlay-text'>
                  <div class='folio-info'>
                    <h3>{$obj->ename}<br><br><br></h3>
                  </div>
                  <div class='folio-overview'>
					<form method='post' action='registration.php'>
					<input type='hidden' name='eventid' value='{$obj->id}'>
					<button type='submit' class='btn-submit'>Register</button>
					</form>
                  </div>
                </div>
              </div>
            </div>
          </div>
        </div>";
		}
	   }
	   ?>
	   </div>
    </div>
    <!-- /#portfolio-single-wrap -->
  </section><!--/#portfolio-->
  
  <footer id="footer">
    <div class="footer-top wow fadeInUp" data-wow-duration="1000ms" data-wow-delay="100ms">
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

  <script type="text/javascript" src="js/jquery.js"></script>
  <script type="text/javascript" src="js/bootstrap.min.js"></script>
  <script type="text/javascript" src="http://maps.google.com/maps/api/js?sensor=true"></script>
  <script type="text/javascript" src="js/jquery.inview.min.js"></script>
  <script type="text/javascript" src="js/wow.min.js"></script>
  <script type="text/javascript" src="js/mousescroll.js"></script>
  <script type="text/javascript" src="js/smoothscroll.js"></script>
  <script type="text/javascript" src="js/jquery.countTo.js"></script>
  <script type="text/javascript" src="js/lightbox.min.js"></script>
  <script type="text/javascript" src="js/main.js"></script>
  <script src="http://ajax.googleapis.com/ajax/libs/jquery/1.11.1/jquery.min.js"></script>
</body>
</html>