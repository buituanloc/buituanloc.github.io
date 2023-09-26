<?php
function isAscendingArray($arr) {
    for ($i = 0; $i < count($arr) - 1; $i++) {
        if ($arr[$i] >= $arr[$i + 1]) {
            return false;
        }
    }
    return true;
}
$input = [1, 3, 5, 7, 9];
$result = isAscendingArray($input);
var_dump($result);