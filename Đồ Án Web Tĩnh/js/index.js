let header_cart = document.querySelector("#header-cart");
header_cart.addEventListener("click", function() {
    let block_minicart = document.querySelector(".block-minicart");
    block_minicart.style.visibility = "visible";
    block_minicart.style.right = "0";
    block_minicart.style.opacity = "1";
});

let close_minicart = document.querySelector(".block-minicart .minicart-close");
close_minicart.addEventListener("click", function() {
    let block_minicart = document.querySelector(".block-minicart");
    block_minicart.style.visibility = "hidden";
    block_minicart.style.right = "-500px";
    block_minicart.style.opacity = "0";
});