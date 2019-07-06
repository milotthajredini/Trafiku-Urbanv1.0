
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



 
// attempt insert query execution
$sql = "INSERT INTO biletat (Emri,Mbiemri,Email,Linja) VALUES ('$first_name','$last_name','$email','$linja')";


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
$conn = new mysqli($servername, $username, $password, $dbname);
// Check connection
if ($conn->connect_error) {
    die("Connection failed: " . $conn->connect_error);
} 


$sql="SELECT Ditore FROM cmimore ";

$linja = mysqli_real_escape_string($link, $_REQUEST['llinja']);
$menyra = mysqli_real_escape_string($link, $_REQUEST['menyra']);

if($linja=="4" ){
    $emristacion ="Germi";
    
    
 }
 else if($linja=="1"){
    $emristacion ="Fush-Kosov";
 }
 else if($linja=="3"){
    $emristacion ="MAT";
 }
 else if($linja=="3c"){
    $emristacion ="Sinidoll";
 }
 else if($linja=="7c"){
    $emristacion ="Kalbri";
 }
 else if($linja=="15"){
    $emristacion ="Keqekoll";
 }
 else{
    die ("Gabim");
     
 }
 $sql = "SELECT * FROM cmimore";
 $result = $conn->query($sql);
 
 

if($menyra =="Ditore"){
    if ($result->num_rows > 0) {
     // output data of each row
     while($row = $result->fetch_assoc()) {
         $pagesa=$row['Ditore'];
     }
}
     
 }
 else if ($menyra =="Javore"){
    if ($result->num_rows > 0) {
        // output data of each row
        while($row = $result->fetch_assoc()) {
           $pagesa=$row['Javore'];
        }
    }}
 
 else if ($menyra =="Mujore"){
   if ($result->num_rows > 0) {
        // output data of each row
        while($row = $result->fetch_assoc()) {
         $pagesa=$row['Mujore'];
        }}
    }

else {
    die ("Gabim");
}
 
$mydate=getdate(date("U"));

 
// attempt insert query execution
$sql = "INSERT INTO linjat (StacionetID,Emri,Menyra,Cmimi,created_at) VALUES ('$linja','$emristacion','$menyra','$pagesa',NOW())";


if(mysqli_query($link, $sql)){
    
    
} 
else{
    echo "ERROR: Could not able to execute $sql. " . mysqli_error($link);
}

?>


<?php 

?>
<html>
    <head>
    <link href="https://fonts.googleapis.com/css?family=Montserrat&display=swap" rel="stylesheet">
        <link rel="stylesheet" type="text/css" href="../css/biletajuaj.css">
        <title>Trafiku Urban i Prishtin&eumls</title>
        <link rel="icon" href="../img/favicon.ico" type="image/x-icon">
        <script src="http://ajax.googleapis.com/ajax/libs/jquery/1.11.2/jquery.min.js"></script>
        <script src="https://code.jquery.com/jquery-1.12.4.min.js"></script>
        <link rel="stylesheet" type="text/css" href="../css/mediav1.css">
       
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
                          <a href="orari.php">Oraret</a>
                          
                        </div>
                      </div>
                      <li> <a href="biletat.html">Biletat</a></li>
                      <li> <a href="hartat.html">Hartat</a></li>
                      <li> <a href="kontakti.php">Kontakti</a></li>
                      <li> <a href="rrethnesh.html">Rreth Nesh</a></li>
            </ul>
        </div>
        <div class="main1" style="margin-left:40%;font-family: 'Montserrat', sans-serif;">
            <h1>Emri:<?php echo "  ".$first_name ?></h1>
            <h1>Mbiemri:<?php echo  "  ".$last_name ?></h1>
            <h1>Linja:<?php echo  "  ".$emristacion."  ".$linja ?></h1>
            <h1>Email:<?php echo  "  ".$email ?></h1>
            
            <h2>Bileta Juaj</h2>
            <h2></h2> 
        
            
            <img name="barcode" id='barcode' 
            src="https://api.qrserver.com/v1/create-qr-code/?data=<?php  
            echo "$first_name"." "."$last_name"." "."Email: "."$email"."  "."Linja: "."$linja"."   "."Çmimi: "."$pagesa"."  Ora: "."$mydate[hours],$mydate[minutes]"." Data: "."$mydate[mday],$mydate[month],$mydate[year]"; ?>"
            alt= "fdf" 
            title="HELLO" 
            
            />
           
            </div>
            <?php     



$subject = 'Trafiku Urban Bileta';


$headers = 'From: trafikuurban.pr@gmail.com';
$headers .= "MIME-Version: 1.0\r\n";
$headers .= "Content-Type: text/html; charset=UTF-8\r\n";
$message = 'Emri:'."$first_name".'<br>'."\n".'Mbiemri: '."$last_name".'<br>'."\n".'<br>'.'Linja: '."$emristacion".' '."$linja"."\n".'<br>'.'Çmimi: '."$pagesa"."\n".'<br>'.'Ora: '."$mydate[hours],$mydate[minutes]"."\n".'<br>'.'Data: '."$mydate[mday],$mydate[month],$mydate[year]".'<br>'.'Bileta juaj:  '."\n".'<br>'.'<br>'.'<br>'.'<img src="https://api.qrserver.com/v1/create-qr-code/?data='."$first_name"." "."$last_name"." "."Email: "."$email"."  "."Linja: "."$linja"."   "."Çmimi: "."$pagesa"."  Ora: "."$mydate[hours],$mydate[minutes]"." Data: "."$mydate[mday],$mydate[month],$mydate[year]".'"/>';
mail($email,$subject,$message,$headers);
?>
    
    

  
        
    </body>
    </html>