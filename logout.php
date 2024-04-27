<!--done-->
<?php
session_start();
ini_set('session.use_cookies', '0');
$_SESSION = array();
session_destroy();
header("location:index.php");
?>
