<?php include('functions.php') ?>

<html>
<head>
	<title>Login</title>
	<link rel="stylesheet" type="text/css" href="../css/login.css">
	<link rel="stylesheet" type="text/css" href="../css/mediav1.css">
</head>
<body>

	<div class="header">
		
	</div>
	<div class="loginform">
	<form method="post" action="login.php">
			
		<h3 id="h3">Login</h3>
		<div class="error">
		<?php echo display_error(); ?>
</div>
			<input type="text" id="username" name="username" placeholder="Username">
		
			<input type="password"  id="password" placeholder="Password" name="password">
		
		<div class="input-group">
			<button type="submit" id="buttonlogin" class="btn" name="login_btn">Login</button>
		
		<p>
			Not yet a member? <a href="register.php">Sign up</a>
		</p>
	</form>
</div>

</body>
</html>