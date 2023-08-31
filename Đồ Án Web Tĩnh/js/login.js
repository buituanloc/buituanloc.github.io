$(document).ready(function() {
    $('#btn-signup').on('click', function() {
        console.log('ygyb');
        let user = {
            username: $('#username').val(),
            password: $('#password').val(),
        }
        let users = JSON.stringify(user);
        let username = $('#username').val();
        let password = $('#password').val();
        let retype_password = $('#enter-password').val();
        if (username == "") {
            swal("Thất bại", "Username không được bỏ trống", "error");
        } else if (password == "") {
            swal("Thất bại", "Mật khẩu không được bỏ trống", "error");
        } else if (retype_password == "") {
            swal("Thất bại", "Vui lòng nhập lại mật khẩu", "error");
        } else if (password.length < 8) {
            swal("Thất bại", "Mật khẩu phải có ít nhất 8 kí tự", "error");
        } else if (password !== retype_password) {
            swal("Thất bại", "Nhập lại mật khẩu chưa chính xác", "error");
        } else {
            localStorage.setItem('user', users);
            swal("Thành công", "Đăng kí tài khoản thành công", "success");
        }
    });
});


const btnLogin = $('#btn-login').on('click', function() {
    let username = $('#username').val();
    let password = $('#password').val();
    let user = localStorage.getItem('user');
    let data = JSON.parse(user);
    if (username == "") {
        swal("Thất bại", "Username không được bỏ trống", "error");
    } else if (password == "") {
        swal("Thất bại", "Mật khẩu không được bỏ trống", "error");
    } else if (username != data.username || password != data.password) {
        swal("Thất bại", "Username hoặc mật khẩu chưa chính xác", "errorr=")
    } else {
        swal("Thành công", "Đăng nhập thành công", "success");
        window.location.href = 'index.html';
    }
})