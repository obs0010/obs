<?php
  session_start();
  $count = 0;
  // connect to database
  
  $title = "Home";
  require_once "./template/header.php";
  require_once "./functions/database_functions.php";
  $conn = db_connect();
  $row = select4LatestBook($conn);
?>
      <!-- Bootstrap Carousel -->
      <div id="bookCarousel" class="carousel slide mb-5" data-bs-ride="carousel">
        <div class="carousel-inner">
          <div class="carousel-item active">
            <img src="bootstrap\img\Book1.png" class="d-block w-100" alt="Book 1">
            <div class="carousel-caption d-none d-md-block">
              <h5></h5>
              <p></p>
            </div>
          </div>
          <div class="carousel-item">
            <img src="bootstrap\img\Book2.png" class="d-block w-100" alt="Book 2">
            <div class="carousel-caption d-none d-md-block">
              <h5></h5>
              <p></p>
            </div>
          </div>
          <div class="carousel-item">
            <img src="bootstrap\img\Book3.png" class="d-block w-100" alt="Book 3">
            <div class="carousel-caption d-none d-md-block">
              <h5></h5>
              <p></p>
            </div>
          </div>
        </div>
        <button class="carousel-control-prev" type="button" data-bs-target="#bookCarousel" data-bs-slide="prev">
          <span class="carousel-control-prev-icon" aria-hidden="true"></span>
          <span class="visually-hidden">Previous</span>
        </button>
        <button class="carousel-control-next" type="button" data-bs-target="#bookCarousel" data-bs-slide="next">
          <span class="carousel-control-next-icon" aria-hidden="true"></span>
          <span class="visually-hidden">Next</span>
        </button>
      </div>
      <!-- End of Bootstrap Carousel -->

      <!-- Example row of columns -->
      <div class="container" id="main">
      <div class="content">
      <div class="lead text-center text-dark fw-bolder h4">Latest books</div>
      <center>
        <hr class="bg-warning" style="width:5em;height:3px;opacity:1">
      </center>
      <div class="row">
        <?php foreach($row as $book) { ?>
          <div class="col-lg-3 col-md-4 col-sm-6 col-xs-12 py-2 mb-2">
            <div class="card rounded-0 shadow book-item h-100">
              <div class="img-holder overflow-hidden">
                <img class="card-img-top" src="<?php echo $book['book_image']; ?>" alt="<?php echo $book['book_title']; ?>">
              </div>
              <div class="card-body">
                <h5 class="card-title text-center"><?php echo $book['book_title']; ?></h5>
                <p class="card-text text-center"><?php echo $book['book_author']; ?></p>
                <p class="card-text text-center text-primary">$<?php echo $book['book_price']; ?></p>
                <a href="book.php?bookisbn=<?php echo $book['book_isbn']; ?>" class="btn btn-warning d-block">Details</a>
              </div>
            </div>
          </div>
        <?php } ?>
      </div>
      </div>
    </div>
      
<?php
  if(isset($conn)) {mysqli_close($conn);}
  require_once "./template/footer.php";
?>
