<?php

$email = $_POST['email'];
$comment = $_POST['comment'];
$redirectPage = $_POST['redirect'] ?? 'index.html'; // fallback

$email = filter_var($email, FILTER_SANITIZE_EMAIL);
$comment = htmlspecialchars($comment, ENT_QUOTES, 'UTF-8');

$host = 'localhost';
$dbname = 'attendance_manager';
$username = 'root';
$password = '';

$conn = new mysqli($host, $username, $password, $dbname);

if($conn->connect_error){
    // Redirect with error 
    header("Location: $redirectPage?status=error");
    exit();
}

$sql = "INSERT INTO feedback (email, comment) VALUES (?, ?)";
$stmt = $conn->prepare($sql);

if (!$stmt) {
    header("Location: $redirectPage?status=error");
    exit();
}

$stmt->bind_param("ss", $email, $comment);

if ($stmt->execute()) {
    header("Location: $redirectPage?status=success");
} else {
    header("Location: $redirectPage?status=error");
}

$stmt->close();
$conn->close();
exit();
?>
