
<html>
    <head>
        
        <link rel="stylesheet" type="text/css" href="../css/admin.css">
        <title>Trafiku Urban i Prishtin&eumls</title>
        <link rel="icon" href="../img/favicon.ico" type="image/x-icon">
       
          <link href="https://fonts.googleapis.com/css?family=Montserrat&display=swap" rel="stylesheet">
    </head>
    <body>
 
      <div class="header">
        <img id="twitter" src="../img/twittert.png" href="" style="margin-top: 60;width: 30px;float: right;margin-right: 5px">
        <a href="https://www.instagram.com/trafikuurban"><img id="insta" src="../img/instalogo.png"  style="margin-top: 60;width: 30px;float: right;margin-right: 5px"></a>
   <a href="https://www.facebook.com/trafikurban/"><img id="fb" src="../img/fbico.png" href="https://www.facebook.com/trafikurban/" style="margin-top:65;margin-right: 2px;float: right;width: 20px;">
   
    <div class="img2">
        <img src="../img/logo-k.png" id="logok" style="width:150px;float: left;margin-top: 40"> </a>
    </div>

</div>
<div class="logokryesore">
<a href="../index.html"><img id="logokryesore" src="../img/logofinalv3.png" style="/* margin-left: 800; */display: flex;justify-content: center;/* margin: auto; */width: 300;margin: auto;"></a>
</div>
<div class="formadmin">
      <form action="adminreg.php" method="POST">
      <h2>Admin Registration</h2>
      <input type="text" name="adminuser" id="adminuser" placeholder="Username">
      <input type="text" name="adminpass" id="adminpass" placeholder="Password">
          <button type="submit" name="admin_reg" id="admin_reg">Register</button>

      </form>
</div>
<table>
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
           
    </body>

  
    </html>