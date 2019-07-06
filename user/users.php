<?php 
	include('../html/functions.php');


?>

<html>
<head>
	<title>User-Trafiku Urban</title>
	<link rel="stylesheet" type="text/css" href="../css/user.css">
</head>
<body>
	<div class="header">
		<h2 style="display:flex;justify-content:center;margin:auto;font-size:42;">User</h2>
	</div>
	<div class="content">
		<!-- notification message -->
		<?php if (isset($_SESSION['success'])) : ?>
			<div class="error success" >
				<h3>
					<?php 
						echo $_SESSION['success']; 
						unset($_SESSION['success']);
					?>
				</h3>
			</div>
		<?php endif ?>

		<!-- logged in user information -->
		<div style="margin-left: -25;" class="profile_info">
			<img src="../img/admin_profile.png" width="50px"; height="50px"; >

			<div>
				<?php  if (isset($_SESSION['user'])) : ?>
					<strong><?php echo $_SESSION['user']['username']; ?></strong>

					<small>
						<i  style="color: #888;">(<?php echo ucfirst($_SESSION['user']['user_type']); ?>)</i> 
						<br>
						<a href="../index.html" style="color: red;">logout</a>
						&nbsp;
					</small>

				<?php endif ?>
			</div>
		</div>



	</div>
	
		</div>


        <div class="ndryshouser">
        <form action="" method="POST">
        <input type="text" placeholder="Ndrysho Username" id="username" name="usernamendryshe" style="
    width: 200;
    height: 35;
    float: right;
    margin-top: 90;
    margin-right: -90;
">
        
        <button type="submit" id="buttonndrysho" style="
    border: 0;
    font-family: Montserrat;
    width: 80;
    height: 30;
    background-color: #3f78b1;
    border-radius: 5px;
    float: right;
    margin-top: 140;
    margin-right: -85;
">Ndrysho</button>
        </form>
        </div>
        <?php
$servername = "127.0.0.1";
$username = "root";
$password = "";
$dbname = "trafikuurban";

// Create connection
$conn = new mysqli($servername, $username, $password, $dbname);
// Check connection
if ($conn->connect_error) {
    die("Connection failed: " . $conn->connect_error);
} 



if(isset($_POST['usernamendryshe'])){
    $sql="UPDATE users SET username='".$_POST['usernamendryshe']."' WHERE username='".$_SESSION['user']['username']."'";


if ($conn->query($sql) === TRUE) {
    echo "Record updated successfully";
    header("Location: ../index.html");
    
} else {
    echo "Error updating record: " . $conn->error;
}

$conn->close();
}

?>


</body>
</html>