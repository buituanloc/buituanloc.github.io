//Bai1
function bai1(a) {
    if (a % 3 === 0 && a % 5 === 0) console.log("FizzBuzz");
    if (a % 3 === 0 && a % 5 !== 0) console.log("Fizz");
    if (a % 5 === 0 && a % 3 !== 0) console.log("Buzz");
}
bai1(15);


//Bai2
function bai2(a, b) {
    if (a === 0) console.log('Phương trình có vô số nghiệm');
    if (a !== 0 && b === 0) console.log('Phương trình có 1 nghiệm duy nhất x=0 ');
    if (a === 0 && b !== 0) console.log('Phương trình vô nghiệm');
    if (a !== 0 && b !== 0) console.log('Phương trình có nghiệm là x= ' + (-b / a));
}
bai2(5, 6);

//Bai3
function bai3(a, b, c) {
    if ((b * b - 4 * a * c) < 0) console.log('Phương trình vô nghiệm');
    if ((b * b - 4 * a * c) === 0) console.log('Phương trình có 1 nghiệm duy nhất x=' + (-b / (2 * a)));
    if ((b * b - 4 * a * c) > 0) console.log('Phương trình có hai nghiệm phân biệt x1 = ' +
        ((-b + Math.sqrt(b * b - 4 * a * c)) / 2 * a) + ',x2 = ' +
        ((-b - Math.sqrt(b * b - 4 * a * c)) / 2 * a));
}
bai3(2, 5, 3);

//Bai4
function bai4(chieucao, cannang) {
    if (chieucao === 0 || cannang === 0) return 'Chiều cao hoặc cân nặng không hợp lệ';
    else return 'Chỉ số BMI = ' + (cannang / (chieucao * chieucao));
}
console.log(bai4(1.75, 70));

//Bai5
function bai5(a) {
    return 'Độ F là : ' + ((a * (9 / 5)) + 32);
}
console.log(bai5(30));