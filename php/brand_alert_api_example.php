<?php

$terms = 'test';
$username = 'Your brand alert api username';
$password = 'Your brand alert api password';
$rows = '10';

$url = 'https://www.whoisxmlapi.com/brand-alert-api/search.php'
     . '?term1=' . urlencode($terms)
     . '&username=' . urlencode($username)
     . '&password=' . urlencode($password)
     . '&rows=' . urlencode($rows);

print(file_get_contents($url) . PHP_EOL);