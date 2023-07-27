// Convert number to money VND
function convertMoney(num) {
    return num.toLocaleString('it-IT', { style: 'currency', currency: 'VND' });
}

// === KHAI BÁO BIẾN ===
// Danh sách sản phẩm
let productList = [{
        id: 1,
        name: "Sản phẩm 1",
        price: 10000000,
        brand: "Samsung",
        thumbnail: "https://images.unsplash.com/photo-1523275335684-37898b6baf30?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8Mnx8cHJvZHVjdHxlbnwwfHwwfHx8MA%3D%3D&auto=format&fit=crop&w=800&q=60",
        rating: 4
    },
    {
        id: 2,
        name: "Sản phẩm 2",
        price: 11000000,
        brand: "Xiaomi",
        thumbnail: "https://images.unsplash.com/photo-1505740420928-5e560c06d30e?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8M3x8cHJvZHVjdHxlbnwwfHwwfHx8MA%3D%3D&auto=format&fit=crop&w=800&q=60",
        rating: 5
    },
    {
        id: 3,
        name: "iPhone 14 Pro Max 128GB",
        price: 26580000,
        brand: "Apple",
        thumbnail: "https://images.fpt.shop/unsafe/fit-in/960x640/filters:quality(90):fill(white):upscale()/fptshop.com.vn/Uploads/Originals/2022/10/28/638025697712034572_iPhone%2014%20Promax%20(1).jpg",
        rating: 4
    },
    {
        id: 4,
        name: "Sản phẩm 4",
        price: 20000000,
        brand: "Oppo",
        thumbnail: "https://images.unsplash.com/photo-1542291026-7eec264c27ff?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8MTB8fHByb2R1Y3R8ZW58MHx8MHx8fDA%3D&auto=format&fit=crop&w=800&q=60",
        rating: 3
    },
    {
        id: 5,
        name: "Sản phẩm 5",
        price: 15000000,
        brand: "Vivo",
        thumbnail: "https://plus.unsplash.com/premium_photo-1670537995391-c8dc4da967ad?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8MTl8fHByb2R1Y3R8ZW58MHx8MHx8fDA%3D&auto=format&fit=crop&w=800&q=60",
        rating: 5
    }
]


// Danh sách promotion code (Mã giảm giá)
var vouchers = [{
        id: 1,
        code: "ABC",
        value: 10,
        type: "percent"

    },
    {
        id: 2,
        code: "XYZ",
        value: 20000,
        type: "VND"
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
    if (products.length === 0) {
        html = 'Chưa có sản phẩm nào trong giỏ hàng';
        document.querySelector('.option-container').style.display = 'none';
    } else {
        for (let i = 0; i < productList.length; i++) {
            html += `<li class="row">
                    <div class="col left">
                        <div class="thumbnail">
                            <a href="#">
                                <img src="${productList[i].thumbnail}" alt="${productList[i].name}" />
                            </a>
                        </div>
                        <div class="detail">
                            <div class="name"><a href="#">${ productList[i].name }</a></div>
                            <div class="brand">
                                ${ productList[i].brand }
                            </div>
                            <div class="price" id="price_${productList[i].id}">${productList[i].price}</div>
                        </div>
                    </div>
                    <div class="col right">
                        <div class="quantity">
                            <input type="number"
                                onkeyup="handleOnChangeQuantity(${productList[i].id}, ${productList[i].price})"
                                class="product-quantity"
                                id="product_${productList[i].id}"
                                step="1"
                                value="1"
                            />
                        </div>
                        <div class="remove">
                            <span class="close" onclick="removeItem(${productList[i].id})"><i class="fa fa-times" aria-hidden="true"></i></span>
                        </div>
                    </div>
                </li>`
        }
    }
    document.getElementById('products').innerHTML = html;
}
renderUI();

//Xóa sản phẩm khỏi giỏ hàng
function removeItem(id) {
    for (let i = 0; i < productList.length; i++) {
        if (productList[i].id == id) {
            productList.splice(i, 1);
        }
    }
    renderUI();
}

//Thay đổi số lượng sản phẩm hiện có trong giỏ hàng và tổng tiền theo từng sản phẩm
function handleOnChangeQuantity(id, price) {
    let quantity = document.getElementById('product_' + id).value;
    let total = 0;
    if (quantity !== ' ' && quantity <= 0) {
        document.getElementById('product_' + id).value = 1;
        quantity = 1;
    }
    for (let i = 0; i < productList.length; i++) {
        let quantity = document.getElementById("product_" + productList[i].id).value;
        total += parseInt(quantity);
    }
    // Cập nhật số lượng sản phẩm trong cart
    let countEle = document.querySelector('.count');
    countEle.innerText = `${total} items in the bag`;

    let newPrice = quantity * price;
    document.getElementById('price_' + id).innerHTML = convertMoney(newPrice);
    totalPrice();
}

// Cập nhật tổng tiền
function totalPrice(voucher = null) {
    let sum = 0;
    let sumAfterVAT = 0;
    let discountMoney = 0;
    for (let i = 0; i < productList.length; i++) {
        let quantity = document.getElementById("product_" + productList[i].id).value;
        sum += productList[i].price * quantity;
    }

    if (sum > 1000000) {
        sumAfterVAT = sum + (sum * 0.05);
        document.querySelector(".vat span").innerHTML = convertMoney(sum * 0.05);
    } else {
        sumAfterVAT = sum;
        document.querySelector(".vat span").innerHTML = convertMoney(0);
    }

    if (voucher) {
        if (voucher.type === "percent") {
            discountMoney = (sumAfterVAT * voucher.value) / 100;
            sumAfterVAT = sumAfterVAT - discountMoney;
        } else {
            discountMoney = voucher.value;
            sumAfterVAT = sumAfterVAT - discountMoney;
        }
    }
    document.getElementsByClassName("total")[0].innerHTML = convertMoney(sum);
    vatEl.innerText = convertMoney(sum * 0.05);
    discountEle.innerHTML = convertMoney(discountMoney);
    document.getElementsByClassName("sub-total")[0].innerHTML = convertMoney(sumAfterVAT);
}

function handleVoucher() {
    let code = document.getElementById("promo-code").value;
    let voucher = vouchers.find(voucher => voucher.code === code);
    if (!voucher) {
        document.getElementsByClassName("text-error")[0].innerHTML = "Voucher không hợp lệ";
    } else {
        document.getElementsByClassName("text-error")[0].innerHTML = "";
        totalPrice(voucher);
    }
}