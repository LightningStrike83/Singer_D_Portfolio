<?php
print_r($_POST);
require_once('../connect.php');

$query = "INSERT INTO projects (title, category_id, description, client_id, link_id, case_study, portfolio_image) VALUES (?, ?, ?, ?, ?, ?, ?)";

$stmt = $connection->prepare($query);
$stmt->bindParam(1, $_POST['title'], PDO::PARAM_STR);
$stmt->bindParam(2, $_POST['category_id'], PDO::PARAM_INT);
$stmt->bindParam(3, $_POST['description'], PDO::PARAM_STR);
$stmt->bindParam(4, $_POST['client_id'], PDO::PARAM_INT);
$stmt->bindParam(5, $_POST['link_id'], PDO::PARAM_INT);
$stmt->bindParam(6, $_POST['case_study'], PDO::PARAM_STR);
$stmt->bindParam(7, $_POST['project_image'], PDO::PARAM_STR);

$stmt->execute();
$stmt = null;
//header('Location: project_list.php');

?>