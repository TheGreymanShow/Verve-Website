<?php
$id = $_POST["id"];
$event = $_POST["event"];
$name = $_POST["name"];
$email = $_POST["email"];
$phone = $_POST["phone"];
$college = $_POST["college"];
$amba = $_POST["amba"];
$amount_paid = $_POST["amount"];
$status = $_POST["status"];

require "init.php";

	$query = "insert into temp values('', ' ".$event." ',' ".$name." ',' ".$email." ',' ".$phone." ',' ".$college." ',' ".$amba." ','0','Hold');" ;
	$result = mysqli_query($con,$query);	
	
	if(!$result)
	{
		$response = array();
		$code = "Reg_false";
		$message = "Reg failed : Connection error occured !";
		array_push($response,array("code"=>$code,"message"=>$message));
		echo json_encode(array("server_response"=>$response));
	}
	else{	
		$response = array();
		$code = "Reg_true";
		$message = "Registration Successful !";
		array_push($response,array("code"=>$code,"message"=>$message));
		echo json_encode(array("server_response"=>$response));
	}
	mysqli_close($con);	



?>