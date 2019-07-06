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
	<link rel="stylesheet" type="text/css" href="../css/adminv4.css">
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
		<div style="    margin-left: -40;" class="profile_info">
			<img src="../img/admin_profile.png" width="50px"; height="50px"; >

			<div>
				<?php  if (isset($_SESSION['user'])) : ?>
					<strong><?php echo $_SESSION['user']['username']; ?></strong>

					<small>
						<i  style="color: #888;">(<?php echo ucfirst($_SESSION['user']['user_type']); ?>)</i> 
						<br>
						<a href="../index.html" style="color: red;">logout</a>
						&nbsp; <a href="create_user.php"> + add user</a>
					</small>

				<?php endif ?>
			</div>
		</div>



	</div>
	<div style="padding-top:230;" class="move">
	<div class="table">
	<table id="anks">
        <thead>
            <tr>
                <th>Emri</th>
                <th>Email</th>
                <th>Ankesa</th>
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

		<div style="width: 500;" class="replymail">
			<h3 id="h3">Reply</h3>
			<form name="ankes" id="ankes" action="../html/emailreply.php" method="POST">
				<input type="text" name="emri" id="emri" placeholder="Emri">
				<input type="email" name="email" id="email"placeholder="Email">
				<textarea name="ankes" id="ankes"  placeholder="Shkruaj.."></textarea>
				<button  type="submit" name="submit" id="butoni"> Reply</button>
			</form>
</div>
		</div>		
		<form id="cmimore" style="    margin-top: -200;display:grid;float:right;" action="" method="POST">
				<h3 style="display:block;float:right;margin:auto;font-family: Montserrat;">Cmimore</h3>
				<table id="cmimore">
				<thead>
				<th>Ditore</th>
				<th>Javore</th>
				<th>Mujore</th>
				</thead>
				
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

$sql = "SELECT Ditore, Javore, Mujore FROM cmimore";
$result = $conn->query($sql);

if ($result->num_rows > 0) {
    // output data of each row
    while($row = $result->fetch_assoc()) {
        echo "<tr>";
        echo "<td>".$row['Ditore']."</td>";
       echo "<td>".$row['Javore']."</td>";
       echo "<td>". $row['Mujore']."</td>";
      
    }
} else {
    echo "0 results";
}

$conn->close();
?> </table>
				<select  style="width: 120; height: 30; padding: 0;" name="selectedValue" id="selectedValue">
					<option  value="Ditore">Ditore</option>
					<option value="Javore">Javore</option>
					<option  value="Mujore">Mujore</option>
				</select>
				<input style="    width: 120;height: 30;padding: 0;" type="text" name="ndryshocmimin" id="ndryshocmimin" >
				<button name="submit" id="butoni" type="submit">Ndrysho</button>
			
				</form>
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


switch($_POST['selectedValue']){
	case 'Ditore':
		$sql="UPDATE cmimore SET Ditore='".$_POST['ndryshocmimin']."' WHERE cmimoreID=1";
	break;
	case 'Javore':
	$sql="UPDATE cmimore SET Javore='".$_POST['ndryshocmimin']."' WHERE cmimoreID=1";
	break;
	case 'Mujore':
	$sql="UPDATE cmimore SET Mujore='".$_POST['ndryshocmimin']."' WHERE cmimoreID=1";
	break;
	default:
		
}
if ($conn->query($sql) === TRUE) {
    echo "Record updated successfully";
} else {
    echo "Error updating record: " . $conn->error;
}

$conn->close();
?>

		
</body>
</html>