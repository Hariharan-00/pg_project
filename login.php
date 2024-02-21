<?php
session_start();

if ($_SERVER["REQUEST_METHOD"] == "POST") {
    // Connect to the database (replace with your database credentials)
    $conn = new mysqli("localhost", "root", "", "cs");

    if ($conn->connect_error) {
        die("Connection failed: " . $conn->connect_error);
    }

    // Get user input
    $signup_username = mysqli_real_escape_string($conn, $_POST['signup_username']);
    $signup_password = $_POST['signup_password'];

    // Check login credentials
    $sql = "SELECT pk_id, signup_username, signup_password FROM cs_signup WHERE signup_username = '$signup_username'";
    $result = $conn->query($sql);

    if (!$result) {
        // Query execution failed
        echo "Error: " . $conn->error;
    } else {
        if ($result->num_rows > 0) {
            $row = $result->fetch_assoc();
           
if (password_verify($signup_password, $row['signup_password'])) {
    // Set session variables and redirect to the next page
    $_SESSION['user_id'] = $row['pk_id'];  // Fix the column name here
    header("Location: dashboard.php");
    exit();



            } else {
                echo "Invalid username or password.";
            }
        } else {
            echo "Invalid username or password.";
        }
    }

    // Close connection
    $conn->close();
}
?>



<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
   
    <title>Login</title>

    <link rel="stylesheet" href="login.css">
   
</head>
<body>
    <div class="container">
        <form action="login.php" method="post">
            <h2>Login</h2>
            <label for="signup_username">Username:</label>
            <input type="text" id="signup_username" name="signup_username" required>

            <label for="signup_password">Password:</label>
            <input type="password" id="signup_password" name="signup_password" required>

            <button type="submit">Sign In</button>
        </form>

        <p>Don't have an account? <a href="signup.php">Sign Up</a></p>
    </div>
</body>
</html>
