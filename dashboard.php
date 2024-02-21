<?php
// Check if user is logged in, if not redirect to login page
// Include your session management code here

// Retrieve user information from the session
// $user_id = $_SESSION['user_id'];
// $username = $_SESSION['username'];

// For demonstration purposes, let's assume the user is already logged in.
$user_id = 1;
$username = "example_user";

?>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Dashboard</title>
    <link rel="stylesheet" href="dashboard.css">
</head>
<body>
    <div class="container">
        <h2>Welcome to Computer Science Department Bharathiar University</h2>
        
        <h3>Semesters</h3>
        <ul>
            <li><a href="semester1.php">1.First Semester</a></li>
            <li><a href="semester2.php">2.Second Semester</a></li>
            <li><a href="semester3.php">3.Third Semester</a></li>
           
        </ul>
        
        <!-- Add more content and features as needed -->
    </div>
</body>
</html>
