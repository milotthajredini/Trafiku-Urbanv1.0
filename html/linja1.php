
<html>
    <head>
        <link rel="stylesheet" type="text/css" href="../css/linja1.css">
        <title>Trafiku Urban i Prishtin&eumls</title>
        <link rel="icon" href="../img/favicon.ico" type="image/x-icon">
        
        

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
                          <a href="../html/orari.php">Oraret</a>
                          <a href="#">Stacionet</a>
                        </div>
                      </div>
                      <li> <a href="biletat.html">Biletat</a></li>
                      <li> <a href="hartat.html">Hartat</a></li>
                      <li> <a href="kontakti.php">Kontakti</a></li>
                      <li> <a href="rrethnesh.html">Rreth Nesh</a></li>
            </ul>
        </div>
        <div class="main">
            <form class="form" action="../html/linja1.php">
            <button class="button" >Linja 1</button>
            </form>
            <form action="../html/linja3.php">
            <button class="button">Linja 3</button>
        </form>
            <form action="../html/linja3c.php">
            <button class="button">Linja 3C</button>
        </form>
            <form action="../html/linja4.php">
            <button class="button">Linja 4</button>
        </form>
            <form action="../html/linja7c.php">
            <button class="button">Linja 7C</button>
        </form>
            <form action="../html/linja15.php">
            <button class="button">Linja 15</button>
        </form>
        </div>
        <div class="table">
            <table id="customers" >
        <thead>
            <tr>
                <th>Interval Kohor</th>
                <th>Nisja Nga Fakullteti</th>
                <th>Stacionet</th>
                <th>Arritja Fush Kosov</th>
            </tr>
        </thead>
        <div class="tbody1">
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

$sql = "SELECT * FROM linja1";
$result = $conn->query($sql);

if ($result->num_rows > 0) {
    // output data of each row
    while($row = $result->fetch_assoc()) {
        echo "<tr>";
        echo "<td>".$row['Interval kohor']."</td>";
       echo "<td>".$row['Nisja Nga Fakullteti']."</td>";
       echo "<td>". $row['Stacionet']."</td>";
       echo "<td>". $row['Arritja Fush Kosov']."</td>";
      
    }
} else {
    echo "0 results";
}

$conn->close();
?> 
               

           
            </tbody>
        </div>
            </table>
        </div>
            </div>

    </body>
    </html>