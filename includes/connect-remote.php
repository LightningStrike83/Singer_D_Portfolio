<?php

$dsn = "mysql:host=localhost;dbname=hswurwd7_portfolio;charset=utf8mb4";
try {
$connection = new PDO($dsn, 'hswurwd7_public', 'Yoshi_42');
} catch (Exception $e) {
  error_log($e->getMessage());
  exit('unable to connect');
}

?>