<%@ page import="model.User" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<% User user = (User) session.getAttribute("user");
    String checkLogin = user != null ? "/ProjectLTW_war/account-page" : "login.jsp";
    String isCheckLogin = user != null ? "/ProjectLTW_war/cart" : "login.jsp";

%>
<%--<% String title = (String) request.getParameter("search"); %>--%>
<html>
<head>
    <title>Title</title>
    <link rel="stylesheet" href="./css/header.css">
    <script src="https://kit.fontawesome.com/3e135170bd.js" crossorigin="anonymous"></script>
</head>
<body>
<div id="main">
    <div id="header">
        <div class="container">
            <div id="header-top">
                <a href="/ProjectLTW_war/trangchu" class="logo">
                    <img src="./img/logo-removebg-preview.png" alt="">
                </a>
                <%if (user != null) {%>
                <%if (user.getRoleId() == 1) {%>
                <a href="pageAdminController"
                   class="tai-khoan-don-hang chung"><span>Trang quản lý</span></a>
                <%}%>
                <%}%>
                <div class="search-bar ">
                    <%--                        <input type="text" placeholder="Bạn muốn tìm gì..." id="input-search" name="title">--%>
                    <%--                        <input type="submit" value="Tìm kiếm" id="input-submit">--%>
                    <input style=" position: relative;" type="text" placeholder="Bạn muốn tìm gì..." id="input-search"
                           name="search">
                    <a style="width: 50px; height: 50px;
    display: block;
    position: absolute;
    left: 300px;
    bottom: 27px;" href="findProductController?search=<%=request.getParameter("search")%>"
                       id="input-submit"><i class="fa-solid fa-magnifying-glass" style="color: #000000;"></i></a>
                </div>
                <script>
                    document.getElementById('input-search').addEventListener('input', function (e) {
                        document.getElementById('input-submit').href = "findProductController?search=" + encodeURIComponent(e.target.value);
                    });
                </script>


                <a href="<%=checkLogin%>"
                   class="tai-khoan-don-hang chung"><span>Tài khoản và đơn hàng</span></a>
                <a href="<%=isCheckLogin%>" class="gio-hang ">
                    <i class="fa-solid fa-cart-shopping" style="color: #ffffff;"></i>
                    <span>Giỏ hàng</span>
                </a>
                <a href="/ProjectLTW_war/contact" class="khuyen-mai chung">Liên hệ</a>

            </div>
            <div id="header-bottom">
                <a href="/ProjectLTW_war/locnuocro" class="headbot-items">Lọc nước RO</a>
                <a href="/ProjectLTW_war/locnuocnonglanh" class="headbot-items">Có nóng lạnh</a>
                <a href="/ProjectLTW_war/locnuocamtudeban" class="headbot-items">Âm tủ, để bàn</a>
                <a href="/ProjectLTW_war/locnuocnanoufmf" class="headbot-items">Lọc nước Nano, UF, MF</a>
                <a href="/ProjectLTW_war/locnuockhongdien" class="headbot-items">Lọc nước không điện</a>
            </div>
        </div>
    </div>
</div>
<%--Phần tỉnh thành--%>
<div class="modal-tinh-thanh js-modal-tinh-thanh">
    <div class="modal-container js-modal-container">
        <div class="header-modal">
            <div class="title-modal">
                <p>Quý khách vui lòng cho biết <span>Địa Chỉ Nhận Hàng </span>để biết chính xác thời gian dao hàng</p>
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
        const timTinh = document.querySelectorAll('.js-tim-tinh');
        const modal = document.querySelector('.js-modal-tinh-thanh');
        const close = document.querySelectorAll('.js-close');
        const modalContainer = document.querySelector('.js-modal-container');

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
