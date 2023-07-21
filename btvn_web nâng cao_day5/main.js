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

//Danh sách promotion code (Mã giảm giá)
let promotionCode = {
    A: 10,
    B: 20,
    C: 30,
    D: 40,
};

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
    } else {
        for (let i = 0; i < products.length; i++) {
            total += products[i].price;
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
        document.getElementsByClassName('total')[0].innerHTML = '$' + total;
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


//Cập nhật số lượng sản phẩm hiện có trong giỏ hàng và tổng tiền theo từng sản phẩm
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
}

// Cập nhật tổng tiền
// function updateTotalMoney() {
//     // Tính tổng tiền cart
//     let totalMoney = 0;
//     let discountMoney = 0;

//     for (let i = 0; i < products.length; i++) {
//         const p = arr[i];
//         totalMoney += p.count * p.price;
//     }

//     // Có mã giảm giá hay không?
//     // Mã giảm giá có hợp lệ hay không?
//     let data = checkPromotion();

//     if (data) {
//         discountMoney = (totalMoney * data) / 100;
//         discount.classList.remove('hide');
//     } else {
//         discount.classList.add('hide');
//     }

//     // Cập nhật tiền lên trên giao diện
//     subTotalEl.innerText = totalMoney;
//     vatEl.innerText = totalMoney * 0.05;
//     discountEle.innerText = discountMoney;
//     totalEle.innerText = totalMoney * 1.05 - discountMoney;
// }


//Xóa sản phẩm khỏi giỏ hàng
function removeItem(id) {
    for (let i = 0; i < products.length; i++) {
        if (products[i].id == id) {
            products.splice(i, 1);
        }
    }
    renderUI(products);
}