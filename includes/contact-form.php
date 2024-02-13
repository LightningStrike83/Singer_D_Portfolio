<?php

require_once('includes/connect.php');

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
    $errors['email'] = 'Email has to be filled in please';
}

if(empty($subject)) {
    $errors['subject'] = 'Subject has to be filled in please';
}

if(empty($comments)) {
    $errors['comments'] = 'Comments has to be filled in please';
}

else if (!filter_var($email, FILTER_VALIDATE_EMAIL)) {
    $errors['legit_email'] = 'Please provide an existing email. Make sure to check the spelling too in case you made a typo~'
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
} else {
    $errorsarray = json_encode($array)
}

?>