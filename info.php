<?php
    require_once "config.php";
    session_start();
    $query = "SELECT id, title, newsText, date, imgLink FROM news ORDER BY id DESC";
    $result = mysqli_query($link, $query);
    if (!empty($_SESSION["username"]) && $_SESSION["username"]=="Coffe") {
        $showAdd = "";
        $showLogout = "";
        $showLogin = "visually-hidden";
        
    } else {
        $showAdd = "visually-hidden";
        $showLogout = "visually-hidden";
        $showLogin = "";
    }
        
    if (!empty($_SESSION["username"]) && $_SESSION["username"]!==null) {
    
      $showLogout = "";
      $showLogin = "visually-hidden";
  } else {
   
      $showLogout = "visually-hidden";
      $showLogin = "";
  }
  $page = $_SERVER['PHP_SELF'];
  $sec = "10";
  header("Refresh: $sec; url=$page");
?>
<!DOCTYPE html>
<html lang="ru">
<head>
<link rel="stylesheet" href="style.css">
<meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0-beta3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-eOJMYsd53ii+scO/bJGFsiCZc+5NDVN2yr8+0RDqr0Ql0h+rP48ckxlpbzKgwra6" crossorigin="anonymous">
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0-beta3/dist/js/bootstrap.bundle.min.js" integrity="sha384-JEW9xMcG8R+pH31jmWH6WWP0WintQrMb4s7ZOdauHnUtxwoG2vI5DkLtS3qm9Ekf" crossorigin="anonymous"></script>
   
</head>
<body>
<div class="container-md">
<nav class="navbar navbar-expand-lg navbar-light bg-light">
  <div class="container-fluid">
    <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarNav" aria-controls="navbarNav" aria-expanded="false" aria-label="Toggle navigation">
      <span class="navbar-toggler-icon"></span>
    </button>
    <div class="collapse navbar-collapse" id="navbarNav" style="width:100%; max-width:100%">
      <ul class="navbar-nav">
        <li class="nav-item" >
          <a class="nav-link active" aria-current="page" href="index.php">На главную</a>
        </li>
        <li class="nav-item" >
          <a class="nav-link <?php echo $showAdd; ?>" href="addNews.php">Добавить новость</a>
        </li>
        <li class=" nav-item">
          <a class="nav-link <?php echo $showLogin; ?>" href="login.php">О нас</a>
        </li>
        <li class=" nav-item">
          <a class="nav-link <?php echo $showLogin; ?>" href="login.php">Вход на сайт</a>
        </li> 
        <li class=" nav-item">
          <a class="nav-link <?php echo $showInfo; ?>" href="info.php" >Информация</a>
        </li>
        <li class=" nav-item">
          <a class="nav-link <?php echo $showLogout; ?>" href="logout.php" >Выход</a>
        </li>
       
        
      </ul>
    </div>
  </div>
</nav>

<body>

<div class="container-md">
<h1 style="color:white;">Комментарий от имени <?php echo htmlspecialchars($_SESSION["username"]); ?></h1>
<form enctype="multipart/form-data" action="addNews.php" method="POST">

  <div class="mb-3">
     <textarea name="newsText" rows="5" style="max-height:200px;min-height:200px;" class="form-control" id="newsText" aria-describedby="newsInputHelp"> </textarea>
 
  </div>
  <div class="mb-3">
    <input type="hidden"  name="MAX_FILE_SIZE" value="30000" />
 
<button type="submit" class="btn btn-primary">Опубликовать</button>
<br>

</body>