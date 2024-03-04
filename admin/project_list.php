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

//Note to Professor Haaf: I do realize I can do all this one statement, but I found a gigantic bug and it doesn't look like an easy fix. The bug is currently in project_list_experimental.
//The bug is that when I combine everything into one statement, and want to retrieve information from it, it'll duplicate the results. Thus, for result purposes, I'm preparing new statements and working with those since those work. I promise to explore this bug later. I theorize that when we have our next meeting, we'll figure out a way to squish this bug because I think it's related to another bug I'm having.

$stmt2 = $connection->prepare('SELECT * FROM category');
$stmt2->execute();

$stmt3 = $connection->prepare('SELECT client_name, id FROM clients');
$stmt3->execute();

$stmt4 = $connection->prepare('SELECT link, id FROM links');
$stmt4->execute();

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
        <h3>Projects</h3>
        <?php
            while ($row = $stmt->fetch(PDO::FETCH_ASSOC)){
                echo '<p class="project-list">'.$row["id"].". ".$row["title"].'<br> <a href="edit_project_form.php?id='.$row["id"].'">Edit</a> | <a href="delete_project.php?id='.$row["id"].'">Delete</a></p>';
            }
        ?>
    </div>

    <div class="col-span-2 m-col-span-3">
        <div id="category-box" class="selectable_info">
            <h3>Categories</h3>
            <?php
                while ($row = $stmt2->fetch(PDO::FETCH_ASSOC)) {
                    echo '<p class="category-list">'.$row['id'].'. '.$row['category'].'</p>';
                }
            ?>
        </div>

        <div id="client-box" class="selectable_info">
            <h3>Clients</h3>
            <?php
                while ($row = $stmt3->fetch(PDO::FETCH_ASSOC)) {
                    echo '<p class="client-list">'.$row['id'].'. '.$row["client_name"].'</p>';
                }
            ?>
        </div>

        <div id="link-box" class="selectable_info">
            <h3>Links</h3>
            <?php
                while ($row = $stmt4->fetch(PDO::FETCH_ASSOC)) {
                    echo '<p class="link-list">'.$row['id'].'. '.$row["link"].'</p>';
                }
            ?>
        </div>
    </div>

    <div id="project-add-form" class="col-span-2 m-col-span-4">
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