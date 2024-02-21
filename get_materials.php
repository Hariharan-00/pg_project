<?php

require_once "config.php";

function getMaterials($subjectId) {
    global $conn;

    // Use a JOIN to fetch materials along with subject information
    $sql = "SELECT cs_materials.*, cs_subjects.subjects_subject_name
    FROM cs_materials
    JOIN cs_subjects ON cs_materials.materials_subject_id = cs_subjects.pk_id
    WHERE cs_materials.materials_subject_id = $subjectId";

    $result = $conn->query($sql);

    $materials = array();
    while ($row = $result->fetch_assoc()) {
        $materials[] = $row;
    }

    return $materials;
}
?>
