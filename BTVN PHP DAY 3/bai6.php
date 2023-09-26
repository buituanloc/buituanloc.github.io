<?php
function findSecondLargest($arr) {
    $uniqueArr = array_unique($arr);
    rsort($uniqueArr);
    if (count($uniqueArr) > 1) {
        return $uniqueArr[1];
    }
    return null;
}
$input = [5, 2, 9, 1, 7, 3];
$result = findSecondLargest($input);
echo $result;