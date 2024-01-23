<%@ page import="cart.CartProduct" %>
<%@ page import="cart.Cart" %>
<%@ page import="java.text.NumberFormat" %>
<%@ page import="java.text.FieldPosition" %>
<%@ page import="java.text.ParsePosition" %>
<%@ page import="java.util.*" %>
<%@ page import="model.Voucher" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<% Cart cart = (Cart) session.getAttribute("cart");
    if (cart == null) cart = new Cart();
    Set set = cart.getData().keySet();
    int total = 0;
    for (Object key : set
    ) {
        total += cart.getData().get(key).getProduct().getDiscount_price() * cart.getData().get(key).getQuantity();
    }
    ArrayList<Voucher> vouchers = (ArrayList<Voucher>) session.getAttribute("vouchers");
    Object tempObj = session.getAttribute("percent_decrease");
    double percent_decrease = 0;
    if (tempObj != null) {
        if (tempObj instanceof Double) {
            percent_decrease = (Double) tempObj;
        } else if (tempObj instanceof String) {
            percent_decrease = Double.valueOf((String) tempObj);
        }
    }

    int total_decrease = (int) (total - (total * percent_decrease));
%>
<% Locale locale = new Locale("vi", "VN");
    NumberFormat numberFormat = NumberFormat.getInstance(locale);
%>
<%--<% int products = cart.getData().size(); %>--%>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>Giỏ hàng</title>
    <link rel="stylesheet" href="css/giohang.css">
    <script src="https://kit.fontawesome.com/3e135170bd.js" crossorigin="anonymous"></script>
