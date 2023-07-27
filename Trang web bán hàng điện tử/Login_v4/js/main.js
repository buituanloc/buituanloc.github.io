// (function($) {
//     "use strict";


//     /*==================================================================
//     [ Focus input ]*/
//     $('.input100').each(function() {
//         $(this).on('blur', function() {
//             if ($(this).val().trim() != "") {
//                 $(this).addClass('has-val');
//             } else {
//                 $(this).removeClass('has-val');
//             }
//         })
//     })


//     /*==================================================================
//     [ Validate ]*/
//     var input = $('.validate-input .input100');

//     $('.validate-form').on('submit', function() {
//         var check = true;

//         for (var i = 0; i < input.length; i++) {
//             if (validate(input[i]) == false) {
//                 showValidate(input[i]);
//                 check = false;
//             }
//         }

//         return check;
//     });


//     $('.validate-form .input100').each(function() {
//         $(this).focus(function() {
//             hideValidate(this);
//         });
//     });

//     function validate(input) {
//         if ($(input).attr('type') == 'email' || $(input).attr('name') == 'email') {
//             if ($(input).val().trim().match(/^([a-zA-Z0-9_\-\.]+)@((\[[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\.)|(([a-zA-Z0-9\-]+\.)+))([a-zA-Z]{1,5}|[0-9]{1,3})(\]?)$/) == null) {
//                 return false;
//             }
//         } else {
//             if ($(input).val().trim() == '') {
//                 return false;
//             }
//         }
//     }

//     function showValidate(input) {
//         var thisAlert = $(input).parent();

//         $(thisAlert).addClass('alert-validate');
//     }

//     function hideValidate(input) {
//         var thisAlert = $(input).parent();

//         $(thisAlert).removeClass('alert-validate');
//     }
// })(jQuery);
// $(document).ready(function() {
//     $('.login100-form-btn').click('submit', function() {
//         let user = {
//             username: $('#username').val(),
//             password: $('#password').val(),
//         }

//         let users = JSON.stringify(user);
//         localStorage.setItem('user', users);
//         alert('Đăng Ký Thành Công');
//     });

// });
// const usernameEle = document.getElementById('username');

// let user = localStorage.getItem(username);


// const btnLogin = $('.login100-form-btn').on('click', function() {
//     let username = $('#username').val();
//     let password = $('#password').val();
//     let user = localStorage.getItem('user');

//     let data = JSON.parse(user);
//     console.log(data);
//     console.log(username != data.username || password != data.password);
//     if (username != data.username || password != data.password) {
//         alert('Sai tài khoản hoặc mật khẩu');
//     } else if (username == data.username && password == data.password) {
//         window.location.href = 'homepage.html';
//         alert('Đăng nhập thành công');
//     } else {
//         alert('Chưa nhập tài khoản hoặc mật khẩu');
//     }
// })