<!DOCTYPE html>
<html lang="en">
<head>
    <title>Form Submission Result</title>
</head>
<body>
<h2>Form Submission Result</h2>
<?php
// Lấy dữ liệu từ form
$name = $_POST['name'];
$email = $_POST['email'];

// Hàm validate name
function validateName($name) {
    // Loại bỏ khoảng trắng thừa ở đầu và cuối tên
    $name = trim($name);

    // Kiểm tra tên có được nhập vào không
    if (empty($name)) {
        return "Tên là trường bắt buộc.";
    }

    // Kiểm tra tên chỉ chứa chữ cái và số
    if (!ctype_alnum($name)) {
        return "Tên chỉ được chứa chữ cái và số.";
    }

    // Kiểm tra độ dài của tên (từ 3 đến 255 ký tự)
    $nameLength = strlen($name);
    if ($nameLength < 3 || $nameLength > 255) {
        return "Tên phải có từ 3 đến 255 ký tự.";
    }

    // Nếu tất cả các điều kiện đều thỏa mãn, trả về true
    return true;
}

// Hàm validate email
function validateEmail($email) {
    // Khởi tạo mảng chứa thông báo lỗi
    $errors = array();

    // Kiểm tra email là trường bắt buộc
    if (empty($email)) {
        $errors[] = "Email là trường bắt buộc.";
    }

    // Loại bỏ khoảng trắng thừa ở đầu và cuối email
    $email = trim($email);

    // Kiểm tra email có chứa ký tự '@'
    if (strpos($email, '@') === false) {
        $errors[] = "thiếu ký tự '@'.";
    }

    // Chỉ một ký tự '@' được phép
    if (substr_count($email, '@') > 1) {
        $errors[] = "chỉ được chứa một ký tự '@'.";
    }

    // Tách phần tên người dùng và tên miền
    list($username, $domain) = explode('@', $email);

    // Kiểm tra độ dài của phần tên người dùng và tên miền
    if (strlen($username) < 1 || strlen($username) > 64 || strlen($domain) < 1 || strlen($domain) > 255) {
        $errors[] = "độ dài tên người dùng hoặc tên miền không đúng.";
    }

    // Kiểm tra phần tên miền có đúng định dạng
    if (!preg_match('/^[a-zA-Z0-9.-]+$/', $domain)) {
        $errors[] = "tên miền không đúng định dạng.";
    }

    // Kiểm tra xem phần tên miền có ít nhất một dấu chấm hay không
    if (strpos($domain, '.') === false) {
        $errors[] = "tên miền không chứa dấu chấm.";
    }

    // Trả về mảng chứa thông báo lỗi (nếu có)
    return $errors;
}

$result_validate_name = validateName($name);
if ($result_validate_name === true) {
    echo "Tên hợp lệ.";
} else {
    echo "Tên bị lỗi: " . $result_validate_name;
    echo "Tên bị lỗi: " . $result_validate_name;
}

$errors = validateEmail($email);
if (empty($errors)) {
    echo "Email hợp lệ.";
} else {
    foreach ($errors as $error) {
        echo "Email Lỗi: " . $error . "<br>";
    }
}

?>
</body>
</html>