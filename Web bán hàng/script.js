var products = [{
        id: 1,
        name: 'Laptop Asus',
        description: 'Máy tính Asus',
        category: 'Laptop',
        price: 20
    },
    {
        id: 2,
        name: 'Laptop Acer',
        description: 'Máy tính Acer',
        category: 'Laptop',
        price: 19
    },
    {
        id: 3,
        name: 'Macbook',
        description: 'Máy tính Macbook',
        category: 'Laptop',
        price: 21,
    },
    {
        id: 4,
        name: 'Iphone 13 pro max',
        description: 'Điện thoại Iphone 13 pro max',
        category: 'Phone',
        price: 30
    },
    {
        id: 5,
        name: 'Tai nghe apple',
        description: 'Lorem ipsum dolor sit amet',
        category: 'Accessory',
        price: 5
    },
    {
        id: 6,
        name: 'Tai nghe sony',
        description: 'Lorem ipsum dolor sit amet',
        category: 'Accessory',
        price: 6
    },
    {
        id: 7,
        name: 'Macbook',
        description: 'Máy tính Macbook',
        category: 'Laptop',
        price: 21,
    },
    {
        id: 8,
        name: 'Laptop Asus',
        description: 'Máy tính Asus',
        category: 'Laptop',
        price: 20
    },
    {
        id: 9,
        name: 'Laptop Acer',
        description: 'Máy tính Acer',
        category: 'Laptop',
        price: 19
    },
    {
        id: 10,
        name: 'Macbook',
        description: 'Máy tính Macbook',
        category: 'Laptop',
        price: 21,
    },
    {
        id: 11,
        name: 'Laptop Asus',
        description: 'Máy tính Asus',
        category: 'Laptop',
        price: 20
    },
    {
        id: 12,
        name: 'Laptop Acer',
        description: 'Máy tính Acer',
        category: 'Laptop',
        price: 19
    },
    {
        id: 13,
        name: 'Macbook',
        description: 'Máy tính Macbook',
        category: 'Laptop',
        price: 21,
    }
];


//Render danh sách sản phẩm từ 1 data có sẵn
function renderUI(listProducts = products) {
    let html = '';
    if (products.length === 0) {
        html = 'Chưa có sản phẩm nào trong giỏ hàng';
        document.querySelector('.option-container').style.display = 'none';
    } else {
        for (let i = 0; i < listProducts.length; i++) {
            html += `<li class="row">
                <div class="col left">
                    <div class="thumbnail">
                        <a href="#">
                            <img src="https://via.placeholder.com/200x150" alt="" />
                        </a>
                    </div>
                    <div class="detail">
                        <div class="name"><a href="#">${listProducts[i].name}</a></div>
                        <div class="description">
                            ${listProducts[i].description}
                        </div>
                        <div class="price" id="price_${listProducts[i].id}">$${listProducts[i].price}</div>
                        <div class="category">${listProducts[i].category}</div>
                    </div>
                </div>
            </li>`
        }
    };
    $('#products').html(html);
};

// renderUI();
$(document).ready(function() { //=== window.onload
    renderUI();
});

// function handleSearch() {
//     let productSearch = products;
//     let category = document.getElementById("search-category").value;

//     if (category) {
//         //cách 1:Sử dụng filter để lọc ra tất cả các sản phẩm có catagory = value của select
//         productSearch = productSearch.filter(item => item.category === category);
//         console.log(productSearch);

//         //cách 2:Sử dụng vòng lặp for
//         // for (let i = 0; i < products.length; i++) {}
//     }

//     let minPrice = document.getElementsByClassName("min-price")[0].value;
//     let maxPrice = document.getElementsByClassName("max-price")[0].value;

//     // if (minPrice && !maxPrice) {

//     // } else if (maxPrice && !minPrice) {

//     // } else if (minPrice && maxPrice) {

//     // } else {

//     // }

//     if (minPrice) {
//         productSearch = productSearch.filter(item => item.price >= minPrice);
//         console.log(productSearch);
//     }
//     if (maxPrice) {
//         productSearch = productSearch.filter(item => item.price <= maxPrice);
//         console.log(productSearch);
//     }
//     renderUI(productSearch);
// }


$('#btn_search').on('click', function() {
    let productSearch = products;
    let category = $('#search-category').val();

    if (category) {
        //cách 1:Sử dụng filter để lọc ra tất cả các sản phẩm có category = value của select
        productSearch = productSearch.filter(item => item.category === category);
        console.log(productSearch);

        //cách 2:Sử dụng vòng lặp for
        // for (let i = 0; i < products.length; i++) {}
    }

    // let minPrice = document.getElementsByClassName("min-price")[0].value;
    let minPrice = $('.min-price').val();
    // let maxPrice = document.getElementsByClassName("max-price")[0].value;
    let maxPrice = $('.max-price').val();

    // if (minPrice && !maxPrice) {

    // } else if (maxPrice && !minPrice) {

    // } else if (minPrice && maxPrice) {

    // } else {

    // }

    if (minPrice) {
        productSearch = productSearch.filter(item => item.price >= minPrice);
        console.log(productSearch);
    }
    if (maxPrice) {
        productSearch = productSearch.filter(item => item.price <= maxPrice);
        console.log(productSearch);
    }
    // renderUI(productSearch);
    $(document).ready(function() { //=== window.onload
        renderUI(productSearch);
    });
})