<?php
define("HOST", "localhost");
define("USER", "andor123");
define("PASSWORD", "andor123");
define("DATABASE", "sportslist");

$connection = mysqli_connect(HOST, USER, PASSWORD, DATABASE);
if (mysqli_connect_errno()) 
{
	echo "Failed to connect to MySQL: " . mysqli_connect_error();
}

mysqli_query($connection, "SET NAMES utf8") or die(mysqli_error($connection));
mysqli_query($connection, "SET CHARACTER SET utf8") or die(mysqli_error($connection));
mysqli_query($connection, "SET COLLATION_CONNECTION='utf8_unicode_ci'") or die(mysqli_error($connection));
?>