<?php
/* Attempt MySQL server connection. Assuming you are running MySQL
server with default setting (user 'root' with no password) */
$link = mysqli_connect("127.0.0.1", "root","", "trafikuurban");
 
// Check connection
if($link === false){
    die("ERROR: Could not connect. " . mysqli_connect_error());
}
 
// Escape user inputs for security
$first_name = mysqli_real_escape_string($link, $_REQUEST['emmmri']);
$last_name = mysqli_real_escape_string($link, $_REQUEST['mmbiemri']);
$email = mysqli_real_escape_string($link, $_REQUEST['eemail']);
$linja = mysqli_real_escape_string($link, $_REQUEST['llinja']);
$pagesa = mysqli_real_escape_string($link, $_REQUEST['menyra']);


 
// attempt insert query execution
$sql = "INSERT INTO biletat (Emri,Mbiemri,Email,Linja) VALUES ('$first_name','$last_name','$email','$linja')";
$sql = "INSERT INTO linjat (Cmimi) VALUES ('$pagesa')";
if(mysqli_query($link, $sql)){
    
} 
else{
    echo "ERROR: Could not able to execute $sql. " . mysqli_error($link);
}
 
// close connection
?>

<?php 
$servername = "127.0.0.1";
$username = "root";
$password = "";
$dbname = "trafikuurban";

// Create connection
$conn = mysqli_connect($servername, $username, $password, $dbname);
// Check connection
if (!$conn) {
    die("Connection failed: " . mysqli_connect_error());
}

$sql = "SELECT * FROM biletat ORDER BY BiletaID DESC LIMIT 1";
$sql = "SELECT * FROM linjat ORDER BY BiletaID DESC LIMIT 1";
$result = $conn->query($sql);

if ($result->num_rows > 0) {
    // output data of each row
    while($row = $result->fetch_assoc()) {
        echo "<br>" ."Emri:" . $row["Emri"]."  Mbiemri: ". $row["Mbiemri"]."  Linja: ".$row["Linja"]. "  Email:  " . $row["Email"] . "<br>";}
} else {
    echo "0 results";
}


?>

<html>
    <head>
    
        <link rel="stylesheet" type="text/css" href="../css/biletajuaj.css">
        <title>Trafiku Urban i Prishtin&eumls</title>
        <link rel="icon" href="../img/favicon.ico" type="image/x-icon">
        <script src="http://ajax.googleapis.com/ajax/libs/jquery/1.11.2/jquery.min.js"></script>
        <script src="https://code.jquery.com/jquery-1.12.4.min.js"></script>
       
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
    
        
        <div class="nav">
        <ul>
                <li> <a href="../index.html">Ballina</a></li>
                <div class="dropdown">
                        <button class="dropbtn">Linjat</button>
                        <div class="dropdown-content">
                          <a href="orari.html">Oraret</a>
                          <a href="#">Stacionet</a>
                        </div>
                      </div>
                      <li> <a href="biletat.html">Biletat</a></li>
                      <li> <a href="hartat.html">Hartat</a></li>
                      <li> <a href="kontakti.html">Kontakti</a></li>
                      <li> <a href="rrethnesh.html">Rreth Nesh</a></li>
            </ul>
        </div>
        <div class="main">
            <h1>Bileta Juaj</h1>
            <h2></h2>
            <?php 
            $servername = "127.0.0.1";
            $username = "root";
            $password = "";
            $dbname = "trafikuurban";
            
            // Create connection
            $conn = mysqli_connect($servername, $username, $password, $dbname);
            // Check connection
            if (!$conn) {
                die("Connection failed: " . mysqli_connect_error());
            }
            $query = "SELECT * FROM biletat WHERE email='$email'";
            $query = "SELECT * FROM biletat WHERE emri='$emri'";
            
            ?>
            <img id='barcode' 
            src="https://api.qrserver.com/v1/create-qr-code/?data=<?php echo "$email"; ?>"
            alt= "fdf" 
            title="HELLO" 
            style="display: block;margin-top: 80;
            margin-left: -200;"
            />
           
        </div>

    
    
    
  
        
    </body>
    </html>