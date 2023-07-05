let products = [{
        name: "Iphone 13 Pro Max", // Tên sản phẩm
        price: 3000000, // Giá mỗi sản phẩm
        brand: "Apple", // Thương hiệu
        count: 2, // Số lượng sản phẩm trong giỏ hàng
    },
    {
        name: "Samsung Galaxy Z Fold3",
        price: 41000000,
        brand: "Samsung",
        count: 1,
    },
    {
        name: "IPhone 11",
        price: 15500000,
        brand: "Apple",
        count: 1,
    },
    {
        name: "OPPO Find X3 Pro",
        price: 19500000,
        brand: "OPPO",
        count: 3,
    },
]

//Bài 1
const showInfo = arr => {
    arr.forEach(p => {
        console.log(`${p.name} - ${p.price} - ${p.brand} - ${p.count}`);
    })
}
showInfo(products);

//Bài 2
const sumProduct = (arr) => {
    return arr.map(p => p.price * p.count);
}
console.log(arr)

//Bài 3
const findByBrand = (arr, brand) => {
    return arr.filter(p => p.brand === brand);
}
console.log(findByBrand(products, "Apple"));


//Bài 4
// const findbyPrice = (arr) => {
//     return arr.filter(p => p.price > 20000000)
// }
// console.log(findbyPrice(products));

//Bài 5
const findByName = (arr, keyword) => {
    return arr.filter(p => p.name.toLowerCase().includes(keyword.toLowerCase()));
}
console.log(findByName(products, "pRo"));

//Bài 6
const addProduct = (arr) => {
    return arr.
}

//Bài 8
const sortByPrice = (arr) => {
    return arr.sort((p1, p2) => p1.price - p2.price)
}
console.log(sortByPrice(products))

//Bài 9
const sortByCount = (arr) => {
    return arr.sort((p1, p2) => p2.count - p1.count)
}
console.log(sortByCount(products))