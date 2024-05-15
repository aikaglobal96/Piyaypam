<?php 

require_once 'connect.php';
require_once 'function.php';



$rabais = display1();
$dispo = display2();




?>

<!DOCTYPE html>

<html lang="fr">

<head>
	<meta charset="utf-8">
	<meta http-equiv="X-UA-Compatible" content="IE-edge">
	<meta name="viewport" content="width=device-width, initial-scale=1.0">

	<title>PiyayPam</title>

	<link rel="stylesheet" type="text/css" href="index.css">
	<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.5.2/css/all.min.css" integrity="sha512-SnH5WK+bZxgPHs44uWIX+LLJAJ9/2PkPKZ5QiAj6Ta86w+fsb2TkcmfRyVX3pBnMFcV7oQPJkl9QevSCWr3W6A==" crossorigin="anonymous" referrerpolicy="no-referrer" />
	<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.0/jquery.min.js"></script>
	



</head>
<body>

	<header>
			<nav  class="head">
               <div class="logo">PIYAYPAM</div>

          <div class="menuHeader">    
        <ul>
          <li class="active"><i class="fas fa-home"></i><a href="index.php">Accueil</a></li>
          <li><i class="fas fa-user"></i><a href="#">Membres</a></li>
          <li><i class="fas fa-address-book"></i><a href="index1.html">Contact</a></li>
          </ul>
          <div class="social-icon">
          <i class="fab fa-whatsapp"></i>
  			<i class="fab fa-telegram"></i>
  			<i class="fab fa-instagram"></i>
        </div>
        <div for="check" class="close-menu" ><i class="fas fa-times"></i></div>
         </div>
         <label for="check" class="open-menu" ><i class="fas fa-bars"></i></label>
        
      </nav>

	<div class="imgContainer">
		    <img src="pic/image2.jpg" alt="image0">
			<img src="pic/image3.jpg" alt="image1">
			<img src="pic/image5.jpg" alt="image2">
			<img src="pic/image7.jpg" alt="image3">

	</div>

			<div class="menuContainer">
				<nav class="menu">
					
				<ul>
					<li><a href="#art">Tous</a></li>
					<li><a href="#art"  class="btn-menu" onclick="post();">Vetements Femme</a></li>
					<li><a href="#art"   class="btn-menu" onclick="post();">Vetements Homme</a></li>
					<li><a href="#art"  class="btn-menu" onclick="post();">Sous-vetement</a></li>
					<li><a href="#art"   class="btn-menu" onclick="post();">Chaussures</a></li>
					<li><a href="#art"   class="btn-menu" onclick="post();">Electroniques</a></li>
					<li><a href="#art"   class="btn-menu" onclick="post();">Accessoires</a></li>
					<li><a href="#art"   class="btn-menu" onclick="post();">Electromenager</a></li>
					<li><a href="#art"   class="btn-menu" onclick="post();">Bijouterie</a></li>
					<li><a href="#art"   class="btn-menu" onclick="post();">Valises</a></li>
					
				</ul>
		
			</nav>


		
			
			</div>

			
		</header>
		
		

			
		<main>
			
			
				<h3 class="titre">Deal du jour</h3>
				<p class="sousTitre">20% Reduction</p>
			
			 
			<div class="carouselImg">
				
            <?php 
            while ($row = mysqli_fetch_assoc($rabais)) 
            	{
            	?>
            	<a href="index0.html">
					<div class="carouselItem">
                    <img src="<?php echo $row['imageP']; ?>" class="circularImg">
            		<p class="itemName"><?php echo $row['nameP']; ?></p>
            		<p class="itemPrice">HTG <?php echo $row['profitP']; ?></p>

            		</div>
						</a>
              <?php 
                }   
               ?>
        </div>
				
				
			
		</main>
				
<div class="bar-input">
	  <input type="text" placeholder="trouvez un article..." name="text" class="Binput">
  	<svg fill="#000000" width="20px" height="20px" viewBox="0 0 1920 1920" xmlns="http://www.w3.org/2000/svg">
    <path d="M790.588 1468.235c-373.722 0-677.647-303.924-677.647-677.647 0-373.722 303.925-677.647 677.647-677.647 373.723 0 677.647 303.925 677.647 677.647 0 373.723-303.924 677.647-677.647 677.647Zm596.781-160.715c120.396-138.692 193.807-319.285 193.807-516.932C1581.176 354.748 1226.428 0 790.588 0S0 354.748 0 790.588s354.748 790.588 790.588 790.588c197.647 0 378.24-73.411 516.932-193.807l516.028 516.142 79.963-79.963-516.142-516.028Z" fill-rule="evenodd"></path>
	</svg>
</div>

			

			
		
<div class="row" id="art">


	 <?php 
            while ($row = mysqli_fetch_assoc($dispo)) 
            	{
            	?>

		<a href="index0.html"><div class="produit">
                <img src="<?php echo $row['imageP']; ?>" alt="Produit 1" >
                <h3 class="nomItem"><?php echo $row['nameP']; ?></h3>
                <div class="etoiles"><?php 
                if ($row['rateP']<=100)
                	{
                		echo "★☆☆☆☆";
                  }elseif ($row['rateP']<=200) {
                  	echo "★★☆☆☆";
                  }elseif ($row['rateP']<=300) {
                  	echo "★★★☆☆";
                  }elseif ($row['rateP']<=400) {
                  	echo "★★★★☆";
                  }elseif ($row['rateP']>400) {
                  	echo "★★★★★";
                  }  
                ?>
                	
                </div>
                <div class="gps"><?php echo $row['livraisonP']; ?></div>
                <div class="quantite">Disponible: <?php echo $row['quantP']; ?></div>
                
                <button class="prix">HTG <?php echo $row['profitP']; ?></button>
                
            </div></a>

             <?php 
                }   
               ?>
            

</div>

		
		

		<script src="script.js"></script>


</body>
</html>
