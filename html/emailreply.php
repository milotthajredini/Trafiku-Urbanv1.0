<?php     

// Escape user inputs for security
$emri = $_POST['emri'];
$email = $_POST['email'];
$ankes = $_POST['ankes'];


$subject = 'Trafiku Urban Reply';
$message = 'Emri: '."$emri"."\r\n".'Email: '."$email"."\r\n".'Pergjegjja: '."$ankes";

$headers = 'From: trafikuurban.pr@gmail.com';
mail($email,$subject,$message,$headers);
header ('Location: ../admin/home.php');
?>