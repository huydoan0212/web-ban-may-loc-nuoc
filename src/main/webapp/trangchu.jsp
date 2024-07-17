<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page import="java.util.List" %>
<%@ page import="model.Product" %>
<%@ page import="java.util.ArrayList" %>
<%@ page import="java.util.Locale" %>
<%@ page import="java.text.NumberFormat" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<% List<Product> products = (List<Product>) request.getAttribute("data");
    if (products == null) products = new ArrayList<>();
    List<Product> locNuocRO = (List<Product>) request.getAttribute("locNuocRO");
    if (products == null) locNuocRO = new ArrayList<>();
    List<Product> coNongLanh = (List<Product>) request.getAttribute("data");
    if (products == null) coNongLanh = new ArrayList<>();
    List<Product> amTuDeBan = (List<Product>) request.getAttribute("data");
    if (products == null) amTuDeBan = new ArrayList<>();
    List<Product> nanoUfMf = (List<Product>) request.getAttribute("data");
    if (products == null) nanoUfMf = new ArrayList<>();
    List<Product> khongdien = (List<Product>) request.getAttribute("data");
    if (products == null) khongdien = new ArrayList<>();

%>
<% Locale locale = new Locale("vi", "VN");
    NumberFormat numberFormat = NumberFormat.getInstance(locale);
    numberFormat.setMaximumFractionDigits(0);
%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>Trang chủ</title>
    <link rel="stylesheet" href="./css/trangchu.css">
    <script src="https://kit.fontawesome.com/3e135170bd.js" crossorigin="anonymous"></script>
