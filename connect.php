<?php

$server = "localhost";
$user   = "root";
$pwd    = "";
$db     ="piyaypam";

$conn = mysqli_connect($server,$user,$pwd,$db);

if (!$conn){
    die("Connection Failed:");
}

?>