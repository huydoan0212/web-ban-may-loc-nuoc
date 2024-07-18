<%@ page import="model.User" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<% User user = (User) session.getAttribute("user");
    String checkLogin = user != null ? "/ProjectLTW_war/account-page" : "login.jsp";
    String isCheckLogin = user != null ? "/ProjectLTW_war/cart" : "login.jsp";

%>
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

    </div>

</div>
<!--Kết thúc phẩn tỉnh thành-->
</body>
</html>
