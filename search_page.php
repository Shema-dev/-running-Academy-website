<?php

include 'config.php';




?>

<!DOCTYPE html>
<html lang="en">
<head>
   <meta charset="UTF-8">
   <meta http-equiv="X-UA-Compatible" content="IE=edge">
   <meta name="viewport" content="width=device-width, initial-scale=1.0">
   <title>search page</title>

   <!-- font awesome cdn link  -->
   <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.0.0/css/all.min.css">

   <!-- custom css file link  -->
   <link rel="stylesheet" href="css/style.css">

</head>
<body>
   
<?php include 'home_header.php'; ?>

<div class="heading">
   <h3>search page</h3>
   <p> <a href="home.php">home</a> / search </p>
</div>

<section class="search-form">
   <form action="" method="post">
      <input type="text" name="search" placeholder="search athlete by name..." class="box">
      <input type="submit" name="submit" value="search" class="btn">
   </form>
</section>

<section class="athletes" style="padding-top: 0;">

   <div class="box-container">
   <?php
      if(isset($_POST['submit'])){
         $search_item = $_POST['search'];
         $select_athlete = mysqli_query($conn, "SELECT * FROM `athletes` WHERE name LIKE '%{$search_item}%'") or die('query failed');
         if(mysqli_num_rows($select_athlete) > 0){
         while($fetch_athletes = mysqli_fetch_assoc($select_athlete)){
   ?>
   <div class="box">
   <img class="image" src="uploaded_img/<?php echo $fetch_athletes['image']; ?>" alt="">
         <div class="name"><?php echo $fetch_athletes['name']; ?></div>
         <div class="time"><?php echo $fetch_athletes['dob']; ?></div>
         <div class="time">5km pb: <?php echo $fetch_athletes['five']; ?></div>
         <div class="time">10km pb:  <?php echo $fetch_athletes['ten']; ?></div>
         <div class="time">15km pb:   <?php echo $fetch_athletes['fifteen']; ?></div>
         <div class="time">21.1km pb: <?php echo $fetch_athletes['half']; ?></div>
         <div class="time">42.2km pb: <?php echo $fetch_athletes['full']; ?></div>
      </div>
   <?php
            }
         }else{
            echo '<p class="empty">no result found!</p>';
         }
      }else{
         echo '<p class="empty">search something!</p>';
      }
   ?>
   </div>
  

</section>









<?php include 'footer.php'; ?>

<!-- custom js file link  -->
<script src="js/script.js"></script>

</body>
</html>