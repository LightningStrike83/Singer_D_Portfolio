<?php

require_once('connect.php');

$pname = $_POST['preferred_name'];
$email = $_POST['email'];
$phone = $_POST['phone'];
$website = $_POST['website'];
$subject = $_POST['subject'];
$comments = $_POST['comments'];

$pname = trim($pname);
$email = trim($email);
$phone = trim($phone);
$website = trim($website);
$subject = trim($subject);
$comments = trim($comments);

$errors = [];

if(empty($pname)) {
    $errors['preferred_name'] = 'Preferred Name has to be filled in please';
}

if(empty($email)) {
    $errors['email'] = 'Preferred Name has to be filled in please';
}

if(empty($subject)) {
    $errors['subject'] = 'Preferred Name has to be filled in please';
}

if(empty($comments)) {
    $errors['comments'] = 'Preferred Name has to be filled in please';
}

if (empty($errors)) {
    $query = "INSERT INTO contacts (preferred_name, email, phone, website_company, subject_line, comments) VALUES ('$pname', '$email', '$phone', '$website', '$subject', '$comments')";

    if(mysqli_query($connect, $query)) {
        $to = 'd.singer042@gmail.com';
        $subject = 'Message From Portfolio';

        $message = "You have received a new message from your portfolio site! Congrats~\n\n";
        $message .= "Name: ".$pname."\n";
        $message .= "Info: ".$email." ".$website." ".$phone."\n\n";
        $message .= "Subject: ".$subject."\n";
        $message .= "Message: ".$comments."\n\n";

        mail($to, $subject, $message);
        header('Location: thank-you.php');

    }
}

?>