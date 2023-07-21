var products = [{
        id: 1,
        name: 'Laptop Asus',
        description: 'Máy tính Asus',
        price: 20
    },
    {
        id: 2,
        name: 'Laptop Acer',
        description: 'Máy tính Acer',
        price: 19
    },
    {
        id: 3,
        name: 'Macbook',
        description: 'Máy tính Macbook',
        price: 21
    }
];

// Danh sách vouchers (Mã giảm giá)
var vouchers = [{
        id: 1,
        code: "ABC",
        value: 10,
        type: "percent"

    },
    {
        id: 2,
        code: "XYZ",
        value: 20,
        type: "dollar"
    }
];

//TRUY CẬP VÀO CÁC THÀNH PHẦN
let subTotalEl = document.querySelector('.subtotal .total');
let vatEl = document.querySelector('.vat span');
let discount = document.querySelector('.discount');
let discountEle = document.querySelector('.discount span');
let totalEle = document.querySelector('.sub-total span');

let btnPromotion = document.querySelector('.promotion button');
let inputPromotion = document.querySelector('#promo-code');


//Render danh sách sản phẩm từ 1 data có sẵn
function renderUI() {
    let html = '';
    let total = 0;
    if (products.length === 0) {
        html = 'Chưa có sản phẩm nào trong giỏ hàng';
        document.querySelector('.option-container').style.display = 'none';
    } else {
        for (let i = 0; i < products.length; i++) {
            // total += products[i].price;
            html += `<li class="row">
                    <div class="col left">
                        <div class="thumbnail">
                            <a href="#">
                                <img src="https://via.placeholder.com/200x150" alt="" />
                            </a>
                        </div>
                        <div class="detail">
                            <div class="name"><a href="#">${ products[i].name }</a></div>
                            <div class="description">
                                ${ products[i].description }
                            </div>
                            <div class="price" id="price_${products[i].id}">$${ products[i].price }</div>
                        </div>
                    </div>
                    <div class="col right">
                        <div class="quantity">
                            <input type="number"
                                onkeyup="handleOnChangeQuantity(${products[i].id}, ${products[i].price})"
                                class="product-quantity"
                                id="product_${products[i].id}"
                                step="1"
                                value="1"
                            />
                        </div>
                        <div class="remove">
                            <span class="close" onclick="removeItem(${products[i].id})"><i class="fa fa-times" aria-hidden="true"></i></span>
                        </div>
                    </div>
                </li>`
        }
        // document.getElementsByClassName('total')[0].innerHTML = '$' + total;
    }
    document.getElementById('products').innerHTML = html;
}

renderUI();

//Arrow Function cú pháp đầy đủ
// const functionName = (item) => {
//     return item.id === id
// }

//Arrow Function cú pháp viết gọn
// const functionName = item => item.id === id

//Thay đổi số lượng sản phẩm hiện có trong giỏ hàng và tổng tiền theo từng sản phẩm
function handleOnChangeQuantity(id, price) {
    let quantity = document.getElementById('product_' + id).value;
    if (quantity !== '' && quantity <= 0) {
        document.getElementById('product_' + id).value = 1;
        quantity = 1;
    }
    // let price_id = 'price_' + id;
    // let newPrice = quantity * products.find(item => item.id === id).price; //Arrow Function
    let newPrice = quantity * price;
    document.getElementById('price_' + id).innerHTML = '$' + newPrice;
    totalPrice();
}

// Cập nhật tổng tiền
function totalPrice(voucher) {
    let sum = 0;
    let sumAfterVAT = 0;
    for (let i = 0; i < products.length; i++) {
        let quantity = document.getElementById("product_" + products[i].id).value;
        sum += products[i].price * quantity;
    }

    if (sum > 100) {
        sumAfterVAT = sum + 5;
        document.querySelector(".vat span").innerHTML = "$" + 5;
    } else {
        sumAfterVAT = sum;
        document.querySelector(".vat span").innerHTML = "$" + 0;
    }

    if (voucher) {
        if (voucher.type === "percent") {
            sumAfterVAT = sumAfterVAT - (sumAfterVAT * voucher.value) / 100;
        } else {
            sumAfterVAT = sumAfterVAT - voucher.value;
        }
    }


    document.getElementsByClassName("total")[0].innerHTML = "$" + sum;
    document.getElementsByClassName("sub-total")[0].innerHTML = "$" + sumAfterVAT;
}

function handleVoucher() {
    let code = document.getElementById("promo-code").value;

    //cách 1:
    let voucher = vouchers.find(voucher => voucher.code === code);

    // //cách 2:Dùng vòng for lặp ra các giá trị của vouchers
    // for (let i = 0; i < vouchers.length; i++) {
    //     if (vouchers[i].code === code) {
    //         let voucher = vouchers[i];
    //     }
    // }

    if (!voucher) {
        document.getElementsByClassName("text-error")[0].innerHTML = "Voucher không hợp lệ";
    } else {
        document.getElementsByClassName("text-error")[0].innerHTML = "";
        totalPrice(voucher);
    }
}


//Xóa sản phẩm khỏi giỏ hàng
function removeItem(id) {
    //C1:dùng filter để lọc ra các sản phẩm không trùng id,rồi gán mảng đã được filter = products
    products = products.filter(e => e.id !== id);

    // C2: dùng vòng lặp và sử dụng splice để loại bỏ phần tử khỏi mảng products
    // for (let i = 0; i < products.length; i++) {
    //     if (products[i].id == id) {
    //         products.splice(i, 1);
    //     }
    // }

    // C3: dùng find để tìm ra phần tử products, dùng splice để xóa
    // product = products.find(e => e.id === id);
    // products.splice(product, 1);
    renderUI();
}