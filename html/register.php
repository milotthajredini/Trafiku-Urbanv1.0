<?php include('functions.php') ?>

<html>
<head>
	<title>Sign Up</title>
	<link rel="stylesheet" type="text/css" href="../css/registerv1.css">
	<link rel="stylesheet" type="text/css" href="../css/mediav1.css">
</head>
<body>
	<div class="header">
		
	</div>
	<div class="loginform">
	<form id="singup" method="post" action="register.php">
			
	<h3 id="h3">Sign Up</h3>
		<?php echo display_error(); ?>

			<input type="text" id="username" name="username" placeholder="Username" value="<?php echo $username; ?>">
		
			<input type="email" id="email" name="email" placeholder="example@mail.com" value="<?php echo $email; ?>">
			
			<input type="password" id="password" placeholder="Password" name="password_1">
		
			<input type="password" id="confpass" placeholder="Confirm Password" name="password_2">
		
			<button type="submit" class="btn" id="buttonlogin" name="register_btn">Register</button>
		
		<p>
			Already a member? <a href="login.php">Sign in</a>
		</p>
	</form>
</div>
</body>
</html>