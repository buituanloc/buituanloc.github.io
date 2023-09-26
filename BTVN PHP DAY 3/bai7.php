<?php
function findPairsWithSum($arr, $sum) {
    $pairs = [];
    foreach ($arr as $key1 => $num1) {
        foreach ($arr as $key2 => $num2) {
            if ($key1 !== $key2 && $num1 + $num2 === $sum) {
                $pairs[] = [$num1, $num2];
            }
        }
    }
    return $pairs;
}
$input = [2, 4, 3, 5, 6, 1, 7];
$targetSum = 7;
$result = findPairsWithSum($input, $targetSum);
print_r($result);