<?php
$conn = new mysqli("localhost", "root", "", "attendance_manager");

if (isset($_GET['token'])) {
    $token = $_GET['token'];
    $stmt = $conn->prepare("SELECT email FROM users WHERE reset_token=? AND reset_expires > NOW()");
    $stmt->bind_param("s", $token);
    $stmt->execute();
    $result = $stmt->get_result();

    if ($result->num_rows > 0 && $_SERVER['REQUEST_METHOD'] == 'POST') {
        $new_pass = password_hash($_POST['password'], PASSWORD_BCRYPT);
        $stmt = $conn->prepare("UPDATE users SET password=?, reset_token=NULL, reset_expires=NULL WHERE reset_token=?");
        $stmt->bind_param("ss", $new_pass, $token);
        $stmt->execute();
        echo "Password updated!";
    } elseif ($_SERVER['REQUEST_METHOD'] == 'POST') {
        echo "Token expired or invalid.";
    }
} else {
    echo "Invalid request.";
}
?>
<?php if (isset($_GET['token'])): ?>
<form method="post">
    <input type="password" name="password" required placeholder="Enter new password">
    <button type="submit">Reset Password</button>
</form>
<?php endif; ?>
