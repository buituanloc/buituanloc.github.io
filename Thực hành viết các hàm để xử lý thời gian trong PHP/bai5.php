<?php
$givenDate = "2023-07-20";
$dayOfWeek = date("N", strtotime($givenDate));
$days = array("Chủ nhật", "Thứ 2", "Thứ 3", "Thứ 4", "Thứ 5", "Thứ 6", "Thứ 7");
echo $days[$dayOfWeek];
?>