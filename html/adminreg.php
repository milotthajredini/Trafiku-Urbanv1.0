<?php 
	session_start();

	// variable declaration
	$username = "";
	$email    = "";
	$errors = array(); 
	$_SESSION['success'] = "";

	// connect to database
	$db = mysqli_connect('127.0.0.1', 'root', '', 'trafikuurban');

	// REGISTER USER
	if (isset($_POST['admin_reg'])) {
		// receive all input values from the form
		$username = mysqli_real_escape_string($db, $_POST['adminuser']);
		
		$password_1 = mysqli_real_escape_string($db, $_POST['adminpass']);
		

		// form validation: ensure that the form is correctly filled
		if (empty($username)) { array_push($errors, "Username is required"); }
	
		if (empty($password_1)) { array_push($errors, "Password is required"); }

		

		// register user if there are no errors in the form
		if (count($errors) == 0) {
			
			$query = "INSERT INTO adminusers (adminuser,adminpass) 
					  VALUES('$username', '$password_1')";
			mysqli_query($db, $query);

			$_SESSION['username'] = $username;
			$_SESSION['success'] = "You are now logged in";
			header('Location:admin.php');
			
		}

	}

	// ... 

	// LOGIN USER
	

?>