<?php
// $host = 'rdsh2c.ch00u6ugi9yx.us-east-1.rds.amazonaws.com';
// $username = 'admin';
// $password = 'admin123';
// $database = 'rdsh2c';

$host = 'localhost';
$username = 'root';
$password = '';
$database = 'clinicdb';

// Create connection
$database = new mysqli($host, $username, $password, $database);

// Check connection
if ($database->connect_error) {
    die("Connection failed: " . $conn->connect_error);
}
?>
