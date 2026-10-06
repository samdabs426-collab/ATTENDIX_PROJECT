<?php
$host = "localhost";
$user = "root";
$pass = "";
$db = "mohammed4";

$initializer = new mysqli($host, $user, $pass);
if ($initializer->connect_error) {
    die("Connection failed: " . $initializer->connect_error);
}

$initializer->query("CREATE DATABASE IF NOT EXISTS `{$db}` CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci");
$initializer->select_db($db);

$schema = [
    "CREATE TABLE IF NOT EXISTS student (
        regno VARCHAR(30) PRIMARY KEY,
        name VARCHAR(50) NOT NULL,
        dept VARCHAR(50) NOT NULL,
        dob DATE NOT NULL,
        email VARCHAR(100) UNIQUE
    )",
    "CREATE TABLE IF NOT EXISTS staff (
        regno INT PRIMARY KEY,
        password VARCHAR(255) NOT NULL,
        name VARCHAR(50)
    )",
    "CREATE TABLE IF NOT EXISTS stat (
        regno VARCHAR(30) NOT NULL,
        name VARCHAR(50) NOT NULL,
        dept VARCHAR(50) NOT NULL,
        dt DATE NOT NULL,
        status VARCHAR(20) NOT NULL,
        percentage FLOAT,
        UNIQUE (regno, dt),
        CONSTRAINT stat_student_fk FOREIGN KEY (regno) REFERENCES student(regno) ON DELETE CASCADE
    )",
    "CREATE TABLE IF NOT EXISTS admin (
        id INT AUTO_INCREMENT PRIMARY KEY,
        username VARCHAR(50) NOT NULL UNIQUE,
        password VARCHAR(255) NOT NULL
    )",
    "CREATE TABLE IF NOT EXISTS student_backup LIKE student",
    "CREATE TABLE IF NOT EXISTS staff_backup LIKE staff",
    "CREATE TABLE IF NOT EXISTS admin_backup LIKE admin"
];

foreach ($schema as $statement) {
    $initializer->query($statement);
}

if ($initializer->query("SELECT COUNT(*) AS total FROM admin")->fetch_assoc()['total'] == 0) {
    $initializer->query("INSERT INTO admin (username, password) VALUES ('aasif', '786')");
}

$initializer->close();

$conn = new mysqli($host, $user, $pass, $db);
if ($conn->connect_error) {
    die("Connection failed: " . $conn->connect_error);
}
$conn->set_charset("utf8mb4");
?>
