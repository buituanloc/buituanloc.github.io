<!DOCTYPE html>
<html lang="en">
<head>
    <title>PHP If-Else Exercise</title>
</head>
<body>
<h1>Kiểm tra tính chẵn lẻ của 1 số</h1>
<?php
    $number = rand(10,100);
    $result="";
    if($number%2===0){
        $result ="chẵn";
    } else{
        $result= "lẻ";
    }
?>
<p>Số: <?php echo $number; ?> là số <?= $result?>.</p>
</body>
</html>