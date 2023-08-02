$(document).ready(function() {
    $('#signup').on('click', function() {
        let user = {
            username: $('#username').val(),
            password: $('#password').val(),
        }
        let users = JSON.stringify(user);
        let username = $('#username').val();
        let password = $('#password').val();
        let retype_password = $('#enter-password').val();
        if (username == "") {
            alert('Vui lòng nhập username');
        } else if (password == "") {
            alert('Vui lòng nhập password');
        } else if (retype_password == "") {
            alert('Vui lòng nhập lại password');
        } else {
            localStorage.setItem('user', users);
            alert('Đăng Ký Thành Công');
        }

    });

});


const btnLogin = $('#btn-login').on('click', function() {
    let username = $('#username').val();
    let password = $('#password').val();
    let user = localStorage.getItem('user');
    let data = JSON.parse(user);
    if (username != data.username || password != data.password) {
        alert('Sai tài khoản hoặc mật khẩu');
    } else if (username == "") {
        alert('Vui lòng nhập username');
    } else if (password == "") {
        alert('Vui lòng nhập password');
    } else {
        window.location.href = 'homepage.html';
        alert('Đăng nhập thành công');
    }
})