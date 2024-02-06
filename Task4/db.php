<?php

$servername = 'tea';
$username = 'root';
$password = '';
$dbname = 'shop';

// Подключение к БД
$conn = mysqli_connect($servername, $username, $password, $dbname);

$conn->set_charset("utf8mb4");

// Проверка подключения к БД
if(!$conn){
	die("Ошибка подключения". mysqli_connect_error());
} 

?>
