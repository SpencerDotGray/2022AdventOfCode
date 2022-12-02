<?php # Day 2 Part 2
    $pointBasedOffBattle = array(
        "AX" => 3,
        "AY" => 1,
        "AZ" => 2,
        "BX" => 1,
        "BY" => 2,
        "BZ" => 3,
        "CX" => 2,
        "CY" => 3,
        "CZ" => 1
    );

    $desiredOutcome = array(
        "X" => 0,
        "Y" => 3,
        "Z" => 6
    );

    $f = fopen('php://stdin', 'r');
    $total = 0;
    while ($line = fgets($f)) {
        
        $playerMove = trim(explode(" ", $line)[1]);
        $battle = trim(str_replace(" ", "", $line));
        $total += $desiredOutcome[$playerMove] + $pointBasedOffBattle[$battle];
    }

    echo $total;

    fclose($f);
?>