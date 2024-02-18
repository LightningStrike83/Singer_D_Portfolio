<?php
require_once('../connect.php');

$query = "UPDATE projects SET title = ?, category_id = ?, date_finished = ?, description = ?, client_id = ?, link_id = ?, case_study = ?, thumbnail = ? WHERE id = ?";

$stmt = $connection->prepare($query);

$stmt->bindParam(1, $_POST['title'], PDO::PARAM_STR);
$stmt->bindParam(2, $_POST['category_id'], PDO::PARAM_INT);
$stmt->bindParam(3, $_POST['date_finished'], PDO::PARAM_STR);
$stmt->bindParam(4, $_POST['description'], PDO::PARAM_STR);
$stmt->bindParam(5, $_POST['client_id'], PDO::PARAM_INT);
$stmt->bindParam(6, $_POST['link_id'], PDO::PARAM_INT);
$stmt->bindParam(7, $_POST['case_study'], PDO::PARAM_STR);
$stmt->bindParam(8, $_POST['thumbnail'], PDO::PARAM_STR);
$stmt->bindParam(9, $_POST['pk'], PDO::PARAM_INT);

$stmt->execute();
$stmt = null;
header('Location: project_list.php');

?>

