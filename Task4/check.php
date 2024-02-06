<?php

require_once('db.php');
$name = $_POST['name'];
$surname = $_POST['surname'];
$patronymic = $_POST['patronymic'];
$phone = $_POST['phone'];
$email = $_POST['email'];
if (isset($_POST['products'])) {
	$product = $_POST['products'];
} else {
	$product = [];
}
$address = $_POST['address'];
$comment = $_POST['comment'];


$sql = "INSERT INTO `users` (`name`, `surname`, `patronymic`, `phone`, `email`, `product`, `address`, `comment`) VALUES (?,?,?,?,?,?,?,?)";
$stmt = $conn->prepare($sql);
$stmt->bind_param("ssssssss", $name, $surname, $patronymic, $phone, $email, $product, $address, $comment);
$stmt->execute();

header('Location: /');
?>