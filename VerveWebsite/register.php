<html lang="en">
<head>
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <meta name="description" content="">
  <meta name="author" content="">
  <title>VERVE'17 | Home</title>
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
	 html, body, .container-table {
		height: 100%;
	}
	.container-table {
		display: table;
	}
	.vertical-center-row {
		display: table-cell;
		vertical-align: middle;
	}
  </style>
  <link href='http://fonts.googleapis.com/css?family=Open+Sans:300,400,600,700' rel='stylesheet' type='text/css'>
  <link rel="shortcut icon" href="images/favicon.ico">
</head>

<?php

$event = $_POST["event"];
$name = $_POST["name"];
$email = $_POST["email"];
$phone = $_POST["phone"];
$college = $_POST["college"];
$amba = $_POST["amba"];
$amount_paid = $_POST["amount"];
$status = $_POST["status"];

require "init.php";

$query = "Select * from temp where email like ' ".$email." '; ";
$result = mysqli_query($con,$query);

if(mysqli_num_rows($result)>0){
	echo "
		<body>
		<div class='container container-table'>
			<div class='row vertical-center-row'>
					<div class='text-center col-md-4 col-md-offset-4'><h1 style='color:#ffa000;'>An error occured. User already exists. Please try again!</h1></div>
			</div>
		</div>
		</body>
		";
	header("refresh:3;url=events.php");
}
else{
	/*(Event,Name,Email,Phone,College,Ambassador,Amount Paid,Status)*/
	$query = "insert into temp values('',' ".$event." ',' ".$name." ',' ".$email." ',' ".$phone." ',' ".$college." ',' ".$amba." ','0','Hold');" ;
	$result = mysqli_query($con,$query);	
	/*('Event','Name','Email','Phone','College','Ambassador','Amount Paid','Status')*/
	if(!$result)
	{
		echo "
		<body>
		<div class='container container-table'>
			<div class='row vertical-center-row'>
					<div class='text-center col-md-4 col-md-offset-4'><h1 style='color:#ffa000;'>An error occured. Please try again!</h1></div>
			</div>
		</div>
		</body>
		";
		header("refresh:3;url=events.php");
	}
	else{	
	/* 	$response = array();
		$code = "Reg_true";
		$message = "Registration Successful !";
		array_push($response,array("code"=>$code,"message"=>$message));
		echo json_encode(array("server_response"=>$response)); */
		echo "
		<body>
		<div class='container container-table'>
			<div class='row vertical-center-row'>
					<div class='text-center col-md-4 col-md-offset-4'><h1 style='color:#ffa000;'>Congratulations! You have been registered!</h1></div>
			</div>
		</div>
		</body>
		";
		header("refresh:3;url=index.php");
	}
	mysqli_close($con);	
}


?>