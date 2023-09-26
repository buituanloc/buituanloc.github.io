<?php
function reverseString($str) {
    return strrev($str);
}
$input = "Hello World";
$result = reverseString($input);
echo $result;