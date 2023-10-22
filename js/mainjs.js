const addressbtn = document.querySelector('.tinh')
const addressclose = document.querySelector('#address-close')
// console.log(addressbtn)
addressbtn.addEventListener("click",function(){
    document.querySelector('.address-form').style.display = "flex"
})
addressclose.addEventListener("click",function(){
    document.querySelector('.address-form').style.display = "none"
})
//--------------product------------
const ttsp = document.querySelector('.ttsp')
const tskt = document.querySelector('.tskt')
if(ttsp) {
    ttsp.addEventListener("click", function () {
        document.querySelector(".product-content-thongsokythuat").style.display = "none"
        document.querySelector(".product-content-thongtinsanpham").style.display = "block"

    })
    if (tskt) {
        tskt.addEventListener("click", function () {
            document.querySelector('.product-content-thongsokythuat').style.display = "block"
            document.querySelector('.product-content-thongtinsanpham').style.display = "none"

        })
    }
}

const bigImg = document.querySelector(".product-content-left-big-img img")
const smallImg = document.querySelectorAll(".product-content-left-small-img img")
smallImg.forEach(function (imgItem, X){
    imgItem.addEventListener("click", function (){
        bigImg.src = imgItem.src
    })
})

