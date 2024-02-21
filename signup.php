<?php
session_start();

if ($_SERVER["REQUEST_METHOD"] == "POST") {
    // Connect to the database (replace with your database credentials)
    $conn = new mysqli("localhost", "root", "", "cs");

    if ($conn->connect_error) {
        die("Connection failed: " . $conn->connect_error);
    } else {
        echo "Successfully connected";
    }

    // Get user input
    $signup_username = mysqli_real_escape_string($conn, $_POST['signup_username']);
    $signup_registerNumber = mysqli_real_escape_string($conn, $_POST['registerNumber']);
    $signup_department = mysqli_real_escape_string($conn, $_POST['department']);
    $signup_courseName = mysqli_real_escape_string($conn, $_POST['courseName']);
    $signup_year = mysqli_real_escape_string($conn, $_POST['year']);
    $signup_phoneNumber = mysqli_real_escape_string($conn, $_POST['phoneNumber']);
    $signup_password = password_hash($_POST['password'], PASSWORD_DEFAULT);


   
    // Insert user into the database
    $sql = "INSERT INTO cs_signup (signup_username, signup_register_number, signup_department, signup_course_name, signup_year, signup_phone_number, signup_password ) 
            VALUES ('$signup_username', '$signup_registerNumber', '$signup_department', '$signup_courseName', '$signup_year', '$signup_phoneNumber', '$signup_password')";

    if ($conn->query($sql) === TRUE) {
        echo "Signup successful!";
    } else {
        echo "Error: " . $sql . "<br>" . $conn->error;
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
    <title>Sign Up</title>
    <link rel="stylesheet" href="login.css">
</head>
<body>
    <div class="container">
        <form action="signup.php" method="post">
            <h2>Sign Up</h2>
            
            <label for="signup_username">Username:</label>
            <input type="text" id="signup_username" name="signup_username" required>

            <label for="registerNumber">Register Number:</label>
            <input type="text" id="registerNumber" name="registerNumber" required>

            <label for="department">Department:</label>
            <input type="text" id="department" name="department" required>

            <label for="courseName">Course Name:</label>
            <input type="text" id="courseName" name="courseName" required>

            <label for="year">Year:</label>
            <input type="text" id="year" name="year" required>

            <label for="phoneNumber">Phone Number:</label>
            <input type="tel" id="phoneNumber" name="phoneNumber" required>
            
            <label for="password">Password:</label>
            <input type="password" id="password" name="password" required>

           

            <button type="submit">Sign Up</button>
        </form>

        <p>Already have an account? <a href="login.php">Login</a></p>
    </div>
</body>
</html>



