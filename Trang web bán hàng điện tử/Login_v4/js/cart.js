// Convert number to money VND
function convertMoney(num) {
    return num.toLocaleString('it-IT', { style: 'currency', currency: 'VND' });
}

// Danh sách sản phẩm
let productList = [{
        id: 1,
        name: "samsung galaxy z fold 5",
        price: 40990000,
        brand: "Samsung",
        thumbnail: "https://images.fpt.shop/unsafe/fit-in/214x214/filters:quality(90):fill(white)/fptshop.com.vn/Uploads/Originals/2023/7/26/638259900472658213_samsung-galaxy-fold5-xanh-dd.jpg",
        rating: 4
    },
    {
        id: 2,
        name: "Xiaomi 13 Lite 8GB-128GB",
        price: 8790000,
        brand: "Xiaomi",
        thumbnail: "https://images.fpt.shop/unsafe/fit-in/960x640/filters:quality(90):fill(white):upscale()/fptshop.com.vn/Uploads/Originals/2023/3/17/638146663769907963_DSC05437.JPG",
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
        name: "OPPO Reno10 5G",
        price: 10990000,
        brand: "Oppo",
        thumbnail: "https://fptshop.com.vn/landing-oppo-reno10-5g/images/reno-gray.png?v=15280721",
        rating: 3
    },
    {
        id: 5,
        name: "Vivo V25 Pro 5G 128GB",
        price: 9990000,
        brand: "Vivo",
        thumbnail: "https://images.fpt.shop/unsafe/fit-in/960x640/filters:quality(90):fill(white):upscale()/fptshop.com.vn/Uploads/Originals/2022/11/15/638041031533178374_HASP-Vivo%20V25%20Pro-5.JPG",
        rating: 5
    }
];


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
                            <div class="price" id="price_${productList[i].id}">${convertMoney(productList[i].price)}</div>
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