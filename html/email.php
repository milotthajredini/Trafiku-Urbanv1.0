<?php
if(isset($_POST['email'])) {
 
    // EDIT THE 2 LINES BELOW AS REQUIRED
    $email_to = "trafikuurban.pr@gmail.com";
    $email_subject = "Trafiku Urban Ankes";
 
    function died($error) {
        // your error code can go here
        echo "We are very sorry, but there were error(s) found with the form you submitted. ";
        echo "These errors appear below.<br /><br />";
        echo $error."<br /><br />";
        echo "Please go back and fix these errors.<br /><br />";
        die();
    }
 
 
    
     
 
    $first_name = $_POST['emri']; // required
    
    $email_from = $_POST['email']; // required
    
    $comments = $_POST['ankes']; // required
 
    $error_message = "";
    $email_exp = '/^[A-Za-z0-9._%-]+@[A-Za-z0-9.-]+\.[A-Za-z]{2,4}$/';
 
  if(!preg_match($email_exp,$email_from)) {
    $error_message .= 'The Email Address you entered does not appear to be valid.<br />';
  }
 
    $string_exp = "/^[A-Za-z .'-]+$/";
 
  if(!preg_match($string_exp,$first_name)) {
    $error_message .= 'The First Name you entered does not appear to be valid.<br />';
  }
 
  
 
  if(strlen($comments) < 2) {
    $error_message .= 'The Comments you entered do not appear to be valid.<br />';
  }
 
  if(strlen($error_message) > 0) {
    died($error_message);
  }
 
    $email_message = "Form details below.\n\n";
 
     
    function clean_string($string) {
      $bad = array("content-type","bcc:","to:","cc:","href");
      return str_replace($bad,"",$string);
    }
 
     
 
    $email_message .= "Emri: ".clean_string($first_name)."\n";
    $email_message .= "Email: ".clean_string($email_from)."\n";
    $email_message .= "Ankesa: ".clean_string($comments)."\n";
 
// create email headers
$headers = 'From: '.$email_from."\r\n".
'Reply-To: '.$email_from."\r\n" .
'X-Mailer: PHP/' . phpversion();
@mail($email_to, $email_subject, $email_message, $headers);  
?>
 
<!-- include your own success html here -->
Thank you for contacting us. We will be in touch with you very soon.

<?php 
  header( "refresh:2; url=../index.html" ); 
?>
 

 
<?php
 }
?>

<?php
/* Attempt MySQL server connection. Assuming you are running MySQL
server with default setting (user 'root' with no password) */
$link = mysqli_connect("127.0.0.1", "root","", "trafikuurban");
 
// Check connection
if($link === false){
    die("ERROR: Could not connect. " . mysqli_connect_error());
}
 
// Escape user inputs for security
$emri = mysqli_real_escape_string($link, $_REQUEST['emri']);
$email = mysqli_real_escape_string($link, $_REQUEST['email']);
$ankes = mysqli_real_escape_string($link, $_REQUEST['ankes']);




 
// attempt insert query execution
$sql = "INSERT INTO ankesat (Emri,Email,Ankesa) VALUES ('$emri','$email','$ankes')";


if(mysqli_query($link, $sql)){
   
} 
else{
    echo "ERROR: Could not able to execute $sql. " . mysqli_error($link);
}

// close connection

?>
