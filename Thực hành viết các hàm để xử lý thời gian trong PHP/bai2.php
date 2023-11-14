<?php
$birthday = "1990-05-15";
$now = time();
$birthdate = strtotime($birthday);
$age = date("Y", $now) - date("Y", $birthdate);
if (date("md", $now) < date("md", $birthdate)) {
    $age--;
}
echo "Tuổi của bạn là: " . $age;

?>