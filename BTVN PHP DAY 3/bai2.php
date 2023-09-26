<?php
function countWords($str) {
    $words = explode(" ", $str);
    return count($words);
}

$input = "This is a sample string";
$result = countWords($input);
echo $result;