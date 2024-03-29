const productList = [{
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
        name: "Sản phẩm 3",
        price: 9000000,
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

// "10000".replace(/(\d)(?=(\d{3})+(?!\d))/g, "$1,") # => "10,000"
// Format tiền theo định dạng VND
const formatPrice = price => {
    return price.toString().replace(/(\d)(?=(\d{3})+(?!\d))/g, "$1,") + " VND"
}

// Hiển thị ds product
const productEl = document.querySelector(".mt-5 .container .product-list");
let html = "";
productList.forEach(p => {
    html += `<div class="col-md-3">
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
        </div>
    </div>
</div>`
})
productEl.innerHTML = html;