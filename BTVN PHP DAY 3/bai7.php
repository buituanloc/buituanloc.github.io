<?php
function factorial($n) {
    $giai_thua = 1;
    if ($n == 0 || $n == 1) {
        return $giai_thua;
    } else {
        for($i = 2; $i <= $n; $i ++) {
            $giai_thua *= $i;
        }
        return $giai_thua;
    }
}

$number = 5;
$result = factorial($number);
echo "Giai thừa của " . $number . " là: " . $result;