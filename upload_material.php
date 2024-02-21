<?php
require_once "config.php";

// Get form data
$material_type = $_POST['material_type'];
$material_title = $_POST['material_title'];
$material_link = $_POST['material_link'];
$subject_id = $_POST['subject_id'];

// Insert data into database
$sql = "INSERT INTO cs_materials (materials_subject_id, materials_material_type, materials_material_title, materials_material_link) VALUES (?, ?, ?, ?)";
$stmt = $conn->prepare($sql);
$stmt->bind_param("isss", $subject_id, $material_type, $material_title, $material_link);
$stmt->execute();
$stmt->close();

// Redirect back to admin panel
header("Location: admin_panel.php");
exit();
?>
