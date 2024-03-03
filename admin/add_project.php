<?php
require_once('../connect.php');

$query = "INSERT INTO projects (title, category_id, description, client_id, link_id, case_study, portfolio_image) VALUES (?, ?, ?, ?, ?, ?, ?)";

$file_name = $_FILES['portfolio_image']['name'];

print_r($file_name);

$target_path = '../images/project_images/'.($file_name);
$imageFileType = strtolower(pathinfo($file_name, PATHINFO_EXTENSION));
move_uploaded_file($_FILES['portfolio_image']['tmp_name'], $target_path);

print_r($_FILES['portfolio_image']['tmp_name']);

$stmt = $connection->prepare($query);
$stmt->bindParam(1, $_POST['title'], PDO::PARAM_STR);
$stmt->bindParam(2, $_POST['category_id'], PDO::PARAM_INT);
$stmt->bindParam(3, $_POST['description'], PDO::PARAM_STR);
$stmt->bindParam(4, $_POST['client_id'], PDO::PARAM_INT);
$stmt->bindParam(5, $_POST['link_id'], PDO::PARAM_INT);
$stmt->bindParam(6, $_POST['case_study'], PDO::PARAM_STR);
$stmt->bindParam(7, $file_name, PDO::PARAM_STR);

if($imageFileType != 'svg') {
        echo 'Sorry, only SVG files are allowed.';
        $uploadOk = 0;
    } else{}

$stmt->execute();
$stmt = null;
header('Location: project_list.php');

?>

<!-- AI INDEX

Prompt: Can you check my code please? *Wrong code: $stmt->bindParam(7, $_POST[$file_name], PDO::PARAM_STR);

AI Response: 
-Binding Parameters: You're using prepared statements and binding parameters, which is good practice to prevent SQL injection attacks. However, there's a typo in your code. You should bind the $file_name variable, not $_POST['$file_name'].

-$stmt->bindParam(7, $file_name, PDO::PARAM_STR); // Bind file name variable 

Learning Outcome: I realize my error was that I was using $_POST to bind the parameter when I didn't need to. I remembered from my discussion with Professor Haaf that I need to input "$_FILES['portfolio_image']['name']" when I'm binding the parameter, which I stored as a variable. What I forgot, however, was the mention that I didn't need $_POST to go with it, since that's an action. I thought at the time it would need that action and pull the name from that, but nope!-->