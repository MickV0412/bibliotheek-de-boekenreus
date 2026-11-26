<?php
$host = "db";
$database = "boekenreus";
$user = "root";
$password = "root";

$dsn = "mysql:host=$host;dbname=$database;charset=utf8mb4";

try{
    $pdo = new PDO($dsn, $user, $password);
    $pdo->setAttribute(PDO::ATTR_ERRMODE, PDO::ERRMODE_EXCEPTION);
}catch (PDOException $e){
    die("Database connection failed");
}


