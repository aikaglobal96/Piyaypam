<?php

require_once 'connect.php';




function display1(){
	global $conn;
	$query = "select imageP, nameP, profitP from product";
	$result = mysqli_query($conn, $query);
	return $result;


}

function display2(){

       global $conn;
  //$category = $_POST['nom'];

       $query = "select imageP, nameP, quantP, rateP, livraisonP, profitP from product";
       $result = mysqli_query($conn, $query);
       return $result;


}

    
function fil(){
	global $conn;

	if(isset($_POST['category'])){
		$category = $_POST['category'];
		$query = "select imageP, nameP, quantP, rateP, livraisonP, profitP from product where categoryP = '$category' ";
		$result = mysqli_query($conn, $query);
	    return $result;
	}
	else{
		$query = "select imageP, nameP, quantP, rateP, livraisonP, profitP from product";
		$result = mysqli_query($conn, $query);
	    return $result;
	}



}

?>