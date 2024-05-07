// comment creer une base de donnee.
	CREATE DATABASE piyaypam;

// comment creer une table
	CREATE TABLE product (id INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
						  dayP DATE NOT NULL,
    	                  hoursP TIME NOT NULL,
    	                  imageP VARCHAR(255) NOT NULL,
	                      nameP VARCHAR(50) NOT NULL,
	                      colorP  VARCHAR(20) NOT NULL,
	                      sizeP  VARCHAR(20) NOT NULL,
	                      quantP INT NOT NULL,
	                      priceP DECIMAL(10, 2) NOT NULL,
	                      profitP DECIMAL(5, 2) NOT NULL,
	                      fraisT DECIMAL(5, 2) NOT NULL,
	                      rateP INT NOT NULL,
	                      livraisonP VARCHAR(50) NOT NULL,
	                      contactP VARCHAR(8) NOT NULL,
	                      descP TEXT NOT NULL,
	                      categoryP VARCHAR(50) NOT NULL,
	                      nameF VARCHAR(50) NOT NULL,
	                      adressF VARCHAR(100) NOT NULL,
	                      numberF VARCHAR(20) NOT NULL,
	                      codeP VARCHAR(20) NOT NULL,
	                      codeM VARCHAR(10) NOT NULL,
	                      statusP VARCHAR(20) NOT NULl);

	CREATE TABLE members (id INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
						   firstnameM VARCHAR(20) NOT NULL,
						   lastnameM VARCHAR(20) NOT NULL,
						   numberM VARCHAR(8) NOT NULL,
						   passM VARCHAR(50) NOT NULL,
						   typeM VARCHAR(11) NOT NULL,
						   profitM DECIMAL(10, 2) NOT NULL,
						   codeM VARCHAR(10) NOT NULL);	

    CREATE TABLE transaction (id INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
    						  dayT DATE NOT NULL,
    	                      hoursT TIME NOT NULL,
    	                      firstnameT VARCHAR(20) NOT NULL,
						   	  lastnameT VARCHAR(20) NOT NULL,
						      numberT VARCHAR(8) NOT NULL,
						      codeP VARCHAR(10) NOT NULL,
						      priceUT DECIMAL(10, 2) NOT NULL,
						      quantT INT NOT NULL,
						      profitT DECIMAL(5, 2) NOT NULL,
						      fraisT DECIMAL(5, 2) NOT NULL,
						      priceTT DECIMAL(10, 2) NOT NULL,
						      codeM VARCHAR(10) NOT NULL,
						      codeT VARCHAR(20) NOT NULL,
						      statusT VARCHAR(20) NOT NULl);

    CREATE TABLE comment (id INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
                      dayC DATE NOT NULL,
    	              hoursC TIME NOT NULL,
    	              nameC VARCHAR(50) NOT NULL,
    	              commentC TEXT NOT NULL,
    	              codeP VARCHAR(20) NOT NULL);

    CREATE TABLE subscription (id INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
     							dayS DATE NOT NULL,
    	              			hoursS TIME NOT NULL,
    	              			emailS VARCHAR(50) NOT NULL);

    CREATE TABLE message (id INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
     					  dayM DATE NOT NULL,
    	              	  hoursM TIME NOT NULL,
    	              	  nameM VARCHAR(50) NOT NULL,
    	              	  emailM VARCHAR(50) NOT NULL,
    	              	  messageM TEXT NOT NULL);



// comment creer une index unique
	CREATE UNIQUE INDEX ind_codP ON product (codeP);
	CREATE UNIQUE INDEX ind_codM ON members (codeM);
	CREATE UNIQUE INDEX ind_codT ON transaction (codeT);

//comment ajouter une contrainte reference
	ALTER TABLE product ADD FOREIGN KEY(codeM) REFERENCES members(codeM);
	ALTER TABLE transaction ADD FOREIGN KEY(codeP) REFERENCES product(codeP);
	ALTER TABLE transaction ADD FOREIGN KEY(codeM) REFERENCES members(codeM);
	ALTER TABLE comment ADD FOREIGN KEY(codeP) REFERENCES product(codeP);


//comment ajouter des elements a la table

