<?php
	include_once ("GameEngine/config.php");
	$link = mysql_connect(SQL_SERVER,SQL_USER,SQL_PASS); 
	if (!$link) {die('Could not connect to MySQL: ' . mysql_error());} 
	echo 'Connection OK';
	mysql_close($link); 
?>