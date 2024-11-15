
<?php

include 'components/connect.php';

session_start();

if(isset($_SESSION['user_id'])){
   $user_id = $_SESSION['user_id'];
}else{
   $user_id = '';
};

if(isset($_POST['submit'])){

   $license = $_POST['license'];
   $license = filter_var($license, FILTER_SANITIZE_STRING);

   $select_user = $conn->prepare("SELECT * FROM `licens` WHERE license = ?");
   $select_user->execute([$license]);
   $row = $select_user->fetch(PDO::FETCH_ASSOC);

   if($select_user->rowCount() > 0){
      $_SESSION['user_id'] = $row['id'];
      if(isset($_SESSION['user_id'])){
         header('location:login.php');
      }
   }else{
      $message[] = 'incorrect username or password!';
   }

}

?>

<!DOCTYPE html>
<html lang="en">
<head>
   <meta charset="UTF-8">
   <meta http-equiv="X-UA-Compatible" content="IE=edge">
   <meta name="viewport" content="width=device-width, initial-scale=1.0">
   <title>login</title>

   <!-- font awesome cdn link  -->
   <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.1.1/css/all.min.css">

   <!-- custom css file link  -->
   <link rel="stylesheet" href="css/style.css">

</head>
<body>
   
<!-- header section starts  -->

<!-- header section ends -->

<section class="form-container">

   <form action="" method="post">
      <h3>verify yourself first</h3>
      <input type="password" name="license" required placeholder="enter your license mumber" class="box" maxlength="50" oninput="this.value = this.value.replace(/\s/g, '')">
      <input type="submit" value="Proceed" name="submit" class="btn">
      <p>don't have a license Number? Sorry we can not sell our product to you so get licensed first</p>
   </form>

</section>

















<!-- custom js file link  -->
<script src="js/script.js"></script>

</body>
</html>