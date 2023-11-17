<?php
$login = $_POST['user_login'];
$pass = $_POST['pass1'];
// $invpass = base64_encode($pass);

$invpass = '';
for ($i = 0; $i < strlen($pass); $i++) {
    $byte = ord($pass[$i]);  // Получаем ASCII-код символа
    $invbyte = $byte ^ 255;   // Инвертируем биты
    $invpass .= chr($invbyte); // Преобразуем обратно в символ
}

$conn = mysqli_connect('authorization', 'root', '', 'authorization');

if (!$conn) {
  die("Ошибка подключения: " . mysqli_connect_error());
} 

mysqli_set_charset($conn, "utf8mb4");


$sql = "INSERT INTO `wp_password` (`login`, `pass`, `repass`) VALUES (?, ?, ?)";
$stmt = $conn->prepare($sql);

if ($stmt === false) {
  die("Ошибка подготовки запроса: " . mysqli_error($conn));
}

$stmt->bind_param("sss", $login, $pass, $invpass);

if ($stmt->execute()) {
  echo "Данные успешно добавлены в базу данных.";
} else {
  echo "Ошибка при выполнении запроса: " . $stmt->error;
}

$stmt->close();
mysqli_close($conn);

//header("Location: users.php");
?>