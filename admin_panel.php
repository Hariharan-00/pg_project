<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Admin Panel</title>
    <!-- Bootstrap CSS -->
    <link href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css" rel="stylesheet">
    <!-- Custom CSS -->
    <link rel="stylesheet" href="admin.css">
</head>
<body>
    <div class="container">
        <h2>Upload Materials</h2>
        <?php
        // Check if success message is set in URL parameters
        if (isset($_GET['success']) && $_GET['success'] == 'true') {
            echo '<p style="color: green;">Material uploaded successfully!</p>';
        }
        ?>

        <form action="upload_material.php" method="post">
            <div class="form-group">
                <label for="material_type">Material Type:</label>
                <select class="form-control" name="material_type" id="material_type">
                    <option value="pdf">PDF</option>
                    <option value="video">Video</option>
                    <option value="image">Image</option>
                    <option value="word">Word</option>
                    <option value="excel">Excel</option>
                </select>
            </div>

            <div class="form-group">
                <label for="material_title">Material Title:</label>
                <input type="text" class="form-control" id="material_title" name="material_title" required>
            </div>

            <div class="form-group">
                <label for="material_link">Material Link:</label>
                <input type="text" class="form-control" id="material_link" name="material_link" >
            </div>

            <div class="form-group">
                <label for="subject_id">Subject ID:</label>
                <input type="number" class="form-control" id="subject_id" name="subject_id" required>
            </div>

            <button type="submit" class="btn btn-primary">Upload Material</button>
        </form>
    </div>

    <!-- Bootstrap JS and dependencies (optional) -->
    <script src="https://code.jquery.com/jquery-3.5.1.slim.min.js"></script>
    <script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.5.4/dist/umd/popper.min.js"></script>
    <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>
</body>
</html>
