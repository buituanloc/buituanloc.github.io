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

// Format tiền theo định dạng VND
const formatPrice = price => {
    return price.toString().replace(/(\d)(?=(\d{3})+(?!\d))/g, "$1,") + " VND"
}

function renderUI(products = productList) {
    let html = '';
    if (products.length === 0) {
        html = 'Chưa có sản phẩm nào ';
    } else {
        for (let i = 0; i < products.length; i++) {
            html += `<a class="col-md-3" href="detail_product.html?id=${products[i].id}">
            <div class="course-item shadow-sm rounded mb-4">
                <div class="course-item-image">
                    <img src="${products[i].thumbnail}" alt="${products[i].name}"/>
                </div>
                <div class="course-item-info p-3">
                    <h2 class="fs-5 mb-4 text-dark">
                        ${products[i].name}
                    </h2>
                    <div class="d-flex justify-content-between align-items-center fw-light text-black-50">
                        <p class="brand">${products[i].brand}</p>
                        <p class="rating">
                            <span>${products[i].rating}</span>
                            <span class="text-warning"><i class="fa-solid fa-star"></i></span>
                        </p>
                    </div>
                    <p class="price" id="price_${products[i].id}">
                        ${formatPrice(products[i].price)}
                    </p>
                    <div></div>
                </div>
            </div>
        </a>`
        }
    };
    $('.mt-5 .container .product-list').html(html);
};

$(document).ready(function() { //=== window.onload
    renderUI();
});


$('#btn_search').on('click', function() {
    let productSearch = productList;
    let brand = $('#search-brand').val();
    if (brand) {
        productSearch = productSearch.filter(item => item.brand === brand);
        console.log(productSearch);
    }

    let minPrice = $('.min-price').val();
    let maxPrice = $('.max-price').val();
    if (minPrice) {
        productSearch = productSearch.filter(item => item.price >= minPrice);
        console.log(productSearch);
    }
    if (maxPrice) {
        productSearch = productSearch.filter(item => item.price <= maxPrice);
        console.log(productSearch);
    }
    $(document).ready(function() { //=== window.onload
        renderUI();
    });
})