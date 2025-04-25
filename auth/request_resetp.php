<?php
require 'phpmailer/PHPMailer-master/src/PHPMailer.php';
require 'phpmailer/PHPMailer-master/src/SMTP.php';
require 'phpmailer/PHPMailer-master/src/Exception.php';

use PHPMailer\PHPMailer\PHPMailer;
use PHPMailer\PHPMailer\Exception;


$conn = new mysqli("localhost", "root", "", "attendance_manager");

if ($_SERVER['REQUEST_METHOD'] == 'POST') {
    $email = $_POST['email'];
    $token = bin2hex(random_bytes(16));
    $expires = date("Y-m-d H:i:s", strtotime('+1 hour'));

    // Update user with token
    $stmt = $conn->prepare("UPDATE users1 SET reset_token=?, reset_expires=? WHERE email=?");
    $stmt->bind_param("sss", $token, $expires, $email);
    $stmt->execute();

    // Send email
    $mail = new PHPMailer(true);
    try { 
                    $mail->isSMTP();
            $mail->Host = 'smtp.gmail.com';
            $mail->SMTPAuth = true;
            $mail->Username = 'fahimthanweer09@gmail.com';
            $mail->Password = 'wlczykduuenqutif';  // use the app password from Google
            $mail->SMTPSecure = 'tls';
            $mail->Port = 587;

            $mail->setFrom('your_email@gmail.com', 'Your App');

        $mail->addAddress($email);
        $mail->Subject = 'Password Reset';
        $mail->Body = "Click this link to reset your password: http://localhost/bootstrap/reset_password.php?token=$token";

        $mail->send();
        echo "Reset email sent!";
    } catch (Exception $e) {
        echo "Mail Error: " . $mail->ErrorInfo;
    }
}
?>
<form method="post">
    <input type="email" name="email" required placeholder="Enter your email">
    <button type="submit">Send Reset Link</button>
</form>
