const productList = [{
        id: 1,
        name: "Áo phông nam có hình in dáng suông",
        option_color_1: "https://media.canifa.com/attribute/swatch/images/sg067.png",
        option_color_2: "https://media.canifa.com/attribute/swatch/images/sg179.png",
        option_color_3: "https://media.canifa.com/attribute/swatch/images/sk010.png",
        option_color_4: "https://media.canifa.com/attribute/swatch/images/sw001.png",
        old_price: 299000,
        normal_price: 229000,
        price_percent: -23,
        thumbnail: "https://canifa.com/img/486/733/resize/8/t/8ts23s008-sk010-2-thumb-m.webp",
    },
    {
        id: 2,
        name: "Áo phông nam cotton cổ tròn cộc tay có hình in dáng suông",
        option_color_1: "https://media.canifa.com/attribute/swatch/images/sb148.png",
        option_color_2: "https://media.canifa.com/attribute/swatch/images/sb148.png",
        old_price: 349000,
        normal_price: 249000,
        price_percent: -29,
        thumbnail: "https://canifa.com/img/486/733/resize/8/t/8ts23s015-sw001-2-thumb.webp",
    }
];

const formatPrice = price => {
    return price.toString().replace(/(\d)(?=(\d{3})+(?!\d))/g, "$1,") + " VND"
}

function renderUI(products = productList) {
    let html = '';
    if (products.length === 0) {
        html = 'Chưa có sản phẩm nào ';
    } else {
        for (let i = 0; i < products.length; i++) {
            html += `<div class="product-item products__product-card">
        <div class="product-item-info">
            <div class="product-item-photo">
                <a href="detail-product.html?id=${products[i].id}" class="product-image-container">
                    <div>
                        <img src="${products[i].thumbnail}" alt="${products[i].name}" width="100" height="100" class="product-image-photo">
                    </div>
                </a>
                <div>
                    <div class="product-item-button-tocart">
                        <span>Thêm nhanh vào giỏ</span>
                    </div>
                </div>
            </div>
            <div class="product-item-details ">
                <div class="swatch-attribute-options ">
                    <div class="swatch-option color selected" style="background-image: url(&quot;${products[i].option_color_1}&quot;);"></div>
                    <div class="swatch-option color" style="background-image: url(&quot;${products[i].option_color_2}&quot;);"></div>
                </div>
                <h3 class="product-item-name">
                    <a href="detail-product.html?id=${products[i].id}">${products[i].name}</a>
                </h3>
                <div class="price-box">
                    <span class="normal-price">
                        <span class="price">${formatPrice(products[i].normal_price)} ₫</span>
                    </span>
                    <span class="price-percent">${products[i].price_percent}%</span>
                    <span class="old-price">
                        <span class="price">${formatPrice(products[i].old_price)}</span>
                    </span>
                </div>
                <div class="product-item-label-text">Độc quyền Online</div>
            </div>
        </div>
    </div>`
        }
    };
    $('#app .wrapper .site-main .container .columns .col-sm-10 .products-grid .product-items').html(html);
};
$(document).ready(function() {
    renderUI();
});