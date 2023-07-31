const productList = [{
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
]

// "10000".replace(/(\d)(?=(\d{3})+(?!\d))/g, "$1,") # => "10,000"
// Format tiền theo định dạng VND
const formatPrice = price => {
    return price.toString().replace(/(\d)(?=(\d{3})+(?!\d))/g, "$1,") + " VND"
}

// Hiển thị ds product
function renderUI() {
    let html = "";
    let url = window.location.href;
    url = new URL(url);
    var id = url.searchParams.get('id');
    let p = productList.find(p => p.id === parseInt(id));
    html += `<a class="col-md-3">
    <div class="course-item shadow-sm rounded mb-4">
    <div class="course-item-image">
        <img src="${p.thumbnail}" alt="${p.name}"/>
    </div>
    <div class="course-item-info p-3">
        <h2 class="fs-5 mb-4 text-dark">
            ${p.name}
        </h2>
        <div class="d-flex justify-content-between align-items-center fw-light text-black-50">
            <p class="type">${p.brand}</p>
            <p class="rating">
                <span>${p.rating}</span>
                <span class="text-warning"><i class="fa-solid fa-star"></i></span>
            </p>
        </div>
        <p class="price text-danger fs-5">
            ${formatPrice(p.price)}
        </p>
        <div><button id="btn-add-cart" onclick="addCart(${p.id})">Thêm vào giỏ hàng</button></div>
        <input type="number" class="product-quantity" id="product_${p.id}" step="1" value="1"/>
    </div>
    </div>
    </a>`
    $('.mt-5 .container .product-list').html(html);
}
renderUI();


function addCart(id) {
    console.log(id);
    let p = productList.find(p => p.id === parseInt(id));
    let arrCart = localStorage.getItem('arrCart');
    console.log(JSON.stringify(arrCart));
    let quantity = document.getElementById('product' + id);
    if (arrCart) {
        arrCart = [{
            id: p.id,
            quantity: 1
        }]
        console.log(JSON.stringify(arrCart));
        localStorage.setItem('arrCart', arrCart)
        let idProduct = arrCart.find(item => item.id === id)
        if (!idProduct) {
            console.log(JSON.stringify(arrCart));
            localStorage.setItem('arrCart', arrCart.push({
                id: p.id,
                quantity: 1
            }))
        } else {
            arrCart.push({
                id: p.id,
                quantity: 1
            })
            console.log(JSON.stringify(arrCart));
            localStorage.setItem('arrCart', arrCart);
        }
    } else {
        console.log(JSON.stringify(arrCart));
        localStorage.setItem('arrCart', {
            id: p.id,
            quantity: 1
        });
    }

}