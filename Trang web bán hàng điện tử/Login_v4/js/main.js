$(document).ready(function() {
    $('#signup').on('click', function() {
        let user = {
            username: $('#username').val(),
            password: $('#password').val(),
        }
        let users = JSON.stringify(user);
        localStorage.setItem('user', users);
        alert('Đăng Ký Thành Công');
    });

});


const btnLogin = $('#btn-login').on('click', function() {
    let username = $('#username').val();
    let password = $('#password').val();
    let user = localStorage.getItem('user');
    let data = JSON.parse(user);
    console.log(username);
    console.log(password);
    if (username != data.username || password != data.password) {
        alert('Sai tài khoản hoặc mật khẩu');
    } else if (username == "" && password == "") {
        alert('Vui lòng nhập username và password');
    } else {
        window.location.href = 'homepage.html';
        alert('Đăng nhập thành công');
    }
})