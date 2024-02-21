<?php
// subject_python.php
require_once "config.php";
require_once "get_materials.php";

// Assuming the subject_id for "Python Programming" is 1
$subjectId = 5;
$materials = getMaterials($subjectId);
?>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>mathematical foundation for computer science</title>
    <link rel="stylesheet" href="dashboard.css">
</head>
<body>
    <div class="container">
        <h2>mathematical foundation for computer science</h2>
        
        <!-- Display materials for Python Programming -->
        <?php foreach ($materials as $material): ?>
            <p><a href="<?= $material['materials_material_link'] ?>" download><?= $material['materials_material_title'] ?></a></p>
        <?php endforeach; ?>
    </div>
</body>
</html>
