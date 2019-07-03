<?php include('server.php') ?>

<html>
    <head>
        <link rel="stylesheet" href="../css/login.css">
    </head>
    <body>
        <div id="formalogin1" class="loginform">
            <form action="login.php" name="formalogin1" id="formalogin" method="post">
            <?php include('errors.php'); ?>
                <h3 id="h3">Login</h3>
              <label for="Username"></label>
              <input type="text" required id="username" name="username" placeholder="Username" >
              <label for="Password"></label>
              <input type="password" required name="password" id="password"  placeholder="Password">
              <button type="submit" name="login_user"  id="buttonlogin">Login</button>
              <div class="textlogin">
              <p>Doesn't have an account ? <a href="register.php">Sign Up</a></p> 
      
            </div>
          </form>
        
          </div>
    </body>
</html>
