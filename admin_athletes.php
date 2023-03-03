<?php

include 'config.php';

session_start();

$admin_id = $_SESSION['admin_id'];

if(!isset($admin_id)){
   header('location:login.php');
};

if(isset($_POST['add_athlete'])){

   $name = mysqli_real_escape_string($conn, $_POST['name']);
   $dob = $_POST['dob'];
   $five = $_POST['five'];
   $ten = $_POST['ten'];
   $fifteen = $_POST['fifteen'];
   $half = $_POST['half'];
   $full = $_POST['full'];
   $image = $_FILES['image']['name'];
   $image_size = $_FILES['image']['size'];
   $image_tmp_name = $_FILES['image']['tmp_name'];
   $image_folder = 'uploaded_img/'.$image;

   $select_athlete_name = mysqli_query($conn, "SELECT name FROM `athletes` WHERE name = '$name'") or die('query failed');

   if(mysqli_num_rows($select_athlete_name) > 0){
      $message[] = 'athlete already added';
   }else{
      $add_athlete_query = mysqli_query($conn, "INSERT INTO `athletes`(name,dob,five,ten,fifteen,half,full, image) 
      VALUES('$name', '$dob', '$five','$ten','$fifteen','$half','$full', '$image')") or die('query failed');

      if($add_athlete_query){
         if($image_size > 2000000){
            $message[] = 'image size is too large';
         }else{
            move_uploaded_file($image_tmp_name, $image_folder);
            $message[] = 'athlete added successfully!';
         }
      }else{
         $message[] = 'athlete could not be added!';
      }
   }
}

if(isset($_POST['update_athlete'])){

   $update_p_id = $_POST['update_p_id'];
   $update_name =  $_POST['update_name'];
   $update_dob = $_POST['update_dob'];
   $update_five = $_POST['update_five'];
   $update_ten = $_POST['update_ten'];
   $update_fifteen = $_POST['update_fifteen'];
   $update_half = $_POST['update_half'];
   $update_full = $_POST['update_full'];
   
   mysqli_query($conn, "UPDATE `athletes` SET name = '$update_name', dob = '$update_dob',five = '$update_five', ten ='$update_ten',  fifteen ='$update_fifteen',half = '$update_half', full = '$update_full' WHERE id = '$update_p_id'") or die('query failed');
   
   $update_image = $_FILES['update_image']['name'];
   $update_image_tmp_name = $_FILES['update_image']['tmp_name'];
   $update_image_size = $_FILES['update_image']['size'];
   $update_folder = 'uploaded_img/'.$update_image;
   $update_old_image = $_POST['update_old_image'];
   
   if(!empty($update_image)){
      if($update_image_size > 2000000){
         $message[] = 'image file size is too large';
      }else{
         mysqli_query($conn, "UPDATE `athletes` SET image = '$update_image' WHERE id = '$update_p_id'") or die('query failed');
         move_uploaded_file($update_image_tmp_name, $update_folder);
         unlink('uploaded_img/'.$update_old_image);
      }
   }
   
   header('location:admin_athletes.php');
   
   }


   if(isset($_GET['delete'])){
   $delete_id = $_GET['delete'];
   $delete_image_query = mysqli_query($conn, "SELECT image FROM `athletes` WHERE id = '$delete_id'") or die('query failed');
   $fetch_delete_image = mysqli_fetch_assoc($delete_image_query);
   unlink('uploaded_img/'.$fetch_delete_image['image']);
   mysqli_query($conn, "DELETE FROM `athletes` WHERE id = '$delete_id'") or die('query failed');
   header('location:admin_athletes.php');
}

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

   <!-- custom admin css file link  -->
   <link rel="stylesheet" href="css/admin_style.css">

</head>
<body>
   
<?php include 'admin_header.php'; ?>

<!-- athlete CRUD section starts  -->

<section class="add-athletes">

   <h1 class="title">Athletes</h1>

   <form action="" method="post" enctype="multipart/form-data">
      <h3>add athlete</h3>
      <input type="text" name="name" class="box" placeholder="enter athlete name" required>
      <input type="date" min="0" name="dob" class="box" placeholder="enter athlete date of birth" required>
      <input type="text" min="0" name="five" class="box" placeholder="enter athletes 5km pb" required>
      <input type="text" min="0" name="ten" class="box" placeholder="enter athletes 10km pb" required>
      <input type="text" min="0" name="fifteen" class="box" placeholder="enter athletes 15km pb" required>
      <input type="text" min="0" name="half" class="box" placeholder="enter athletes half-marathon pb" required>
      <input type="text" min="0" name="full" class="box" placeholder="enter athletes full marathon pb" required>
      <input type="file" name="image" accept="image/jpg, image/jpeg, image/png" class="box" required>
      <input type="submit" value="add athlete" name="add_athlete" class="btn">
   </form>

</section>

<!-- athlete CRUD section ends -->

<!-- show athlete  -->

<section class="show-athletes">

   <div class="box-container">

      <?php
         $select_athletes = mysqli_query($conn, "SELECT * FROM `athletes`") or die('query failed');
         if(mysqli_num_rows($select_athletes) > 0){
            while($fetch_athletes = mysqli_fetch_assoc($select_athletes)){
      ?>
      <div class="box">
         <img src="uploaded_img/<?php echo $fetch_athletes['image']; ?>" alt="">
         <div class="name"><?php echo $fetch_athletes['name']; ?></div>
         <div class="time"><?php echo $fetch_athletes['dob']; ?></div>
         <div class="time">5km pb:   <?php echo $fetch_athletes['five']; ?></div>
         <div class="time">10km pb:  <?php echo $fetch_athletes['ten']; ?></div>
         <div class="time">15km pb:  <?php echo $fetch_athletes['fifteen']; ?></div>
         <div class="time">21.1km pb: <?php echo $fetch_athletes['half']; ?></div>
         <div class="time">42.2km pb: <?php echo $fetch_athletes['full']; ?></div>
         <a href="admin_athletes.php?update=<?php echo $fetch_athletes['id']; ?>" class="option-btn">update</a>
         <a href="admin_athletes.php?delete=<?php echo $fetch_athletes['id']; ?>" class="delete-btn" onclick="return confirm('delete this athlete?');">delete</a>
      </div>
      <?php
         }
      }else{
         echo '<p class="empty">no athletes added yet!</p>';
      }
      ?>
   </div>

</section>

<section class="edit-athletes-form">

   <?php
      if(isset($_GET['update'])){
               $update_id = $_GET['update'];
               $update_query = mysqli_query($conn, "SELECT * FROM `athletes` WHERE id = '$update_id'") or die('query failed');
               if(mysqli_num_rows($update_query) > 0){
                  while($fetch_update = mysqli_fetch_assoc($update_query)){
   ?>
      <form action="" method="post" enctype="multipart/form-data">
         <input type="hidden" name="update_p_id" value="<?php echo $fetch_update['id']; ?>">
         <input type="hidden" name="update_old_image" value="<?php echo $fetch_update['image']; ?>">
         <img src="uploaded_img/<?php echo $fetch_update['image'];?>" alt="">
         <input type="text" name="update_name" value="<?php echo $fetch_update['name'];?>" class="box" required placeholder="enter athlete name">
         <input type="text" name="update_dob" value="<?php echo $fetch_update['dob'];?>" min="0" class="box" required placeholder="enter athlete date of birth">
         <input type="text" name="update_five" value="<?php echo $fetch_update['five'];?>" min="0" class="box" required placeholder="enter athletes 5km pb">
         <input type="text" name="update_ten" value="<?php echo $fetch_update['ten'];?>" min="0" class="box" required placeholder="enter athletes 10km pb">
         <input type="text" name="update_fifteen" value="<?php echo $fetch_update['fifteen'];?>" min="0" class="box" required placeholder="enter athletes 15km pb">
         <input type="text" name="update_half" value="<?php echo $fetch_update['half'];?>" min="0" class="box" required placeholder="enter athletes half marathon pb">
         <input type="text" name="update_full" value="<?php echo $fetch_update['full'];?>" min="0" class="box" required placeholder="enter athletes full marathon pb">
         <input type="file" class="box" name="update_image" accept="image/jpg, image/jpeg, image/png">
         <input type="submit" value="update" name="update_athlete" class="btn">
         <input type="reset" value="cancel" id="close-update" class="option-btn">
      </form>
   <?php
         }
      }
      }else{
         echo '<script>document.querySelector(".edit-athletes-form").style.display = "none";</script>';
      }
   ?>
</section>




<!-- custom admin js file link  -->
<script src="js/admin_script.js"></script>

</body>
</html>