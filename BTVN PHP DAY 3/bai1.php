<?php
function sumArray($arr) {
    return array_sum($arr);
}

$array = [1, 2, 3, 4, 5];
$result = sumArray($array);
echo "Tổng các phần tử trong mảng là: " . $result;