<?php
function findKthLargest($arr, $k) {
    rsort($arr);
    return $arr[$k - 1];
}

// Gọi hàm để kiểm tra kết quả
$array = [10, 5, 8, 20, 3];
$k = 2;
$result = findKthLargest($array, $k);
echo "Phần tử lớn thứ " . $k . " trong mảng là: " . $result;