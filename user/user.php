<?php 
	include('../html/functions.php');

	if (!isAdmin()) {
		$_SESSION['msg'] = "You must log in first";
		header('location: users.php');
	}

?>

