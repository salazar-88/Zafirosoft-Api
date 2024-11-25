<?php
$servername = "localhost";
$username = "root"; 
$password = "@Liam2703"; 
$dbname = "Imprenta_Pigmentos_db";

// Create connection
$conn = mysqli_connect($servername, $username, $password);

// Check connection
if (!$conn) {
  die("Connection failed: " . mysqli_connect_error());
}
echo "Connected successfully";

?>