</head>
<body>
<div id="main">
    <%@include file="header.jsp" %>
    <%if (cart.getData().size() < 1) {%>
    <div id="content-none">
        <div class="container content-mini-trong">
            <img src="img/giohang.jsp-removebg-preview.png" alt="">
            <span>Không có sản phẩm nào trong giỏ hàng</span>
            <a href="trangchu">Về trang chủ</a>
        </div>
    </div>
    <%}%>
    <%if (cart.getData().size() > 0) {%>
    <div id="content" class="appear">
        <div class="section">
            <div class="nav-section">
                <a href="/ProjectLTW_war_exploded/trangchu" class="mua-them">Mua thêm sản phẩm khác</a>
                <span>Giỏ hàng của bạn</span>
            </div>
            <div class="gio-hang">
                <ul class="list-san-pham">
                    <% for
                    (
                            Object
                                    key
                            :
                            set
                    ) {%>
                    <div class="san-pham">
                        <div class="img-sp">
                            <div href="" class="link-sp">
                                <img src=<%=cart.getData().get(key).getProduct().getImg()%> alt="">
                                <a href="remove-card?id=<%=cart.getData().get(key).getProduct().getId()%>"
                                   class="remove">Xóa</a>
                            </div>
                        </div>
                        <div class="data-sp">
                            <div class="data-sp-title">
                                <a href=""
                                   class="data-sp-title-label"><%=cart
                                        .
                                        getData
                                                (
                                                )
                                                .
                                        get
                                                (
                                                        key
                                                )
                                                .
                                        getProduct
                                                (
                                                )
                                                .
                                        getTitle
                                                (
                                                )%>
                                </a>

                            </div>
                            <span class="data-sp-price"><%=numberFormat.format(cart.getData().get(key).getProduct().getDiscount_price())%>₫
                                    <strike class="line-gach"><%=numberFormat.format(cart.getData().get(key).getProduct().getPrice())%>₫</strike></span>
                            <ul class="data-sp-discount">
                                <li>- Miễn phí công lắp đặt</li>
                                <li>- Giảm thêm 10% khi mua cùng sản phẩm có giá cao hơn (trừ Xe đạp, sản phẩm Apple,
                                    sản phẩm giá sốc)
                                </li>
                                <li>- Cơ hội trúng TIVI LG 65 inch.</li>
                                <li>- Tặng coupon Miễn phí lõi lọc thô số 1 và 3 coupon Giảm 20% khi mua lõi lần sau.
                                </li>
                            </ul>
                            <div class="data-sp-quantity-color">

                                <div class="data-sp-quantity">
                                    <a href="decrease?id=<%=cart.getData().get(key).getProduct().getId()%>"
                                       class="except">-</a>
                                    <div class="quantity-sp js-quantity-sp"><%=cart
                                            .
                                            getData
                                                    (
                                                    )
                                                    .
                                            get
                                                    (
                                                            key
                                                    )
                                                    .
                                            getQuantity
                                                    (
                                                    )%>
                                    </div>
                                    <a href="increase?id=<%=cart.getData().get(key).getProduct().getId()%>"
                                       class="plus">+</a>
                                </div>
                            </div>
                        </div>
                    </div>
                    <%}%>
                </ul>
                <div class="total-san-pham">
                    <span class="quanlity-san-pham"><span class="total-label">Tạm tính </span>(<span
                            id="quantity-products"><%=cart.getTotal()%></span> sản phẩm):</span>
                    <span class="total-money"><%=numberFormat.format(total)%>₫</span>
                </div>
                <div class="voucher">
                    <p class="label-voucher">Mã giảm giá/ Phiếu mua hàng</p>
                    <div class="nhap-voucher">
                        <%int id = 0;%>
                        <select id="ma-giam-gia">
                            <option selected disabled>Chọn mã giảm giá</option>
                            <%for (Voucher v : vouchers) {%>
                            <option class="voucher-option" value="<%=v.getId()%>"><%=v.getVoucher_name()%></option>
                            <%}%>
                        </select>

                        <a href="#" id="ap-dung" class="ap-dung">Áp dụng</a>
                        <script>
                            document.getElementById('ma-giam-gia').addEventListener('change', function () {
                                var id = this.value;
                                document.getElementById('ap-dung').href = "use-voucher?voucher_id=" + id;
                                document.getElementById('ma-giam-gia').selected();
                            });
                        </script>
                    </div>
                </div>
                <div class="total-money-big">
                    <div class="label-total-big">
                        <span class="text-total-big">Tổng tiền:</span>
                        <span class="money-big"><%=numberFormat.format(total_decrease)%>₫</span>
                    </div>
                    <div class="policy">
                        <input type="checkbox" id="checkbox-policy">
                        <span class="text-policy">Tôi đồng ý với Chính sách xử lý dữ liệu cá nhân của Healthy Water</span>
                    </div>
                    <div class="btn-order-frame">
                        <a style="text-decoration: none" href="order-controller?total_decrease=<%=total_decrease%>" class="btn-order">Đặt hàng</a>
                    </div>
                    <div class="note"><span>Bạn có thể chọn hình thức thanh toán sau khi đặt hàng</span></div>
                </div>
            </div>
        </div>
    </div>
    <%}%>
    <%@include file="footer.jsp" %>
