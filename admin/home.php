<?php 
	include('../html/functions.php');

	if (!isAdmin()) {
		$_SESSION['msg'] = "You must log in first";
		header('location: ../login.php');
	}

?>

<html>
<head>
	<title>Admin-Trafiku Urban</title>
	<link rel="stylesheet" type="text/css" href="../css/adminv2.css">
</head>
<body>
	<div class="header">
		<h2 style="display:flex;justify-content:center;margin:auto;font-size:42;">Admin </h2>
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
		<div class="profile_info">
			<img src="../img/admin_profile.png" width="50px"; height="50px"; >

			<div>
				<?php  if (isset($_SESSION['user'])) : ?>
					<strong><?php echo $_SESSION['user']['username']; ?></strong>

					<small>
						<i  style="color: #888;">(<?php echo ucfirst($_SESSION['user']['user_type']); ?>)</i> 
						<br>
						<a href="home.php?logout='1'" style="color: red;">logout</a>
						&nbsp; <a href="create_user.php"> + add user</a>
					</small>

				<?php endif ?>
			</div>
		</div>



	</div>
	<div class="table">
	<table id="anks">
        <thead>
            <tr>
                <td>Emri</td>
                <td>Email</td>
                <td>Ankesa</td>
            </tr>
        </thead>
        <tbody>
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

$sql = "SELECT Emri, Email, Ankesa FROM ankesat";
$result = $conn->query($sql);

if ($result->num_rows > 0) {
    // output data of each row
    while($row = $result->fetch_assoc()) {
        echo "<tr>";
        echo "<td>".$row['Emri']."</td>";
       echo "<td>".$row['Email']."</td>";
       echo "<td>". $row['Ankesa']."</td>";
      
    }
} else {
    echo "0 results";
}

$conn->close();
?> 
               

           
            </tbody>
			</table>
		</div>

		<div class="replymail">
			<h3 id="h3">Reply</h3>
			<form name="ankes" id="ankes" action="../html/emailreply.php" method="POST">
				<input type="text" name="emri" id="emri" placeholder="Emri">
				<input type="email" name="email" id="email"placeholder="Email">
				<textarea name="ankes" id="ankes"  placeholder="Shkruaj.."></textarea>
				<button type="submit" name="submit" id="butoni"> Reply</button>
			</form>
	
    
		</div>
</body>
</html>