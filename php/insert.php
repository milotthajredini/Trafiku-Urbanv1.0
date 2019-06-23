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
$sql = "INSERT INTO biletat (Blersiemri,Blersimbiemri,email,linja_id) VALUES ('$first_name','$last_name','$email','$linja')";
if(mysqli_query($link, $sql)){
        echo "Mir osht";
} 
else{
    echo "ERROR: Could not able to execute $sql. " . mysqli_error($link);
}
 
// close connection
mysqli_close($link);
?>
