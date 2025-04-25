<?php

$servername = "localhost";
$username = "root";
$password = "";
$database = "attendance_manager";


$conn = new mysqli($servername, $username, $password, $database);


if ($conn->connect_error) {
    die("Connection failed: " . $conn->connect_error);
}


if ($_SERVER["REQUEST_METHOD"] == "POST") {
    $name = $_POST['name'];
    $index = $_POST['index'];
    $subjectCode = $_POST['subjectCode'];

    // Insert data into the database
    $sql = "INSERT INTO students (name, index_number, subject_code) VALUES ('$name', '$index', '$subjectCode')";

    if ($conn->query($sql) === TRUE) {
        echo "Data saved successfully!";
    } else {
        echo "Error: " . $sql . "<br>" . $conn->error;
    }

    $conn->close();
}
?>
