<?php

session_start();


$servername = "localhost";
$username = "root"; 
$password = "";     
$dbname = "attendance_manager"; 

$conn = new mysqli($servername, $username, $password, $dbname);


if ($conn->connect_error) {
    die("Connection failed: " . $conn->connect_error);
}


if ($_SERVER["REQUEST_METHOD"] == "POST") {
    $email = $_POST['email'];
    $password = $_POST['password'];

    // Sanitize input to prevent SQL injection
    $email = $conn->real_escape_string($email);
    $password = $conn->real_escape_string($password);

    // Query to check the email and password in the database
    $sql = "SELECT * FROM users WHERE email = '$email' AND password = '$password'";
    $result = $conn->query($sql);

    if ($result->num_rows == 1) {
        
        $_SESSION['user_email'] = $email; // Store user info in the session
        header("Location: dashbord.html"); 
        exit();
    } else {
        
        echo "<script>alert('Invalid Email or Password!'); window.location.href='loginform.php';</script>";
    }
}

// Close the database connection
$conn->close();
?>