</head>
<body>
<%@include file="header.jsp" %>
<div id="main">
    <div id="poster">
        <img src="img/may-loc-nuoc-nong-lanh-karofi-kad-d50-nuoc-nong-lanh.jpg">
    </div>
    <div id="nav">
        <!--        <div id="nav-bar">-->
        <!--            <a href="" class="nav-item"><img src="../img/deal.png" alt="">-->
        <!--                <span>Deal Sốc</span></a>-->
        <!--            <a href="" class="nav-item"><img src="../img/RO.png" alt="">-->
        <!--                <span>Lọc nước RO</span></a>-->
        <!--            <a href="" class="nav-item"><img src="../img/nong-lanh.png" alt="">-->
        <!--                <span>Có nóng lạnh</span></a>-->
        <!--            <a href="" class="nav-item"><img src="../img/am-tu.png" alt="">-->
        <!--                <span>Âm tủ, để bàn</span></a>-->
        <!--            <a href="" class="nav-item"><img src="../img/nano-uf-mf.png" alt="">-->
        <!--                <span>Lọc nước Nano, UF, MF</span></a>-->
        <!--            <a href="" class="nav-item"><img src="../img/icon-loc-nuoc-khong-dien.png" alt="">-->
        <!--                <span>Lọc nước không điện</span></a>-->
        <!--        </div>-->
        <div class="nav-thuong-hieu">
            <a href="" class="nav-thuong-hieu-items"><img src="img/Karofi-200x80-1.png" alt=""></a>
            <a href="" class="nav-thuong-hieu-items"><img src="img/Kangaroo3385-b_6.png" alt=""></a>
            <a href="" class="nav-thuong-hieu-items"><img src="img/Sunhouse3385-b_5.png" alt=""></a>
            <a href="" class="nav-thuong-hieu-items"><img src="img/mutosi-143x80-1.png" alt=""></a>
            <a href="" class="nav-thuong-hieu-items"><img src="img/HOA-PHAT-chuan-189x80-1.png" alt=""></a>
            <a href="" class="nav-thuong-hieu-items"><img src="img/Sanaky-200x80-1.png" alt=""></a>
            <a href="" class="nav-thuong-hieu-items"><img src="img/AOSMITH-min-151x80-1.png" alt=""></a>
            <a href="" class="nav-thuong-hieu-items"><img src="img/Korihome-191x80-11.png" alt=""></a>
            <a href="" class="nav-thuong-hieu-items"><img src="img/robot-táchnền-200x80-1.png" alt=""></a>
            <a href="" class="nav-thuong-hieu-items"><img src="img/toshiba-198x80-7.png" alt=""></a>
        </div>
    </div>
    <div id="content">
        <div class="container">
            <div id="deal-soc-content">
                <a href="" class="poster-link"><img src="img/desk-10--1--1200x120.png" alt=""></a>
                <div class="deal-soc">
                    <%for (Product p : products) {%>
                    <div  class="deal-soc-items">
                        <a href="trangsanpham?id=<%=p.getId()%>" class="deal-items">
                            <div class="item-label">
                                <span>Trả góp 0%</span>
                            </div>
                            <div class="item-img">
                                <img src="<%=p.getImg()%>"
                                     alt="">
                            </div>
                            <p class="label-gia-re">
                                <img src="img/50x50-100x101-3.webp" alt="">
                                <span>GIÁ RẺ QUÁ</span>
                            </p>
                            <h3><%=p.getTitle()%>
                            </h3>
                            <div class="item-compare">
                                <span>Tủ đứng</span>
                                <span>Lắp đặt miễn phí</span>
                            </div>
                            <p class="item-online-gia-re">
                                <i class="fa-solid fa-coins" style="color: #db2663;"></i>
                                Online giá rẻ quá
                            </p>
                            <div class="gia-sale">
                                <p class="price-old"><%=numberFormat.format(p.getPrice())%>₫</p>
                                <span class="percent">-49%</span>
                            </div>
                            <strong class="price-sale"><%=numberFormat.format(p.getDiscount_price())%>₫</strong>
                            <div class="item-rating">
                                <p>
                                    <i class="fa-solid fa-star" style="color: #ea744d;"></i>
                                    <i class="fa-solid fa-star" style="color: #ea744d;"></i>
                                    <i class="fa-solid fa-star" style="color: #ea744d;"></i>
                                    <i class="fa-solid fa-star" style="color: #ea744d;"></i>
                                    <i class="fa-solid fa-star" style="color: #ededed;"></i>
                                </p>
                                <p class="item-rating-total">9</p>
                                <a href="add-card?id=<%=p.getId()%>&page=1" class="item-ss"><i class="fa-solid fa-cart-shopping" style="color: black;"></i>
                                    Thêm vào giỏ hàng </a>
                            </div>
                        </a>
                    </div>
                    <%}%>
                </div>
            </div>
            <div id="poster-mini">
                <div class="container">
                    <a href=""><img src="img/800-200-800x200-19.png" alt=""></a>
                    <a href=""><img src="img/800x200-800x200-53.png" alt=""></a>
                </div>
            </div>
            <div class="may-loc-content">
                <a href="" class="poster-link-bottom"><img src="img/ro-desk-1200x260-2.png" alt=""></a>
                <div class="thuong-hieu">
                    <a href="" class="noi-bat">Nổi bật</a>
                    <a href=""><img src="img/Karofi-200x80-1.png"></a>
                    <a href=""><img src="img/Kangaroo3385-b_6.png"></a>
                    <a href=""><img src="img/Sunhouse3385-b_5.png"></a>
                    <a href=""><img src="img/AOSMITH-min-151x80-1.png"></a>
                </div>
                <div class="content-may-loc">
                    <%
                        for (Product p : locNuocRO

                        )
                        {

                        %>
                    <div class="content-may-loc-mini">
                        <a href="trangsanpham?id=<%=p.getId()%>" class="deal-items">
                            <div class="item-label">
                                <span>Trả góp 0%</span>
                            </div>
                            <div class="item-img">
                                <img src="<%=p.getImg()%>"
                                     alt="">
                            </div>
                            <p class="label-gia-re">
                                <img src="img/50x50-100x101-3.webp" alt="">
                                <span>GIÁ RẺ QUÁ</span>
                            </p>
                            <h3><%=p.getTitle()%></h3>
                            <div class="item-compare">
                                <span>Tủ đứng</span>
                                <span>Lắp đặt miễn phí</span>
                            </div>
                            <p class="item-online-gia-re">
                                <i class="fa-solid fa-coins" style="color: #db2663;"></i>
                                Online giá rẻ quá
                            </p>
                            <div class="gia-sale">
                                <p class="price-old"><%=numberFormat.format(p.getPrice())%>₫</p>
                                <span class="percent">-<%=(numberFormat.format((p.getPrice() - p.getDiscount_price())/p.getDiscount_price() * 100))%>%</span>
                            </div>
                            <strong class="price-sale"><%=numberFormat.format(p.getDiscount_price())%>₫</strong>
                            <div class="item-rating">
                                <p>
                                    <i class="fa-solid fa-star" style="color: #ea744d;"></i>
                                    <i class="fa-solid fa-star" style="color: #ea744d;"></i>
                                    <i class="fa-solid fa-star" style="color: #ea744d;"></i>
                                    <i class="fa-solid fa-star" style="color: #ea744d;"></i>
                                    <i class="fa-solid fa-star" style="color: #ededed;"></i>
                                </p>
                                <p class="item-rating-total">40</p>
                                <a href="add-card?id=<%=p.getId()%>&page=1" class="item-ss"><i class="fa-solid fa-cart-shopping" style="color: black;"></i>
                                    Thêm vào giỏ hàng </a>
                            </div>
                        </a>
                    </div>
                    <%}%>
                </div>
                <div class="xem-tat-ca">
                    <a href="/ProjectLTW_war/locnuocro" class="xem-tat-ca-link">Xem tất Lọc nước RO <i class="fa-solid fa-caret-right"
                                                                              style="color: #000000;"></i></a>
                </div>
            </div>
            <div class="may-loc-content">
                <a href="" class="poster-link-bottom"><img src="img/ro-desk-1200x260-2.png" alt=""></a>
                <div class="thuong-hieu">
                    <a href="" class="noi-bat">Nổi bật</a>
                    <a href=""><img src="img/Karofi-200x80-1.png"></a>
                    <a href=""><img src="img/Kangaroo3385-b_6.png"></a>
                    <a href=""><img src="img/Sunhouse3385-b_5.png"></a>
                    <a href=""><img src="img/AOSMITH-min-151x80-1.png"></a>
                </div>
                <div class="content-may-loc">
                    <%
                        for (Product p :coNongLanh

                        )
                        {

                    %>
                    <div class="content-may-loc-mini">
                        <a href="trangsanpham?id=<%=p.getId()%>" class="deal-items">
                            <div class="item-label">
                                <span>Trả góp 0%</span>
                            </div>
                            <div class="item-img">
                                <img src="<%=p.getImg()%>"
                                     alt="">
                            </div>
                            <p class="label-gia-re">
                                <img src="img/50x50-100x101-3.webp" alt="">
                                <span>GIÁ RẺ QUÁ</span>
                            </p>
                            <h3><%=p.getTitle()%></h3>
                            <div class="item-compare">
                                <span>Tủ đứng</span>
                                <span>Lắp đặt miễn phí</span>
                            </div>
                            <p class="item-online-gia-re">
                                <i class="fa-solid fa-coins" style="color: #db2663;"></i>
                                Online giá rẻ quá
                            </p>
                            <div class="gia-sale">
                                <p class="price-old"><%=numberFormat.format(p.getPrice())%>₫</p>
                                <span class="percent">-<%=(numberFormat.format((p.getPrice() - p.getDiscount_price())/p.getDiscount_price() * 100))%>%</span>
                            </div>
                            <strong class="price-sale"><%=numberFormat.format(p.getDiscount_price())%>₫</strong>
                            <div class="item-rating">
                                <p>
                                    <i class="fa-solid fa-star" style="color: #ea744d;"></i>
                                    <i class="fa-solid fa-star" style="color: #ea744d;"></i>
                                    <i class="fa-solid fa-star" style="color: #ea744d;"></i>
                                    <i class="fa-solid fa-star" style="color: #ea744d;"></i>
                                    <i class="fa-solid fa-star" style="color: #ededed;"></i>
                                </p>
                                <p class="item-rating-total">40</p>
                                <a href="add-card?id=<%=p.getId()%>&page=1" class="item-ss"><i class="fa-solid fa-cart-shopping" style="color: black;"></i>
                                    Thêm vào giỏ hàng </a>
                            </div>
                        </a>
                    </div>
                    <%}%>
                </div>
                <div class="xem-tat-ca">
                    <a href="/ProjectLTW_war/locnuocnonglanh" class="xem-tat-ca-link">Xem tất Lọc nước có nóng lạnh <i class="fa-solid fa-caret-right"
                                                                              style="color: #000000;"></i></a>
                </div>
            </div>
            <div class="may-loc-content">
                <a href="" class="poster-link-bottom"><img src="img/ro-desk-1200x260-2.png" alt=""></a>
                <div class="thuong-hieu">
                    <a href="" class="noi-bat">Nổi bật</a>
                    <a href=""><img src="img/Karofi-200x80-1.png"></a>
                    <a href=""><img src="img/Kangaroo3385-b_6.png"></a>
                    <a href=""><img src="img/Sunhouse3385-b_5.png"></a>
                    <a href=""><img src="img/AOSMITH-min-151x80-1.png"></a>
                </div>
                <div class="content-may-loc">
                    <%
                        for (Product p : amTuDeBan

                        )
                        {

                    %>
                    <div class="content-may-loc-mini">
                        <a href="trangsanpham?id=<%=p.getId()%>" class="deal-items">
                            <div class="item-label">
                                <span>Trả góp 0%</span>
                            </div>
                            <div class="item-img">
                                <img src="<%=p.getImg()%>"
                                     alt="">
                            </div>
                            <p class="label-gia-re">
                                <img src="img/50x50-100x101-3.webp" alt="">
                                <span>GIÁ RẺ QUÁ</span>
                            </p>
                            <h3><%=p.getTitle()%></h3>
                            <div class="item-compare">
                                <span>Tủ đứng</span>
                                <span>Lắp đặt miễn phí</span>
                            </div>
                            <p class="item-online-gia-re">
                                <i class="fa-solid fa-coins" style="color: #db2663;"></i>
                                Online giá rẻ quá
                            </p>
                            <div class="gia-sale">
                                <p class="price-old"><%=numberFormat.format(p.getPrice())%>₫</p>
                                <span class="percent">-<%=(numberFormat.format((p.getPrice() - p.getDiscount_price())/p.getDiscount_price() * 100))%>%</span>
                            </div>
                            <strong class="price-sale"><%=numberFormat.format(p.getDiscount_price())%>₫</strong>
                            <div class="item-rating">
                                <p>
                                    <i class="fa-solid fa-star" style="color: #ea744d;"></i>
                                    <i class="fa-solid fa-star" style="color: #ea744d;"></i>
                                    <i class="fa-solid fa-star" style="color: #ea744d;"></i>
                                    <i class="fa-solid fa-star" style="color: #ea744d;"></i>
                                    <i class="fa-solid fa-star" style="color: #ededed;"></i>
                                </p>
                                <p class="item-rating-total">40</p>
                                <a href="add-card?id=<%=p.getId()%>&page=1" class="item-ss"><i class="fa-solid fa-cart-shopping" style="color: black;"></i>
                                    Thêm vào giỏ hàng </a>
                            </div>
                        </a>
                    </div>
                    <%}%>
                </div>
                <div class="xem-tat-ca">
                    <a href="/ProjectLTW_war/locnuocamtudeban" class="xem-tat-ca-link">Xem tất Lọc nước âm tủ để bàn <i class="fa-solid fa-caret-right"
                                                                              style="color: #000000;"></i></a>
                </div>
            </div>
            <div class="may-loc-content">
                <a href="" class="poster-link-bottom"><img src="img/ro-desk-1200x260-2.png" alt=""></a>
                <div class="thuong-hieu">
                    <a href="" class="noi-bat">Nổi bật</a>
                    <a href=""><img src="img/Karofi-200x80-1.png"></a>
                    <a href=""><img src="img/Kangaroo3385-b_6.png"></a>
                    <a href=""><img src="img/Sunhouse3385-b_5.png"></a>
                    <a href=""><img src="img/AOSMITH-min-151x80-1.png"></a>
                </div>
                <div class="content-may-loc">
                    <%
                        for (Product p : nanoUfMf

                        )
                        {

                    %>
                    <div class="content-may-loc-mini">
                        <a href="trangsanpham?id=<%=p.getId()%>" class="deal-items">
                            <div class="item-label">
                                <span>Trả góp 0%</span>
                            </div>
                            <div class="item-img">
                                <img src="<%=p.getImg()%>"
                                     alt="">
                            </div>
                            <p class="label-gia-re">
                                <img src="img/50x50-100x101-3.webp" alt="">
                                <span>GIÁ RẺ QUÁ</span>
                            </p>
                            <h3><%=p.getTitle()%></h3>
                            <div class="item-compare">
                                <span>Tủ đứng</span>
                                <span>Lắp đặt miễn phí</span>
                            </div>
                            <p class="item-online-gia-re">
                                <i class="fa-solid fa-coins" style="color: #db2663;"></i>
                                Online giá rẻ quá
                            </p>
                            <div class="gia-sale">
                                <p class="price-old"><%=numberFormat.format(p.getPrice())%>₫</p>
                                <span class="percent">-<%=(numberFormat.format((p.getPrice() - p.getDiscount_price())/p.getDiscount_price() * 100))%>%</span>
                            </div>
                            <strong class="price-sale"><%=numberFormat.format(p.getDiscount_price())%>₫</strong>
                            <div class="item-rating">
                                <p>
                                    <i class="fa-solid fa-star" style="color: #ea744d;"></i>
                                    <i class="fa-solid fa-star" style="color: #ea744d;"></i>
                                    <i class="fa-solid fa-star" style="color: #ea744d;"></i>
                                    <i class="fa-solid fa-star" style="color: #ea744d;"></i>
                                    <i class="fa-solid fa-star" style="color: #ededed;"></i>
                                </p>
                                <p class="item-rating-total">40</p>
                                <a href="add-card?id=<%=p.getId()%>&page=1" class="item-ss"><i class="fa-solid fa-cart-shopping" style="color: black;"></i>
                                    Thêm vào giỏ hàng </a>
                            </div>
                        </a>
                    </div>
                    <%}%>
                </div>
                <div class="xem-tat-ca">
                    <a href="/ProjectLTW_war/locnuocnanoufmf" class="xem-tat-ca-link">Xem tất Lọc nước Nano, UF, MF<i class="fa-solid fa-caret-right"
                                                                              style="color: #000000;"></i></a>
                </div>
            </div>
            <div class="may-loc-content">
                <a href="" class="poster-link-bottom"><img src="img/ro-desk-1200x260-2.png" alt=""></a>
                <div class="thuong-hieu">
                    <a href="" class="noi-bat">Nổi bật</a>
                    <a href=""><img src="img/Karofi-200x80-1.png"></a>
                    <a href=""><img src="img/Kangaroo3385-b_6.png"></a>
                    <a href=""><img src="img/Sunhouse3385-b_5.png"></a>
                    <a href=""><img src="img/AOSMITH-min-151x80-1.png"></a>
                </div>
                <div class="content-may-loc">
                    <%
                        for (Product p : khongdien

                        )
                        {

                    %>
                    <div class="content-may-loc-mini">
                        <a href="trangsanpham?id=<%=p.getId()%>" class="deal-items">
                            <div class="item-label">
                                <span>Trả góp 0%</span>
                            </div>
                            <div class="item-img">
                                <img src="<%=p.getImg()%>"
                                     alt="">
                            </div>
                            <p class="label-gia-re">
                                <img src="img/50x50-100x101-3.webp" alt="">
                                <span>GIÁ RẺ QUÁ</span>
                            </p>
                            <h3><%=p.getTitle()%></h3>
                            <div class="item-compare">
                                <span>Tủ đứng</span>
                                <span>Lắp đặt miễn phí</span>
                            </div>
                            <p class="item-online-gia-re">
                                <i class="fa-solid fa-coins" style="color: #db2663;"></i>
                                Online giá rẻ quá
                            </p>
                            <div class="gia-sale">
                                <p class="price-old"><%=numberFormat.format(p.getPrice())%>₫</p>
                                <span class="percent">-<%=(numberFormat.format((p.getPrice() - p.getDiscount_price())/p.getDiscount_price() * 100))%>%</span>
                            </div>
                            <strong class="price-sale"><%=numberFormat.format(p.getDiscount_price())%>₫</strong>
                            <div class="item-rating">
                                <p>
                                    <i class="fa-solid fa-star" style="color: #ea744d;"></i>
                                    <i class="fa-solid fa-star" style="color: #ea744d;"></i>
                                    <i class="fa-solid fa-star" style="color: #ea744d;"></i>
                                    <i class="fa-solid fa-star" style="color: #ea744d;"></i>
                                    <i class="fa-solid fa-star" style="color: #ededed;"></i>
                                </p>
                                <p class="item-rating-total">40</p>
                                <a href="add-card?id=<%=p.getId()%>&page=1" class="item-ss"><i class="fa-solid fa-cart-shopping" style="color: black;"></i>
                                    Thêm vào giỏ hàng </a>
                            </div>
                        </a>
                    </div>
                    <%}%>
                </div>
                <div class="xem-tat-ca">
                    <a href="/ProjectLTW_war/locnuockhongdien" class="xem-tat-ca-link">Xem tất Lọc nước không điện <i class="fa-solid fa-caret-right"
                                                                              style="color: #000000;"></i></a>
                </div>
            </div>
        </div>
    </div>
</div>
<%@include file="footer.jsp" %>
<!--Phần tỉnh thành-->
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
</div>
<!--Kết thúc phẩn tỉnh thành-->
</body>
</html>