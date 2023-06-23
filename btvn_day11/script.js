//Bài 1
//vòng lặp for
function repeatString_For(string, numRepeat, join_character) {
    let ans = "";
    for (let i = 1; i <= numRepeat; i++) {
        if (i > 1) {
            ans = ans + join_character;
        }
        ans += string;
    }
    return ans;
};
console.log(repeatString_For("a", 5, "-"));

//vòng lặp while
function repeatString_While(string, numRepeat, join_character) {
    let ans = "";
    let i = 1;
    while (i <= numRepeat) {
        if (i > 1) {
            ans = ans + join_character;
        }
        ans += string
        i++;
    }
    return ans;
};
console.log(repeatString_While("abc", 10, "-"));

//Bài 2
//vòng lặp for
function calculateSum_For(startNum, endNum, divideNum) {
    let sum = 0;
    for (let i = startNum; i <= endNum; i++) {
        if (i % divideNum === 0) {
            sum += i;
        }
    }
    return sum;
};
console.log(calculateSum_For(0, 100, 5));

//vòng lặp while
function calculateSum_While(startNum, endNum, divideNum) {
    let sum = 0;
    let i = startNum;
    while (i <= endNum) {
        if (i % divideNum === 0) {
            sum += i;
        }
        i++;

    }
    return sum;
};
console.log(calculateSum_While(0, 100, 5));

//Bài 3
function calculateSphericalVolume(r) {
    return volume = (4 / 3) * Math.PI * r * r * r;
}
console.log(calculateSphericalVolume(0));

// Bài 4
// vòng lặp for
function Bai4_For(startNum, endNum) {
    return (endNum - startNum + 1) * (startNum + endNum) / 2;
};

//vòng lặp while
function Bai4_While(startNum, endNum) {
    let sum = 0;
    // your code using while loop
    return sum;
}

//Bài 5
//vòng lặp for
function isPrime_For(num) {
    let ok = true;
    for (let i = 2; i <= num - 1; i++) {
        if (num % i === 0) {
            ok = false;
            break;
        }
    }
    return ok;
}
console.log(isPrime_For(2));

//vòng lặp while
function isPrime_While(num) {
    let ok = true;
    let i = 2;
    while (i <= num - 1) {
        if (num % i === 0) {
            ok = false;
            break;
        }
        i++
    }
    return ok;
}
console.log(isPrime_While(2));

//Bài 6
//vòng lặp for
function calculateSumPrimeNumber_For(startNum, endNum) {
    let sum = 0;
    for (let num = startNum; num <= endNum; num++) {
        if (lab4_3(num) == true) {
            sum += num;
        }
    }
    return sum;
}
console.log(calculateSumPrimeNumber_For(2, 10));

//vòng lặp while
function calculateSumPrimeNumber_While(startNum, endNum) {
    let sum = 0;
    let num = startNum;
    while (num <= endNum) {
        if (lab4_3(num) == true) {
            sum += num;
        }
        num++;
    }
    return sum;
}
console.log(calculateSumPrimeNumber_While(2, 10));

//Bài 7
//vòng lặp for
function sumDivide_For(num) {
    let sum = 0;
    if (num > 0) {
        for (let i = 0; i <= num; i++) {
            if (num % i === 0) {
                sum += i;
            }
        }
    } else {
        console.log('Số truyền vào không hợp lệ');
    }
    return sum;
}
console.log(sumDivide_For(6));

//vòng lặp while
function sumDivide_While(num) {
    let sum = 0;
    let i = 0;
    while (i <= num) {
        if (num % i === 0) {
            sum += i;
        }
        i++;
    }
    return sum
}
console.log(sumDivide_While(6));