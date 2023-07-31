<?php

@include 'config.php';

session_start();

if(!isset($_SESSION['user_name'])){
   header('location:login_form.php');
}

?>

<!DOCTYPE html>
<html lang="en">
<head>
   <meta charset="UTF-8">
   <meta http-equiv="X-UA-Compatible" content="IE=edge">
   <meta name="viewport" content="width=device-width, initial-scale=1.0">
   <title>user page</title>

   <!-- custom css file link  -->
   <link rel="stylesheet" href="css/style.css">

</head>
<body>
   
<div class="container">

   <div class="content">
      <h3> <span>Hi,</span></h3>
      <h1><span><?php echo $_SESSION['user_name'] ?></span></h1>
      <p>Welcome To</P>
      <p>Abbottabad University 
         <br>Of Science & Technology
      <br><strong>Admission Portal</strong></p>
      <a href="chooseprogram.html" class="btn" target="_blank">
         BS Programs</a>
      <a href="chooseprogram.html" class="btn" target="_blank">MS/MBA/M.phill Programs</a>
      <a href="chooseprogram.html" class="btn" target="_blank">PHD Programs</a>
   </div>

</div>

</body>
</html>