INSERT INTO members(id,firstnameM,lastnameM,numberM,passM,typeM,profitM,codeM)
              VALUES(1,'Michel','Joseph','36836695','AikaGlobal','Livreur',89.34,
              	     CONCAT(LEFT(typeM,1),'-',0,SECOND(CURRENT_TIME()),RIGHT(numberM,1)*10+SECOND(CURRENT_TIME()))
              	     );


INSERT INTO product(id,dayP,hoursP,imageP,nameP,colorP,sizeP,quantP,priceP,
					profitP,fraisT,rateP,livraisonP,contactP,descP,categoryP,nameF,
					adressF,numberF,codeP,codeM,statusP)
			VALUES(1,CURRENT_DATE(),CURRENT_TIME(),'C:\xampp\htdocs\piyaypam\img\image2.jpeg',
				   'support smartphone, Iphone et android','blanc','small',10,789.45,789.45+(789.45*0.20),789.45*0.20,200,
				   'Port-au-prince','35647787','ce petit object est pour tout smartphone que se 
				    soit Iphone ou Android vous avez le bon gadget pour vos travaux de bureau...',
				    'Accessoires','Storemaket','delmas 48, rue la martiniere','35654423',
				    CONCAT(LEFT(livraisonP,1),LEFT(categoryP,1),0,0,id,SECOND(CURRENT_TIME())+40),
                    'L-01666','disponible'
                    );


INSERT INTO comment(id,dayC,hoursC,nameC,commentC,codeP)
             VALUES(1,CURRENT_DATE(),CURRENT_TIME(),'Jean Michel','je suis tres tres ravi de ce produit, il est arriver en bon
             	     etat, a moins de 24h, merci bcp...','PA00197'
             	     );

INSERT INTO transaction(id,dayT,hoursT,firstnameT,lastnameT,numberT,codeP,priceUT,quantT,profitT,fraisT,priceTT,codeM,
	                    codeT,statusT)
                  VALUES(1,CURRENT_DATE(),CURRENT_TIME(),'Naisha','Jacques','35652244','PA00197',789.45,1,789.45+(789.45*0.20),
                  	     789.45*0.20,20000,'L-01666',
                  	     CONCAT(0,0,id,LEFT(codeP,1),LEFT(codeM,1),SECOND(CURRENT_TIME())*2,0,LEFT(numberT,1)),
                         'en attente'
                  	     );

INSERT INTO subscription(id,dayS,hoursS,emailS)
				  VALUES(1,CURRENT_DATE(),CURRENT_TIME(),'aikaglobal96@gmail.com'
						);

INSERT INTO message(id,dayM,hoursM,nameM,emailM,messageM)
				  VALUES(1,CURRENT_DATE(),CURRENT_TIME(),'joseph michel','aikaglobal96@gmail.com','salut comment ca va?'
						);



$sql = "SELECT imageP,nameP,profitP FROM product";

$result = $conn->query($sql);

if($result->num_rows > 0){
    while($row = $result->fetch_assoc()){
        echo "<div class='carouselItem'>";
        echo "<img src="C:\xampp\htdocs\piyaypam\img\image2.jpeg" alt="art1" class="circularImg">";
        echo "<p>" . $row["nameP"] . "</p>";
        echo "<p>" . $row["profitP"] . "</p>";
        echo "</div>";
    }
}else {
    echo "aucun produit trouve.";
}

$conn->close();




		//connexion a la base de dif0_36180633_testdbsonnees...
		$conn = new mysqli('localhost','root','','moi');

		//verification de la connexion...
		if ($conn->connect_error){
			die("connexion a la base de donnees echouee" . $conn->connect_error);
		}
	
		//recuperation des donnees dans formulaire...
		if($_SERVER['REQUEST_METHOD'] == 'POST'){
			$nom = htmlspecialchars($_POST['nom']);
			$prenom = htmlspecialchars($_POST['prenom']);


			//execution des requetes dans mysql...
			$sql = "INSERT INTO moidb (nom,prenom) VALUES ('$nom', '$prenom')";

			//verification des requetes sql...
			if ($conn->query($sql) === TRUE){
				echo "Welcome ". $nom . " " . $prenom;
			}
			else{
		       echo "donnees non entrer avec succes" . $sql . "<br>" . $conn->error;
	        }

		}
    





		//fermeture de la connexion
		$conn->close();