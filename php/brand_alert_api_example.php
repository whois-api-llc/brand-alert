<?php

    $terms = 'cinema';
    $password = 'Your brand alert api password';
    $username = 'Your brand alert api username';
    $rows = '5';

    $url = "https://www.whoisxmlapi.com/brand-alert-api/search.php?"
        . "term1={$terms}&username={$username}&password={$password}&rows={$rows}";

    print(file_get_contents($url));

?>