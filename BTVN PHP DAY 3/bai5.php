<?php
function reverseWordsInString($str) {
    return implode(" ", array_map('strrev', explode(" ", $str)));
}
$input = "Hello World";
$result = reverseWordsInString($input);
echo $result;