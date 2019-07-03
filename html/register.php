<?php include('server.php') ?>
<html>
    <head>
        <link rel="stylesheet" href="../css/register.css">
    </head>
    <body>
        <div id="formalogin1" class="loginform">
            <form action="register.php"  id="formalogin" method="POST">
            <?php include('errors.php'); ?>   
            <h3 id="h3">Sign Up</h3>
              <input type="text" required id="user_name" name="user_name" placeholder="Username" >
              
              <input type="email" name="email" id="email" placeholder="Email" >
             
              <input type="password" required name="password" id="password" placeholder="Password">
            
              <input type="password" name="confpass" id="confpass" placeholder="Confirm Password">
              <button type="submit" name="reg_user" id="buttonlogin">Sign Up</button>
              <div class="textlogin">
             
       
            </div>
          </form>
        
          </div>
    </body>
</html>
