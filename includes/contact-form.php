<?php

header("Content-Type: application/json; charset=UTF-8");
require_once('connect.php');

// $errors = array();

// $pname = mysqli_real_escape_string($connection, $_POST['pname']);
// if ($pname == NULL) {
//     $errors[] = "Preferred Name has to be filled in, please.";
// }

// $subject = mysqli_real_escape_string($connection, $_POST['subject']);
// if ($subject == NULL) {
//     $errors[] = "Subject has to be filled in, please.";
// }

// $email = mysqli_real_escape_string($connection, $_POST['email']);
// if ($email == NULL) {
//     $errors[] = "E-Mail has to be filled in, please.";
// }

// if (!filter_var($email, FILTER_VALIDATE_EMAIL)) {
//     $errors[] = "Sorry, but \"" . $email . "\" is not a valid email address.";
// }

// $comments = mysqli_real_escape_string($connection, $_POST['comments']);
// if ($comments == NULL) {
//     $errors[] = "Message has to be filled in, please.";
// }

// $errcount = count($errors);
// if ($errcount > 0) {
//     $errmsg = array();
//     for ($i = 0; $i < $errcount; $i++) {
//         $errmsg[] = $errors[$i];
//     }
//     echo json_encode(array("errors" => $errmsg));
// } else {
//     $query = "INSERT INTO contacts (preferred_name, email, phone, website_company, subject_line, comments) VALUES ('$pname', '$email', '$phone', '$website', '$subject', '$comments')";

//     $stmt = $connection->prepare($query);
//     $stmt->execute();

//     $to = 'd.singer042@gmail.com';
//     $subject = 'Message From Portfolio';
        
//     $message = "You have received a new message from your portfolio site! Congrats~\n\n";
//     $message .= "Name: ".$pname."\n";
//     $message .= "Info: ".$email." ".$website." ".$phone."\n\n";
//     $message .= "Subject: ".$subject."\n";
//     $message .= "Message: ".$comments."\n\n";
        
//     mail($to, $subject, $message);

//     echo json_encode(array("message" => "Sent! I'll get back to you as soon as possible!"));
// }

$pname = $_POST['pname'];
$email = $_POST['email'];
$phone = $_POST['phone'];
$website = $_POST['website'];
$subject = $_POST['subject'];
$message = $_POST['message'];

$pname = trim($pname);
$email = trim($email);
$phone = trim($phone);
$website = trim($website);
$subject = trim($subject);
$comments = trim($message);

$errors = [];

if(empty($pname)) {
    $errors['preferred_name'] = 'Preferred Name has to be filled in please';
}

if(empty($email)) {
    $errors['email'] = 'Email has to be filled in please';
}

if(empty($subject)) {
    $errors['subject'] = 'Subject has to be filled in please';
}

if(empty($comments)) {
    $errors['comments'] = 'Comments has to be filled in please';
}

else if (!filter_var($email, FILTER_VALIDATE_EMAIL)) {
    $errors['legit_email'] = 'Please provide an existing email. Make sure to check the spelling too in case you made a typo~';
}

if (empty($errors)) {
    $query = "INSERT INTO contacts (preferred_name, email, phone, website_company, subject_line, comments) VALUES ('$pname', '$email', '$phone', '$website', '$subject', '$comments')";

    $stmt = $connection->prepare($query);
    $stmt -> execute();
    
    $to = 'd.singer042@gmail.com';
    $subject = 'Message From Portfolio';

    $message = "You have received a new message from your portfolio site! Congrats~\n\n";
    $message .= "Name: ".$pname."\n";
    $message .= "Info: ".$email." ".$website." ".$phone."\n\n";
    $message .= "Subject: ".$subject."\n";
    $message .= "Message: ".$comments."\n\n";

    mail($to, $subject, $message);
    echo json_encode(array("message" => "Sent! I'll get back to you as soon as possible!"));

} else {
    echo json_encode(array ("errors" => $errors));
}

?>