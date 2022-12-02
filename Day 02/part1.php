<?php #Day 2 Part 1
    $moveValues = array(
        "X" => 1,
        "Y" => 2,
        "Z" => 3
    );

    $gameResults = array(
        "AX" => 3,
        "AY" => 6,
        "AZ" => 0,
        "BX" => 0,
        "BY" => 3,
        "BZ" => 6,
        "CX" => 6,
        "CY" => 0,
        "CZ" => 3
    );

    $f = fopen('php://stdin', 'r');
    $total = 0;
    while ($line = fgets($f)) {
        
        $playerMove = trim(explode(" ", $line)[1]);
        $battle = trim(str_replace(" ", "", $line));
        $total += $moveValues[$playerMove] + $gameResults[$battle];
    }

    echo $total;

    fclose($f);
?>