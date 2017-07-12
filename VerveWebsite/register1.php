<?php
	ob_start();
	include 'dbconnect.php';
	
	
	
	$error = false;

	if ( isset($_POST['btn-signup']) ) {
		
		// clean user inputs to prevent sql injections
		$name = trim($_POST['name']);
		$name = strip_tags($name);
		$name = htmlspecialchars($name);
		
		$email = trim($_POST['email']);
		$email = strip_tags($email);
		$email = htmlspecialchars($email);
		
		
		
		// basic name validation
		if (empty($name)) {
			$error = true;
			$nameError = "Please enter your full name.";
		} else if (strlen($name) < 3) {
			$error = true;
			$nameError = "Name must have atleat 3 characters.";
		} else if (!preg_match("/^[a-zA-Z ]+$/",$name)) {
			$error = true;
			$nameError = "Name must contain alphabets and space.";
		}
		
		//basic email validation
		if ( !filter_var($email,FILTER_VALIDATE_EMAIL) ) {
			$error = true;
			$emailError = "Please enter valid email address.";
		} else {
			// check email exist or not
			$query = "SELECT Email FROM temp WHERE Email='$email'";
			$result = mysqli_query($conn,$query);
			$count = mysqli_num_rows($result);
			if($count!=0){
				$error = true;
				$emailError = "Provided Email is already in use.";
			}
		}
		// password validation
		if (empty($pass)){
			$error = true;
			$passError = "Please enter password.";
		} else if(strlen($pass) < 6) {
			$error = true;
			$passError = "Password must have atleast 6 characters.";
		}
		
		// password encrypt using SHA256();
		
		
		// if there's no error, continue to signup
		if( !$error ) {
			
			$query = "INSERT INTO temp VALUES('$name','$email')";
			$res = mysqli_query($conn,$query);
				
			if ($res) {
				$errTyp = "success";
				$errMSG = "Successfully registered, you may login now. Redirecting...";
				unset($name);
				unset($email);
				unset($pass);
				header("refresh:3;url=index.php");
			} else {
				$errTyp = "danger";
				$errMSG = "Something went wrong, try again later...";	
			}	
				
		}
		
		
	}
?>
    <!DOCTYPE html>
    <html>

    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
        <title>Register | E-Shopper</title>
        <link rel="stylesheet" href="assets/css/bootstrap.min.css" type="text/css" />
        <link rel="stylesheet" href="style.css" type="text/css" />
    </head>

    <body>
            <header id="header">
                <!--header-->
                <div class="header-middle">
                    <!--header-middle-->
                    <div class="container">
                        <div class="row">
                            <div class="col-sm-4">
                                <div class="logo pull-left">
                                    <a href="index.php"><img src="images/home/logo.png" alt="" /></a>
                                </div>

                            </div>
                            <div class="col-sm-8">
                                <div class="shop-menu pull-right">

                                </div>
                            </div>
                        </div>
                    </div>
                </div>
                <!--/header-middle-->
            </header>
            <!--/header-->
            <div class="container">

                <div id="login-form">
                    <form method="post" action="<?php echo htmlspecialchars($_SERVER['PHP_SELF']); ?>" autocomplete="off">

                        <div class="col-md-12">

                            <div class="form-group">
                                <h2 class="">Sign Up.</h2>
                            </div>

                            <div class="form-group">
                                <hr />
                            </div>

                            <?php
			if ( isset($errMSG) ) {
				
				?>
                                <div class="form-group">
                                    <div class="alert alert-<?php echo ($errTyp==" success ") ? "success " : $errTyp; ?>">
                                        <span class="glyphicon glyphicon-info-sign"></span>
                                        <?php echo $errMSG; ?>
                                    </div>
                                </div>
                                <?php
			}
			?>

                                    <div class="form-group">
                                        <div class="input-group">
                                            <span class="input-group-addon"><span class="glyphicon glyphicon-user"></span></span>
                                            <input type="text" name="name" class="form-control" placeholder="Enter Name" maxlength="50" value="<?php echo $name ?>" />
                                        </div>
                                        <span class="text-danger"><?php echo $nameError; ?></span>
                                    </div>

                                    <div class="form-group">
                                        <div class="input-group">
                                            <span class="input-group-addon"><span class="glyphicon glyphicon-envelope"></span></span>
                                            <input type="email" name="email" class="form-control" placeholder="Enter Your Email" maxlength="40" value="<?php echo $email ?>" />
                                        </div>
                                        <span class="text-danger"><?php echo $emailError; ?></span>
                                    </div>

                                    <div class="form-group">
                                        <hr />
                                    </div>

                                    <div class="form-group">
                                        <button type="submit" class="btn btn-block btn-primary" id="rbutton" name="btn-signup">Sign Up</button>
                                    </div>

                                    <div class="form-group">
                                        <hr />
                                    </div>


                        </div>

                    </form>
                </div>

            </div>

        </body>

    </html>
    <?php ob_end_flush(); ?>