<?php
require_once('../connect.php');

$query = "INSERT INTO projects (title, category_id, description, client_id, link_id, case_study, portfolio_image) VALUES (?, ?, ?, ?, ?, ?, ?)";

$target_file = '../images/project_images/'.($_FILES['portfolio_image']['name']);
$imageFileType = strtolower(pathinfo($_FILES['portfolio_image']['name'], PATHINFO_EXTENSION));
move_uploaded_file($_FILES['portfolio_image']['tmp_name'], $target_file);

print_r($target_file);

$stmt = $connection->prepare($query);
$stmt->bindParam(1, $_POST['title'], PDO::PARAM_STR);
$stmt->bindParam(2, $_POST['category_id'], PDO::PARAM_INT);
$stmt->bindParam(3, $_POST['description'], PDO::PARAM_STR);
$stmt->bindParam(4, $_POST['client_id'], PDO::PARAM_INT);
$stmt->bindParam(5, $_POST['link_id'], PDO::PARAM_INT);
$stmt->bindParam(6, $_POST['case_study'], PDO::PARAM_STR);
$stmt->bindParam(7, $_POST[$target_file], PDO::PARAM_STR);

if($imageFileType != 'svg') {
        echo 'Sorry, only SVG files are allowed.';
        $uploadOk = 0;
    } else{

    }

$stmt->execute();
$stmt = null;
//header('Location: project_list.php');

?>