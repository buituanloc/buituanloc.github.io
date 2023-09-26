<?php
function findMaxValue($arr) {
    return max($arr);
}
// Gọi hàm để kiểm tra kết quả
$array = [10, 5, 8, 20, 3];
$result = findMaxValue($array);
echo "Giá trị lớn nhất trong mảng là: " . $result;