</div>
<!--Phần tỉnh thành-->
<div class="modal-tinh-thanh js-modal-tinh-thanh">
    <div class="modal-container js-modal-container">
        <div class="header-modal">
            <div class="title-modal">
                <p>Quý khách vui lòng cho biết <span>Địa Chỉ Nhận Hàng </span>để biết chính xác thời gian giao hàng</p>
                <a class="js-close"><i class="fa-solid fa-x fa-2xs" style="color: #ffffff;"></i></i>Đóng</a>
            </div>
            <form action="">
                <input type="text" placeholder="Tìm nhanh tỉnh thành, quận huyện, phường xã" class="tim-khu-vuc">
                <div class="icon-mini">
                    <i class="fa-solid fa-magnifying-glass fa-xl"></i>
                </div>
            </form>
        </div>
        <div class="content-big">
            <div class="content-modal">
                <p class="title">Hoặc chọn tỉnh, thành phố</p>
                <ul class="list-tinh-thanh">
                    <li><a href="">Hồ Chí Minh</a></li>
                    <li><a href="">Hà Nội</a></li>
                    <li><a href="">Đà Nẵng</a></li>
                    <li><a href="">An Giang</a></li>
                    <li><a href="">Bà Rịa - Vũng Tàu</a></li>
                    <li><a href="">Bắc Giang</a></li>
                    <li><a href="">Bắc Kạn</a></li>
                    <li><a href="">Bạc Liêu</a></li>
                    <li><a href="">Bắc Ninh</a></li>
                    <li><a href="">Bến Tre</a></li>
                    <li><a href="">Bình Định</a></li>
                    <li><a href="">Bình Dương</a></li>
                    <li><a href="">Bình Phước</a></li>
                    <li><a href="">Bình Thuận</a></li>
                    <li><a href="">Cà Mau</a></li>
                    <li><a href="">Cần Thơ</a></li>
                    <li><a href="">Cao Bằng</a></li>
                    <li><a href="">Đắk Lắk</a></li>
                    <li><a href="">Đắk Nông</a></li>
                    <li><a href="">Điện Biên</a></li>
                    <li><a href="">Đồng Nai</a></li>
                    <li><a href="">Đồng Tháp</a></li>
                    <li><a href="">Gia Lai</a></li>
                    <li><a href="">Hà Giang</a></li>
                    <li><a href="">Hà Nam</a></li>
                    <li><a href="">Hà Tĩnh</a></li>
                    <li><a href="">Hải Dương</a></li>
                    <li><a href="">Hải Phòng</a></li>
                    <li><a href="">Hậu Giang</a></li>
                    <li><a href="">Hòa Bình</a></li>
                    <li><a href="">Hưng Yên</a></li>
                    <li><a href="">Khánh Hòa</a></li>
                    <li><a href="">Kiên Giang</a></li>
                    <li><a href="">Kon Tum</a></li>
                    <li><a href="">Lai Châu</a></li>
                    <li><a href="">Lâm Đồng</a></li>
                    <li><a href="">Lạng Sơn</a></li>
                    <li><a href="">Lào Cai</a></li>
                    <li><a href="">Long An</a></li>
                    <li><a href="">Nam Định</a></li>
                    <li><a href="">Nghệ An</a></li>
                    <li><a href="">Ninh Bình</a></li>
                    <li><a href="">Ninh Thuận</a></li>
                    <li><a href="">Phú Thọ</a></li>
                    <li><a href="">Phú Yên</a></li>
                    <li><a href="">Quảng Bình</a></li>
                    <li><a href="">Quảng Nam</a></li>
                    <li><a href="">Quảng Ngãi</a></li>
                    <li><a href="">Quảng Ninh</a></li>
                    <li><a href="">Quảng Trị</a></li>
                    <li><a href="">Sóc Trăng</a></li>
                    <li><a href="">Sơn La</a></li>
                    <li><a href="">Tây Ninh</a></li>
                    <li><a href="">Thái Bình</a></li>
                    <li><a href="">Thái Nguyên</a></li>
                    <li><a href="">Thanh Hóa</a></li>
                    <li><a href="">Thừa Thiên Huế</a></li>
                    <li><a href="">Tiền Giang</a></li>
                    <li><a href="">Trà Vinh</a></li>
                    <li><a href="">Tuyên Quang</a></li>
                    <li><a href="">Vĩnh Long</a></li>
                    <li><a href="">Vĩnh Phúc</a></li>
                    <li><a href="">Yên Bái</a></li>
                </ul>
            </div>
        </div>

    </div>
    <script>
        window.onload;

        const timTinh = document.querySelectorAll('.js-tim-tinh');
        const modal = document.querySelector('.js-modal-tinh-thanh');
        const close = document.querySelectorAll('.js-close');
        const modalContainer = document.querySelector('.js-modal-container');
        const content = document.getElementById('content');
        const products = Number(document.getElementById('quantity-products').value);

        if (products > 0) {
            content.addClass('appear');
        } else {
            content.removeClass('appear');
        }


        function showTinhThanh() {
            modal.classList.add('open');
        }

        function hideTinhThanh() {
            modal.classList.remove('open');
        }

        for (const timTinhElement of timTinh) {
            timTinhElement.addEventListener('click', showTinhThanh);

        }
        for (const closeElement of close) {
            closeElement.addEventListener('click', hideTinhThanh);

        }

        modal.addEventListener('click', hideTinhThanh);
        modalContainer.addEventListener('click', function (event) {
            event.stopPropagation();
        });
    </script>
</div>
<!--Kết thúc phẩn tỉnh thành-->
</body>
</html>