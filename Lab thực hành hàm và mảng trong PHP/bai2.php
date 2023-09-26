<?php
function isPrimeNumber($num) {
    for ($i = 2; $i <= sqrt($num); $i++) {
        if ($num % $i == 0){
            return false;
        }
    }
    return true;
}

$number = 17;
if (isPrimeNumber($number)) {
    echo $number . " là số nguyên tố.";
} else {
    echo $number . " không là số nguyên tố.";
}