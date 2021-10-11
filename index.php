
<!--Подключение к базе данных + проверка на админа или юзера. Отображает разделы админ/юзер -->
<?php
$i = 0;
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

?>
<!DOCTYPE html>
<html lang="ru">
<head>

    <link rel="stylesheet" href="style.css"> <!--CSS локальная-->
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0-beta3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-eOJMYsd53ii+scO/bJGFsiCZc+5NDVN2yr8+0RDqr0Ql0h+rP48ckxlpbzKgwra6" crossorigin="anonymous">
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0-beta3/dist/js/bootstrap.bundle.min.js" integrity="sha384-JEW9xMcG8R+pH31jmWH6WWP0WintQrMb4s7ZOdauHnUtxwoG2vI5DkLtS3qm9Ekf" crossorigin="anonymous"></script>
    <script src="https://code.jquery.com/jquery-3.2.1.slim.min.js" integrity="sha384-KJ3o2DKtIkvYIK3UENzmM7KCkRr/rE9/Qpg6aAZGJwFDMVNA/GpGFF93hXpG5KkN" crossorigin="anonymous"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.12.9/umd/popper.min.js" integrity="sha384-ApNbgh9B+Y1QKtv3Rn7W3mgPxhU9K/ScQsAP7hUibX39j7fakFPskvXusvfa0b4Q" crossorigin="anonymous"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js" integrity="sha384-JZR6Spejh4U02d8jOt6vLEHfe/JQGiRRSQQxSfFWpi1MquVdAyjUar5+76PVCmYl" crossorigin="anonymous"></script>
    <title>Новости</title>
</head>
<body>

<!-- Отображение главного меню (Главная , Добавить новость  , Информация , Выход)  -->
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
</div>
<!-- Отображает "карусель на главной странице "-->

<div id="carouselExampleIndicators" class="carousel slide" data-bs-ride="carousel">
      <div class="carousel-indicators">
        <button type="button" data-bs-target="#carouselExampleIndicators" data-bs-slide-to="0" class="active" aria-current="true" aria-label="Slide 1"></button>
        <button type="button" data-bs-target="#carouselExampleIndicators" data-bs-slide-to="1" aria-label="Slide 2"></button>
        <button type="button" data-bs-target="#carouselExampleIndicators" data-bs-slide-to="2" aria-label="Slide 3"></button>
      </div>
      <div class="carousel-inner">
        <div class="carousel-item active">
          <img src="img/1.png"  class="d-block w-100" alt="..."style="max-width:100%;height:400px;-moz-user-select: none; -webkit-user-select: none; -ms-user-select: none; user-select: none;">
        </div>
        <div class="carousel-item">
          <img src="img/1.png" class="d-block w-100" alt="..."style="max-width:100%;height:400px;-moz-user-select: none; -webkit-user-select: none; -ms-user-select: none; user-select: none;">
        </div>
        <div class="carousel-item">
          <img src="img/1.png" class="d-block w-100" alt="..."style="max-width:100%;height:400px;-moz-user-select: none; -webkit-user-select: none; -ms-user-select: none; user-select: none;">
        </div>
      </div>
      <button class="carousel-control-prev" type="button" data-bs-target="#carouselExampleIndicators"  data-bs-slide="prev">
        <span class="carousel-control-prev-icon" aria-hidden="true"></span>
        <span class="visually-hidden">Предыдущий</span>
      </button>
      <button class="carousel-control-next" type="button" data-bs-target="#carouselExampleIndicators"  data-bs-slide="next">
        <span class="carousel-control-next-icon" aria-hidden="true"></span>
        <span class="visually-hidden">Следующий</span>
      </button> 
  </div>
  
    <div class="ex" style="width:100%; height:200px;"><h1 style="text-align:center;">Самые новые новости </h1></div>
 



  
  <!-- Берет новости с базы данных и печатает их на главной странице-->
<?php
    while ($row = mysqli_fetch_assoc($result)) 
  {
      
      $title = htmlentities($row["title"]);
      $newsText = htmlentities($row["newsText"]);
      if ($i < 1){ // top 1 
        echo '<button type="button"style="background-color:red !important; border-color:white !important;-moz-opacity:.85;filter:alpha(opacity=85); opacity:.85;" class="btn btn-primary" data-toggle="modal" data-target=".bd-example-modal-lg'.$row['id'].'"><img src="img/'.$row["imgLink"].'" alt="Fail" style="max-width:250px;height:300px;-moz-user-select: none; -webkit-user-select: none; -ms-user-select: none; user-select: none;" ></button>'; //<img src="img/file.ext">
        echo '<div style="background-color:white;"class="modal fade bd-example-modal-lg' .$row['id'].'" tabindex="-1" role="dialog" aria-labelledby="myLargeModalLabel" aria-hidden="true">';
        echo '<div class="modal-dialog modal-lg'.$row['id'].'">';
        echo '<div style="width:100%;"  class="modal-content'.$row['id'].'">';  
        echo '<h1 class="card-text" style="width:100% !important;text-align:center;">'.$title.'</h1>';
        echo '<img src="img/'.$row["imgLink"].'" alt="Fail" style="-moz-user-select: none; -webkit-user-select: none; -ms-user-select: none; user-select: none;" >';
        echo '<p class="card-text">'.$newsText.'</p>';
       
        echo '<p class="card-text"><small class="text-muted"><p>Дата публикации статьи '.$row["date"].'</p></small></p>';
          
         echo '</div>';
        echo '</div>'; if (!empty($_SESSION["username"]) && $_SESSION["username"]=="Coffe") 
        { 
          echo '<form action="deldb.php" method="post">';
          echo '<input style="width:100%;align-items:center;text-align:center;" type="submit" class="form-button" name="deleteItem" value="'.$row['id'].'">Нажмите кнопку '.$row['id'].' чтобы удалить</input>';
          echo '</form>';
        }
        echo '</div>';
        

      }
   

      
    }
      ?>

      


</body>
</html>