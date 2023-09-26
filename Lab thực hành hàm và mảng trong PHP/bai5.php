<?php
function reverseArray($arr) {
    return array_reverse($arr);
}

$array = [1, 2, 3, 4, 5];
$result = reverseArray($array);
echo "Mảng sau khi đảo ngược là: ";
print_r($result);