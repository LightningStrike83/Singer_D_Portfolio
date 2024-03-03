<!DOCTYPE html>
<html lang="en">

<?php

session_start();

if(!$_SESSION['username']) {
    header('Location: login_form.php');
}

require_once('../includes/connect.php');
$query = 'SELECT * FROM projects WHERE projects.id = :projectId';
$stmt = $connection->prepare($query);
$projectId = $_GET['id'];
$stmt->bindParam('projectId', $projectId, PDO::PARAM_INT);
$stmt->execute();
$row = $stmt->fetch(PDO::FETCH_ASSOC);
?>

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>List of Projects</title>
    <link rel="stylesheet" href="../css/reset.css">
    <link rel="stylesheet" href="../css/grid.css">
    <link rel="stylesheet" href="../css/main.css">
</head>
<body>

<section class="grid-con">
    <form id="edit-form" class="col-span-4" action="edit_project.php" method="POST">
        <input name="pk" type="hidden" value="<?php echo $row['id']; ?>">
        <label for="title">Project Title</label><br>
        <input name="title" type="text" value="<?php echo $row['title']; ?>" required><br><br>
        <label for="category_id">Category ID</label><br>
        <input name="category_id" type="number" min="1" max="4" value="<?php echo $row['category_id']; ?>" required><br><br>
        <label for="date_finished">Date Finished</label><br>
        <input name="date_finished" type="text" value="<?php echo $row['date_finished']; ?>"><br><br>
        <label for="description">Description</label><br>
        <textarea name="description" required><?php echo $row['description']; ?></textarea><br><br>
        <label for="client_id">Client ID</label><br>
        <input name="client_id" type="number" value="<?php echo $row['client_id']; ?>" required><br><br>
        <label for="link_id">Link ID</label><br>
        <input name="link_id" type="number" value="<?php echo $row['link_id']; ?>" required><br><br>
        <label for="case_study">Case Study</label><br>
        <textarea name="case_study" required><?php echo $row['case_study']; ?></textarea><br><br>
        <label for="thumbnail">Thumbnail</label><br>
        <input name="thumbnail" value="<?php echo $row['portfolio_image']; ?>" required><br><br>
        <input name="submit" type="submit" value="Edit">
    </form>
</section>



<?php
$stmt = null;
?>

</body>
</html>