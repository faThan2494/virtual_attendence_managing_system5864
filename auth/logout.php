<?php

session_start();

//log out the user
session_unset();
session_destroy();

// Redirect to the home page 
header("Location: index.html");
exit();
?>
