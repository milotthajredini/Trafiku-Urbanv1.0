<html>
    <head>
        <link rel="stylesheet" type="text/css" href="../css/orariaeroportv1.css">
        <title>Trafiku Urban i Prishtin&eumls</title>
        <link rel="icon" href="../img/favicon.ico" type="image/x-icon">
        
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
            <ul id="ul">
                <li id="li"> <a href="../index.html">Ballina</a></li>
                <div class="dropdown">
                        <button class="dropbtn">Linjat</button>
                        <div class="dropdown-content">
                          <a href="../html/orari.php">Oraret</a>
                      
                        </div>
                      </div>
                <li id="li"> <a href="biletat.html">Biletat</a></li>
                <li id="li"> <a href="hartat.html">Hartat</a></li>
                <li id="li"> <a href="kontakti.php">Kontakti</a></li>
                <li id="li"> <a href="rrethnesh.html">Rreth Nesh</a></li>
            </ul>
        </div>
        <div class="main">
            <form class="form" action="orariaeroport.html">
            <button class="button" >Orari</button>
            </form>
            <form action="hartaaeroport.html">
            <button class="button">Hartat</button>
        </form>
        </div>
        <h1 style="display: flex;justify-content:center;" > Orari i Aeroportit</h1>
        <div style="margin-bottom: 15%;" class="table">
        
        <table id="customers" >

    <thead>
        <tr>
           
            <th>Nisja Nga Aeroporti</th>
         
            <th>Nisa Nga Stac.Bus-Prishtina</th>
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

$sql = "SELECT * FROM linjaaeroport";
$result = $conn->query($sql);

if ($result->num_rows > 0) {
// output data of each row
while($row = $result->fetch_assoc()) {
    echo "<tr>";
    
   echo "<td>".$row['Nisja Nga Aeroporti']."</td>";
 
   echo "<td>". $row['Nisja Nga Stac.Bus-Prishtina']."</td>";
  
}
} else {
echo "0 results";
}

$conn->close();
?> 

</table>
</div>
        </div>
         <!-- Footer   -->
         <footer>
      
      
      
            <div class="col1">
              <h5 >P&euml;RMBAJTJA E MENYS</h5>
              <ul>
                <li><a href="index.html">Ballina</a></li>
                <li><a href="html/orari.html">Linjat</a></li>
                <li><a href="html/biletat.html">Biletat</a></li>
                <li><a href="html/hartat.html">Hartat</a></li>
                <li><a href="html/kontakti.html">Kontakti</a></li>
              </ul> 
            </div>
              <div class="col2">
                <h5 >INFORMATAT E ND&euml;RMARJES</h5>
                <ul>
                <li><a href="http://trafikurban-pr.com/shq/d-prokurimi-shq.html">Departamenti i Prokurorimit</a></li>
                <li><a href="http://trafikurban-pr.com/shq/d-prokurimi-kontakt-shq.html">Njoftim p&euml;r kontrat&euml;</a> </li>
                <li><a href="Njoftim p&euml;r dh&euml;nien e kontrat&euml;s"></a></li>
                <li><a href="http://trafikurban-pr.com/shq/d-prokurimi-n-kontrate-shq.html">Nj. p&euml;r n&euml;nshkrimin e kontrat&euml;s</a></li>
                <li><a href="http://trafikurban-pr.com/shq/d-prokurimi-n-anulim-shq.html">Njoftim p&euml;r anulim</a></li>
              </ul>
              </div>
              
              <div class="col3">
                <h5 >Q&euml;NDRO N&euml; KONTAKT</h5>
                <ul>
                  <li> 
            <a href="">Struktura e Nd&euml;rmarjes </a>
                  </li>
                  <li>
            <a href="http://trafikurban-pr.com/shq/information-2-shq.html">  Bordi Udh&euml;hq&euml;s</a>
                  </li>
                  <li>
            <a href="http://trafikurban-pr.com/shq/information-3-shq.html">Kryeshefi Ekzekutiv</a>
                  </li>
                  <li>
            <a href="http://trafikurban-pr.com/shq/information-5-shq.html">Organogrami</a>
                  </li>
                  <li>
            <a href="http://trafikurban-pr.com/shq/partner-donator-shq.html">Partner&euml;t & Donator&euml;t</a>
                  </li>
                </ul>
              </div>
              <div class="col4">
                <ul>
                  <li>Tel: + 383 (0) 45 10 11 22</li>
                  <li>Email: info@trafikurban-pr.com</li>
                  <li><br></li>
                  <li>NPK Trafiku Urban SH.A</li>
                  <li>Rr. Tahir Zajmi, nr.43, Prishtin&euml;.</li>
                </ul>
              </div>
                
              
              
            
            
                </footer>
                <!-- Footer END  -->
    </body>
    </html>