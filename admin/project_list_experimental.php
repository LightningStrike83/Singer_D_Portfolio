<!-- NOTE TO PROFESSOR HAAF:
THIS FILE IS MEANT TO BE EXPERIMENTAL AND TO SHOW PROOF OF CONCEPT-->

<!DOCTYPE html>
<html lang="en">

<?php
session_start();

if(!$_SESSION['username']) {
    header('Location: login_form.php');
}

require_once('../connect.php');

$stmt = $connection->prepare('SELECT projects.id, title FROM projects ORDER BY id ASC');
$stmt->execute();

$stmt2 = $connection->prepare('SELECT client_name, category, link FROM clients, category, links');
$stmt2->execute();

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
    <div id="project-selection" class="col-span-2 m-col-span-3">
        <?php
            while ($row = $stmt->fetch(PDO::FETCH_ASSOC)){
                echo '<p class="project-list">'.$row["title"].'<br> <a href="edit_project_form.php?id='.$row["id"].'">Edit</a> | <a href="delete_project.php?id='.$row["id"].'">Delete</a></p>';
            }
        ?>
    </div>

    <div id="selectable_info" class="col-span-2 m-col-span-2">
        <div>
            <?php
                while ($row = $stmt2->fetch(PDO::FETCH_ASSOC)) {
                    print_r($row);
                    echo '<p class="category-list">'.$row['category'].'</p>';
                }
            ?>
        </div>

        <div>
            <?php
                while ($row2 = $stmt2->fetch(PDO::FETCH_ASSOC)) {
                    echo '<p class="client-list">'.$row2["client_name"].'</p>';
                }
            ?>
        </div>

        <div>
            <?php
                while ($row3 = $stmt2->fetch(PDO::FETCH_ASSOC)) {
                    echo '<p class="link-list">'.$row3["link"].'</p>';
                }
            ?>
        </div>
    </div>

    <div id="project-add-form" class="col-span-2 m-col-span-5">
        <p id="add-title">Add A New Project</p>
        <form action="add_project.php" method="POST" enctype="multipart/form-data">
            <label class="admin-label" for="title">Project Title:</label><br>
            <input class="admin-input" name="title" type="text" required><br><br>
            <label class="admin-label" for="category_id">Category (ID):</label><br>
            <input class="admin-input" name="category_id" type="number" min="1" max="4" required><br><br>
            <label class="admin-label" for="client_id">Client (ID):</label><br>
            <input class="admin-input" name="client_id" type="number" min="1" required><br><br>
            <label class="admin-label" for="link_id">Link (ID):</label><br>
            <input class="admin-input" name="link_id" type="number" min="1" required><br><br>
            <label class="admin-label" for="portfolio_image">Portfolio Image:</label><br>
            <input id="add-image-upload" class="admin-input" name="portfolio_image" type="file" required><br><br>
            <label class="admin-label" for="description">Project Description:</label><br>
            <textarea class="admin-input" name="description" required></textarea><br><br>
            <label class="admin-label" for="case_study">Project Case Study:</label><br>
            <textarea class="admin-input" name="case_study" required></textarea><br><br>
            <input class="admin-input" name="submit" type="submit" value="Add">
        </form>
    </div>
</section>

    
</body>
</html>