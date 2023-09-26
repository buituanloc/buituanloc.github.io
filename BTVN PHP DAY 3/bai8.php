<?php
function findMostFrequentElement($arr) {
    $counts = array_count_values($arr);
    arsort($counts);
    return key($counts);
}
$input = [1, 2, 2, 3, 3, 3, 4, 4, 4, 4];
$result = findMostFrequentElement($input);
echo $result;