<?php
$username = "root";
$password = "";
$hostname = "localhost"; 
$dbname = "project";

//connection to the database
$conn = mysqli_connect($hostname, $username, $password,$dbname) 
  or die("Unable to connect to MySQL");
//echo "Connected to MySQL<br>";
?>   
