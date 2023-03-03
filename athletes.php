<?php

include 'config.php';

?>

<!DOCTYPE html>
<html lang="en">
<head>
   <meta charset="UTF-8">
   <meta http-equiv="X-UA-Compatible" content="IE=edge">
   <meta name="viewport" content="width=device-width, initial-scale=1.0">
   <title>Athletes</title>

   <!-- font awesome cdn link  -->
   <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.0.0/css/all.min.css">

   <!-- custom css file link  -->
   <link rel="stylesheet" href="css/style.css">

</head>
<body>
   
<?php include 'home_header.php'; ?>

<section class="athletes">

   <h1 class="title"> Our Athletes</h1>

 <section class="show-athletes">

<div class="box-container">

   <?php
      $select_athletes = mysqli_query($conn, "SELECT * FROM `athletes`") or die('query failed');
      if(mysqli_num_rows($select_athletes) > 0){
         while($fetch_athletes = mysqli_fetch_assoc($select_athletes)){
   ?>
   <div class="box">
      <img class="image" src="uploaded_img/<?php echo $fetch_athletes['image']; ?>" alt="">
      <div class="name"><?php echo $fetch_athletes['name']; ?></div>
      <div class="time"><?php echo $fetch_athletes['dob']; ?></div>
      <div class="time">5km pb:<?php echo $fetch_athletes['five']; ?></div>
      <div class="time">10km pb:<?php echo $fetch_athletes['ten']; ?></div>
      <div class="time">15km pb:<?php echo $fetch_athletes['fifteen']; ?></div>
      <div class="time">21.1km pb:<?php echo $fetch_athletes['half']; ?></div>
      <div class="time">42.2km pb:<?php echo $fetch_athletes['full']; ?></div>
   </div>
   <?php
      }
   }else{
      echo '<p class="empty">no athletes added yet!</p>';
   }
   ?>
</div>








<?php include 'footer.php'; ?>

<!-- custom js file link  -->
<script src="js/script.js"></script>

</body>
</html>