<?php

session_start();
  include "libs/config.php";
  include "libs/database.php";
  include "functions.php";

$db =new database();


$query = "SELECT * FROM posts order by id DESC";

$posts = $db->select($query);


?>

<!doctype html>
<html lang="en">
  <head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <!-- The above 3 meta tags *must* come first in the head; any other head content must come *after* these tags -->
    <meta name="description" content="">
    <meta name="author" content="">
    <link rel="icon" href="../../favicon.ico">
    <link rel="canonical" href="https://getbootstrap.com/docs/3.4/examples/blog/">

    <title>PANSITE BLOG</title>

    <!-- Bootstrap core CSS -->
    <link href="styles/bootstrap.css" rel="stylesheet">


    <!-- Custom styles for this template -->
    <link href="styles/custom.css" rel="stylesheet">

 
  </head>

  <body>

    <div class="blog-masthead">
      <div class="container">
        <nav class="blog-nav">
          <a class="blog-nav-item active" href="index.php">Home</a>
          <a class="blog-nav-item" href="#">All Posts</a>
          <a class="blog-nav-item" href="#">Activities</a>
          <a class="blog-nav-item" href="#">About</a>
          <a class="blog-nav-item" href="#">Contact</a>
          <a class="blog-nav-item pull-right" href="admin/login.php">Admin Section</a>
          <?php if(isset($_SESSION['email'])):?>
          <a class="blog-nav-item pull-right" href="admin/index.php">Login to Admin Panel</a>
        <?php endif;?>
        </nav>
      </div>
    </div>

    <div class="container">

      <div class="blog-header">
        <h1 class="blog-title">PANSITES BLOG</h1>
        <p class="lead blog-description">All about Pansite news, information dissemination and fun</p>
      </div>

      <div class="row">

        <div class="col-sm-8 blog-main">

          <?php while($row = $posts->fetch_array()) :?>


          <div class="blog-post">
            <h2 class="blog-post-title"><?php echo $row['title'];?></h2>
            <p class="blog-post-meta"><?php echo formatDate($row['dates']);?><a href="#"><?php echo $row['author'];?></a></p>


            <img style="float:left; margin-right:20px; margin-bottom:10px;" src='images/<?php echo $row['images'];?>' width="250" height="250"> 
                                
               <p style="text-align:justify;">
              <?php echo substr($row['content'], 0,300);?>
            </p>
            <a id="readmore" href="single_post.php?id=<?php echo $row['id'];?>">Read More</a>
            
           
          </div><!-- /.blog-post -->
        <?php endwhile;?>



        </div><!-- /.blog-main --> 