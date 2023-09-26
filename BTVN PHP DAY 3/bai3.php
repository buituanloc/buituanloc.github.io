<?php
function removeDuplicates($arr) {
    return array_unique($arr);
}
$input = [1, 2, 2, 3, 4, 4, 5];
$result = removeDuplicates($input);
print_r($result);