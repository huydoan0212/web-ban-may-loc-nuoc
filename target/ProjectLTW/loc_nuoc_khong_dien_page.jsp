<%@ page import="java.util.List" %>
<%@ page import="model.Product" %>
<%@ page import="java.util.ArrayList" %>
<%@ page import="java.text.NumberFormat" %>
<%@ page import="java.util.Locale" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<% List<Product> products = (List<Product>) request.getAttribute("data");
    if (products == null) products = new ArrayList<>();
%>
<% Locale locale = new Locale("vi", "VN");
    NumberFormat numberFormat = NumberFormat.getInstance(locale);
%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>Lọc nước RO</title>
    <link rel="stylesheet" href="css/loc_nuoc_RO_page.css">
    <script src="https://kit.fontawesome.com/3e135170bd.js" crossorigin="anonymous"></script>
</head>
<body>
<div id="main">
    <%@include file="header.jsp" %>
    <div id="poster">
        <div class="container">
            <div class="big-poster">
                <img src="img/800-200-800x200-19.png" alt="">
            </div>
            <div class="mini-poster">
                <img class="first-mini-poster" src="img/390-97-390x97-1.png" alt="">
                <img src="img/Frame-3939-390x97.png" alt="">
            </div>
        </div>
    </div>
    <div id="content">
        <div class="container">
            <!--            Phần lọc sản phẩm-->
            <div class="filter-content">
                <div class="filter-img">
                    <div class="filter-img-mini">
                        <a href=""><img class="first-filter-img"
                                        src="img/may-loc-nuoc-kangaroo-kg10a3-1-1-120x120.png" alt="">
                            <span>Máy lọc nước</span></a>
                    </div>
                    <div class="filter-img-mini">
                        <a href=""><img src="img/icon-loc-nuoc-khong-dien.png" alt="">
                            <span>Lọc nước không điện</span></a>
                    </div>
                    <div class="filter-img-mini">
                        <a href=""><img src="img/Coc-loc-nuoc-120-120x120.png" alt="">
                            <span>Cốc lọc nước đầu nguồn</span></a>
                    </div>
                    <div class="filter-img-mini">
                        <a href=""><img src="img/loi-may-loc-nuoc-120-120x120.png" alt="">
                            <span>Lõi máy lọc nước</span></a>
                    </div>
                    <div class="filter-img-mini">
                        <a href=""><img src="img/But-thu-nuoc-m-03-12-2020.png" alt="">
                            <span>Bút thử nước</span></a>
                    </div>
                </div>
                <div class="filter-option">
                    <div class="filter-hang filter-chung">
                        <span class="hang-label">Hãng</span>
                        <div class="hang-options">
                            <div class="sub-img">
                                <a><img src="img/Karofi-200x80-1.png" alt=""></a>
                                <a><img src="img/Kangaroo3385-b_6.png" alt=""></a>
                                <a><img src="img/Sunhouse3385-b_5.png" alt=""></a>
                                <a><img src="img/mutosi-143x80-1.png" alt=""></a>
                                <a><img src="img/HOA-PHAT-chuan-189x80-1.png" alt=""></a>
                                <a><img src="img/Sanaky-200x80-1.png" alt=""></a>
                                <a><img src="img/AOSMITH-min-151x80-1.png" alt=""></a>
                                <a><img src="img/Korihome-191x80-11.png" alt=""></a>
                                <a><img src="img/robot-táchnền-200x80-1.png" alt=""></a>
                                <a><img src="img/toshiba-198x80-7.png" alt=""></a>
                            </div>
                            <div class="xem-ket-qua">
                                <a href="" class="bo-chon">Bỏ chọn</a>
                                <a href="" class="xem-ket-qua-mini">Xem kết quả</a>
                            </div>
                        </div>
                    </div>
                    <div class="filter-loai-may filter-chung">
                        <span class="loai-may-label">Loại máy</span>
                        <div class="loai-may-options">
                            <div class="loai-may-img">
                                <a href=""><img src="img/ICON-MÁY-LỌC-NƯỚC-CÓ-NÓNG-LẠNH-(2).png" alt=""><span>Có nóng lạnh</span></a>
                                <a href=""><img src="img/ICON-MÁY-LỌC-NƯỚC-HYDROGEN-(1).png" alt=""><span>Lọc Hydrogen</span></a>
                                <a href=""><img src="img/ICON-MÁY-LỌC-NƯỚC-MẶN,-LỢ-(1).png" alt=""><span>Lọc nước nhiễm mặn lợ</span></a>
                                <a href=""><img src="img/ICON-MÁY-LỌC-NƯỚC-BÁN-CÔNG-NGHIỆP-(1).png"
                                                alt=""><span>Bán công nghiệp</span></a>
                            </div>
                            <div class="xem-ket-qua">
                                <a href="" class="bo-chon">Bỏ chọn</a>
                                <a href="" class="xem-ket-qua-mini">Xem kết quả</a>
                            </div>
                        </div>
                    </div>
                    <div class="filter-cong-nghe-loc filter-chung">
                        <span class="cong-nghe-loc-label">Công nghệ lọc</span>
                        <div class="cong-nghe-loc-options">
                            <div class="cong-nghe-loc">
                                <a href="">RO kết hợp điện phân (nước ion kiềm)</a>
                                <a href="">RO (nước tinh khiết)</a>
                                <a href="">Nano (nước tinh khiết có khoáng)</a>
                                <a href="">UF (nước lọc kim loại nặng, vi khuẩn mầm bệnh)</a>
                            </div>
                            <div class="xem-ket-qua">
                                <a href="" class="bo-chon">Bỏ chọn</a>
                                <a href="" class="xem-ket-qua-mini">Xem kết quả</a>
                            </div>
                        </div>
                    </div>
                    <div class="filter-kieu-lap-dat filter-chung">
                        <span class="kieu-lap-dat-label">Kiểu lắp đặt</span>
                        <div class="kieu-lap-dat-options">
                            <div class="kieu-lap-dat">
                                <a href="">Để bàn</a>
                                <a href="">Lắp âm</a>
                                <a href="">Tủ đứng</a>
                            </div>
                            <div class="xem-ket-qua">
                                <a href="" class="bo-chon">Bỏ chọn</a>
                                <a href="" class="xem-ket-qua-mini">Xem kết quả</a>
                            </div>
                        </div>
                    </div>
                    <div class="filter-so-loi-loc filter-chung">
                        <span class="so-loi-loc-label">Số lõi lọc</span>
                        <div class="so-loi-loc-options">
                            <div class="so-loi-loc">
                                <a href="">3 - 5 lõi</a>
                                <a href="">6 - 8 lõi</a>
                                <a href="">9 - 11 lõi</a>
                            </div>
                            <div class="xem-ket-qua">
                                <a href="" class="bo-chon">Bỏ chọn</a>
                                <a href="" class="xem-ket-qua-mini">Xem kết quả</a>
                            </div>
                        </div>
                    </div>
                    <div class="filter-tien-ich filter-chung">
                        <span class="tien-ich-label">Tiện ích</span>
                        <div class="tien-ich-options">
                            <div class="tien-ich">
                                <a href="">Có 2 vòi nước nóng và lạnh</a>
                                <a href="">Tự động báo thay lõi</a>
                                <a href="">Giàu Hydrogen chống oxy hóa</a>
                                <a href="">Khóa vòi nóng an toàn</a>
                                <a href="">Tạo nước kiềm (Alkaline) bổ sung khoáng chất</a>
                                <a href="">Tự động sục rửa màng lọc RO</a>
                                <a href="">Hiển thị chất lượng nước trước và sau khi lọc</a>
                                <a href="">Điều khiển bằng điện thoại</a>
                                <a href="">Màn hình cảm ứng</a>
                            </div>
                            <div class="xem-ket-qua">
                                <a href="" class="bo-chon">Bỏ chọn</a>
                                <a href="" class="xem-ket-qua-mini">Xem kết quả</a>
                            </div>
                        </div>
                    </div>
                    <div class="filter-noi-san-xuat filter-chung ">
                        <span class="noi-san-xuat-label">Nơi sản xuất</span>
                        <div class="noi-san-xuat-options">
                            <div class="noi-san-xuat">
                                <a href="">Hàn Quốc</a>
                                <a href="">Việt Nam</a>
                            </div>
                            <div class="xem-ket-qua">
                                <a href="" class="bo-chon">Bỏ chọn</a>
                                <a href="" class="xem-ket-qua-mini">Xem kết quả</a>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
            <!--            Kết thúc phần lọc sản phẩm-->
            <div class="product-content">
                <div class="content-may-loc">
                    <% for(Product p : products) { %>
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
                                <p class="price-old"><%=numberFormat.format(p.getPrice())%>₫ </p>
                                <span class="percent">-54%</span>
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
                                <a href="add-card?id=<%=p.getId()%>&page=6" class="item-ss"><i class="fa-solid fa-code-compare"
                                                              style="color: #333333;"></i>
                                    Thêm vào giỏ hàng </a>
                            </div>
                        </a>
                    </div>
                    <%}%>
<%--                    <div class="content-may-loc-mini">--%>
<%--                        <a href="" class="deal-items">--%>
<%--                            <div class="item-label">--%>
<%--                                <span>Trả góp 0%</span>--%>
<%--                            </div>--%>
<%--                            <div class="item-img">--%>
<%--                                <img src="img/ro-sunhouse-sha88118k-10-loi-kg-210223-102600-600x600.jpg"--%>
<%--                                     alt="">--%>
<%--                            </div>--%>
<%--                            <p class="label-gia-re">--%>
<%--                                <img src="img/50x50-100x101-3.webp" alt="">--%>
<%--                                <span>GIÁ RẺ QUÁ</span>--%>
<%--                            </p>--%>
<%--                            <h3>Máy lọc nước RO Sunhouse SHA88118K</h3>--%>
<%--                            <div class="item-compare">--%>
<%--                                <span>Tủ đứng</span>--%>
<%--                                <span>Lắp đặt miễn phí</span>--%>
<%--                            </div>--%>
<%--                            <p class="item-online-gia-re">--%>
<%--                                <i class="fa-solid fa-coins" style="color: #db2663;"></i>--%>
<%--                                Online giá rẻ quá--%>
<%--                            </p>--%>
<%--                            <div class="gia-sale">--%>
<%--                                <p class="price-old">8.690.000 </p>--%>
<%--                                <span class="percent">-54%</span>--%>
<%--                            </div>--%>
<%--                            <strong class="price-sale">3.990.000₫</strong>--%>
<%--                            <div class="item-rating">--%>
<%--                                <p>--%>
<%--                                    <i class="fa-solid fa-star" style="color: #ea744d;"></i>--%>
<%--                                    <i class="fa-solid fa-star" style="color: #ea744d;"></i>--%>
<%--                                    <i class="fa-solid fa-star" style="color: #ea744d;"></i>--%>
<%--                                    <i class="fa-solid fa-star" style="color: #ea744d;"></i>--%>
<%--                                    <i class="fa-solid fa-star" style="color: #ededed;"></i>--%>
<%--                                </p>--%>
<%--                                <p class="item-rating-total">40</p>--%>
<%--                                <a href="" class="item-ss"><i class="fa-solid fa-code-compare"--%>
<%--                                                              style="color: #333333;"></i>--%>
<%--                                    So sánh</a>--%>
<%--                            </div>--%>
<%--                        </a>--%>
<%--                    </div>--%>
<%--                    <div class="content-may-loc-mini">--%>
<%--                        <a href="" class="deal-items">--%>
<%--                            <div class="item-label">--%>
<%--                                <span>Trả góp 0%</span>--%>
<%--                            </div>--%>
<%--                            <div class="item-img">--%>
<%--                                <img src="img/ro-sunhouse-sha88118k-10-loi-kg-210223-102600-600x600.jpg"--%>
<%--                                     alt="">--%>
<%--                            </div>--%>
<%--                            <p class="label-gia-re">--%>
<%--                                <img src="img/50x50-100x101-3.webp" alt="">--%>
<%--                                <span>GIÁ RẺ QUÁ</span>--%>
<%--                            </p>--%>
<%--                            <h3>Máy lọc nước RO Sunhouse SHA88118K</h3>--%>
<%--                            <div class="item-compare">--%>
<%--                                <span>Tủ đứng</span>--%>
<%--                                <span>Lắp đặt miễn phí</span>--%>
<%--                            </div>--%>
<%--                            <p class="item-online-gia-re">--%>
<%--                                <i class="fa-solid fa-coins" style="color: #db2663;"></i>--%>
<%--                                Online giá rẻ quá--%>
<%--                            </p>--%>
<%--                            <div class="gia-sale">--%>
<%--                                <p class="price-old">8.690.000 </p>--%>
<%--                                <span class="percent">-54%</span>--%>
<%--                            </div>--%>
<%--                            <strong class="price-sale">3.990.000₫</strong>--%>
<%--                            <div class="item-rating">--%>
<%--                                <p>--%>
<%--                                    <i class="fa-solid fa-star" style="color: #ea744d;"></i>--%>
<%--                                    <i class="fa-solid fa-star" style="color: #ea744d;"></i>--%>
<%--                                    <i class="fa-solid fa-star" style="color: #ea744d;"></i>--%>
<%--                                    <i class="fa-solid fa-star" style="color: #ea744d;"></i>--%>
<%--                                    <i class="fa-solid fa-star" style="color: #ededed;"></i>--%>
<%--                                </p>--%>
<%--                                <p class="item-rating-total">40</p>--%>
<%--                                <a href="" class="item-ss"><i class="fa-solid fa-code-compare"--%>
<%--                                                              style="color: #333333;"></i>--%>
<%--                                    So sánh</a>--%>
<%--                            </div>--%>
<%--                        </a>--%>
<%--                    </div>--%>
<%--                    <div class="content-may-loc-mini">--%>
<%--                        <a href="" class="deal-items">--%>
<%--                            <div class="item-label">--%>
<%--                                <span>Trả góp 0%</span>--%>
<%--                            </div>--%>
<%--                            <div class="item-img">--%>
<%--                                <img src="img/ro-sunhouse-sha88118k-10-loi-kg-210223-102600-600x600.jpg"--%>
<%--                                     alt="">--%>
<%--                            </div>--%>
<%--                            <p class="label-gia-re">--%>
<%--                                <img src="img/50x50-100x101-3.webp" alt="">--%>
<%--                                <span>GIÁ RẺ QUÁ</span>--%>
<%--                            </p>--%>
<%--                            <h3>Máy lọc nước RO Sunhouse SHA88118K</h3>--%>
<%--                            <div class="item-compare">--%>
<%--                                <span>Tủ đứng</span>--%>
<%--                                <span>Lắp đặt miễn phí</span>--%>
<%--                            </div>--%>
<%--                            <p class="item-online-gia-re">--%>
<%--                                <i class="fa-solid fa-coins" style="color: #db2663;"></i>--%>
<%--                                Online giá rẻ quá--%>
<%--                            </p>--%>
<%--                            <div class="gia-sale">--%>
<%--                                <p class="price-old">8.690.000 </p>--%>
<%--                                <span class="percent">-54%</span>--%>
<%--                            </div>--%>
<%--                            <strong class="price-sale">3.990.000₫</strong>--%>
<%--                            <div class="item-rating">--%>
<%--                                <p>--%>
<%--                                    <i class="fa-solid fa-star" style="color: #ea744d;"></i>--%>
<%--                                    <i class="fa-solid fa-star" style="color: #ea744d;"></i>--%>
<%--                                    <i class="fa-solid fa-star" style="color: #ea744d;"></i>--%>
<%--                                    <i class="fa-solid fa-star" style="color: #ea744d;"></i>--%>
<%--                                    <i class="fa-solid fa-star" style="color: #ededed;"></i>--%>
<%--                                </p>--%>
<%--                                <p class="item-rating-total">40</p>--%>
<%--                                <a href="" class="item-ss"><i class="fa-solid fa-code-compare"--%>
<%--                                                              style="color: #333333;"></i>--%>
<%--                                    So sánh</a>--%>
<%--                            </div>--%>
<%--                        </a>--%>
<%--                    </div>--%>
<%--                    <div class="content-may-loc-mini">--%>
<%--                        <a href="" class="deal-items">--%>
<%--                            <div class="item-label">--%>
<%--                                <span>Trả góp 0%</span>--%>
<%--                            </div>--%>
<%--                            <div class="item-img">--%>
<%--                                <img src="img/ro-sunhouse-sha88118k-10-loi-kg-210223-102600-600x600.jpg"--%>
<%--                                     alt="">--%>
<%--                            </div>--%>
<%--                            <p class="label-gia-re">--%>
<%--                                <img src="img/50x50-100x101-3.webp" alt="">--%>
<%--                                <span>GIÁ RẺ QUÁ</span>--%>
<%--                            </p>--%>
<%--                            <h3>Máy lọc nước RO Sunhouse SHA88118K</h3>--%>
<%--                            <div class="item-compare">--%>
<%--                                <span>Tủ đứng</span>--%>
<%--                                <span>Lắp đặt miễn phí</span>--%>
<%--                            </div>--%>
<%--                            <p class="item-online-gia-re">--%>
<%--                                <i class="fa-solid fa-coins" style="color: #db2663;"></i>--%>
<%--                                Online giá rẻ quá--%>
<%--                            </p>--%>
<%--                            <div class="gia-sale">--%>
<%--                                <p class="price-old">8.690.000 </p>--%>
<%--                                <span class="percent">-54%</span>--%>
<%--                            </div>--%>
<%--                            <strong class="price-sale">3.990.000₫</strong>--%>
<%--                            <div class="item-rating">--%>
<%--                                <p>--%>
<%--                                    <i class="fa-solid fa-star" style="color: #ea744d;"></i>--%>
<%--                                    <i class="fa-solid fa-star" style="color: #ea744d;"></i>--%>
<%--                                    <i class="fa-solid fa-star" style="color: #ea744d;"></i>--%>
<%--                                    <i class="fa-solid fa-star" style="color: #ea744d;"></i>--%>
<%--                                    <i class="fa-solid fa-star" style="color: #ededed;"></i>--%>
<%--                                </p>--%>
<%--                                <p class="item-rating-total">40</p>--%>
<%--                                <a href="" class="item-ss"><i class="fa-solid fa-code-compare"--%>
<%--                                                              style="color: #333333;"></i>--%>
<%--                                    So sánh</a>--%>
<%--                            </div>--%>
<%--                        </a>--%>
<%--                    </div>--%>
<%--                    <div class="content-may-loc-mini">--%>
<%--                        <a href="" class="deal-items">--%>
<%--                            <div class="item-label">--%>
<%--                                <span>Trả góp 0%</span>--%>
<%--                            </div>--%>
<%--                            <div class="item-img">--%>
<%--                                <img src="img/ro-sunhouse-sha88118k-10-loi-kg-210223-102600-600x600.jpg"--%>
<%--                                     alt="">--%>
<%--                            </div>--%>
<%--                            <p class="label-gia-re">--%>
<%--                                <img src="img/50x50-100x101-3.webp" alt="">--%>
<%--                                <span>GIÁ RẺ QUÁ</span>--%>
<%--                            </p>--%>
<%--                            <h3>Máy lọc nước RO Sunhouse SHA88118K</h3>--%>
<%--                            <div class="item-compare">--%>
<%--                                <span>Tủ đứng</span>--%>
<%--                                <span>Lắp đặt miễn phí</span>--%>
<%--                            </div>--%>
<%--                            <p class="item-online-gia-re">--%>
<%--                                <i class="fa-solid fa-coins" style="color: #db2663;"></i>--%>
<%--                                Online giá rẻ quá--%>
<%--                            </p>--%>
<%--                            <div class="gia-sale">--%>
<%--                                <p class="price-old">8.690.000 </p>--%>
<%--                                <span class="percent">-54%</span>--%>
<%--                            </div>--%>
<%--                            <strong class="price-sale">3.990.000₫</strong>--%>
<%--                            <div class="item-rating">--%>
<%--                                <p>--%>
<%--                                    <i class="fa-solid fa-star" style="color: #ea744d;"></i>--%>
<%--                                    <i class="fa-solid fa-star" style="color: #ea744d;"></i>--%>
<%--                                    <i class="fa-solid fa-star" style="color: #ea744d;"></i>--%>
<%--                                    <i class="fa-solid fa-star" style="color: #ea744d;"></i>--%>
<%--                                    <i class="fa-solid fa-star" style="color: #ededed;"></i>--%>
<%--                                </p>--%>
<%--                                <p class="item-rating-total">40</p>--%>
<%--                                <a href="" class="item-ss"><i class="fa-solid fa-code-compare"--%>
<%--                                                              style="color: #333333;"></i>--%>
<%--                                    So sánh</a>--%>
<%--                            </div>--%>
<%--                        </a>--%>
<%--                    </div>--%>
<%--                    <div class="content-may-loc-mini">--%>
<%--                        <a href="" class="deal-items">--%>
<%--                            <div class="item-label">--%>
<%--                                <span>Trả góp 0%</span>--%>
<%--                            </div>--%>
<%--                            <div class="item-img">--%>
<%--                                <img src="img/ro-sunhouse-sha88118k-10-loi-kg-210223-102600-600x600.jpg"--%>
<%--                                     alt="">--%>
<%--                            </div>--%>
<%--                            <p class="label-gia-re">--%>
<%--                                <img src="img/50x50-100x101-3.webp" alt="">--%>
<%--                                <span>GIÁ RẺ QUÁ</span>--%>
<%--                            </p>--%>
<%--                            <h3>Máy lọc nước RO Sunhouse SHA88118K</h3>--%>
<%--                            <div class="item-compare">--%>
<%--                                <span>Tủ đứng</span>--%>
<%--                                <span>Lắp đặt miễn phí</span>--%>
<%--                            </div>--%>
<%--                            <p class="item-online-gia-re">--%>
<%--                                <i class="fa-solid fa-coins" style="color: #db2663;"></i>--%>
<%--                                Online giá rẻ quá--%>
<%--                            </p>--%>
<%--                            <div class="gia-sale">--%>
<%--                                <p class="price-old">8.690.000 </p>--%>
<%--                                <span class="percent">-54%</span>--%>
<%--                            </div>--%>
<%--                            <strong class="price-sale">3.990.000₫</strong>--%>
<%--                            <div class="item-rating">--%>
<%--                                <p>--%>
<%--                                    <i class="fa-solid fa-star" style="color: #ea744d;"></i>--%>
<%--                                    <i class="fa-solid fa-star" style="color: #ea744d;"></i>--%>
<%--                                    <i class="fa-solid fa-star" style="color: #ea744d;"></i>--%>
<%--                                    <i class="fa-solid fa-star" style="color: #ea744d;"></i>--%>
<%--                                    <i class="fa-solid fa-star" style="color: #ededed;"></i>--%>
<%--                                </p>--%>
<%--                                <p class="item-rating-total">40</p>--%>
<%--                                <a href="" class="item-ss"><i class="fa-solid fa-code-compare"--%>
<%--                                                              style="color: #333333;"></i>--%>
<%--                                    So sánh</a>--%>
<%--                            </div>--%>
<%--                        </a>--%>
<%--                    </div>--%>
<%--                    <div class="content-may-loc-mini">--%>
<%--                        <a href="" class="deal-items">--%>
<%--                            <div class="item-label">--%>
<%--                                <span>Trả góp 0%</span>--%>
<%--                            </div>--%>
<%--                            <div class="item-img">--%>
<%--                                <img src="img/ro-sunhouse-sha88118k-10-loi-kg-210223-102600-600x600.jpg"--%>
<%--                                     alt="">--%>
<%--                            </div>--%>
<%--                            <p class="label-gia-re">--%>
<%--                                <img src="img/50x50-100x101-3.webp" alt="">--%>
<%--                                <span>GIÁ RẺ QUÁ</span>--%>
<%--                            </p>--%>
<%--                            <h3>Máy lọc nước RO Sunhouse SHA88118K</h3>--%>
<%--                            <div class="item-compare">--%>
<%--                                <span>Tủ đứng</span>--%>
<%--                                <span>Lắp đặt miễn phí</span>--%>
<%--                            </div>--%>
<%--                            <p class="item-online-gia-re">--%>
<%--                                <i class="fa-solid fa-coins" style="color: #db2663;"></i>--%>
<%--                                Online giá rẻ quá--%>
<%--                            </p>--%>
<%--                            <div class="gia-sale">--%>
<%--                                <p class="price-old">8.690.000 </p>--%>
<%--                                <span class="percent">-54%</span>--%>
<%--                            </div>--%>
<%--                            <strong class="price-sale">3.990.000₫</strong>--%>
<%--                            <div class="item-rating">--%>
<%--                                <p>--%>
<%--                                    <i class="fa-solid fa-star" style="color: #ea744d;"></i>--%>
<%--                                    <i class="fa-solid fa-star" style="color: #ea744d;"></i>--%>
<%--                                    <i class="fa-solid fa-star" style="color: #ea744d;"></i>--%>
<%--                                    <i class="fa-solid fa-star" style="color: #ea744d;"></i>--%>
<%--                                    <i class="fa-solid fa-star" style="color: #ededed;"></i>--%>
<%--                                </p>--%>
<%--                                <p class="item-rating-total">40</p>--%>
<%--                                <a href="" class="item-ss"><i class="fa-solid fa-code-compare"--%>
<%--                                                              style="color: #333333;"></i>--%>
<%--                                    So sánh</a>--%>
<%--                            </div>--%>
<%--                        </a>--%>
<%--                    </div>--%>
<%--                    <div class="content-may-loc-mini">--%>
<%--                        <a href="" class="deal-items">--%>
<%--                            <div class="item-label">--%>
<%--                                <span>Trả góp 0%</span>--%>
<%--                            </div>--%>
<%--                            <div class="item-img">--%>
<%--                                <img src="img/ro-sunhouse-sha88118k-10-loi-kg-210223-102600-600x600.jpg"--%>
<%--                                     alt="">--%>
<%--                            </div>--%>
<%--                            <p class="label-gia-re">--%>
<%--                                <img src="img/50x50-100x101-3.webp" alt="">--%>
<%--                                <span>GIÁ RẺ QUÁ</span>--%>
<%--                            </p>--%>
<%--                            <h3>Máy lọc nước RO Sunhouse SHA88118K</h3>--%>
<%--                            <div class="item-compare">--%>
<%--                                <span>Tủ đứng</span>--%>
<%--                                <span>Lắp đặt miễn phí</span>--%>
<%--                            </div>--%>
<%--                            <p class="item-online-gia-re">--%>
<%--                                <i class="fa-solid fa-coins" style="color: #db2663;"></i>--%>
<%--                                Online giá rẻ quá--%>
<%--                            </p>--%>
<%--                            <div class="gia-sale">--%>
<%--                                <p class="price-old">8.690.000 </p>--%>
<%--                                <span class="percent">-54%</span>--%>
<%--                            </div>--%>
<%--                            <strong class="price-sale">3.990.000₫</strong>--%>
<%--                            <div class="item-rating">--%>
<%--                                <p>--%>
<%--                                    <i class="fa-solid fa-star" style="color: #ea744d;"></i>--%>
<%--                                    <i class="fa-solid fa-star" style="color: #ea744d;"></i>--%>
<%--                                    <i class="fa-solid fa-star" style="color: #ea744d;"></i>--%>
<%--                                    <i class="fa-solid fa-star" style="color: #ea744d;"></i>--%>
<%--                                    <i class="fa-solid fa-star" style="color: #ededed;"></i>--%>
<%--                                </p>--%>
<%--                                <p class="item-rating-total">40</p>--%>
<%--                                <a href="" class="item-ss"><i class="fa-solid fa-code-compare"--%>
<%--                                                              style="color: #333333;"></i>--%>
<%--                                    So sánh</a>--%>
<%--                            </div>--%>
<%--                        </a>--%>
<%--                    </div>--%>
<%--                    <div class="content-may-loc-mini">--%>
<%--                        <a href="" class="deal-items">--%>
<%--                            <div class="item-label">--%>
<%--                                <span>Trả góp 0%</span>--%>
<%--                            </div>--%>
<%--                            <div class="item-img">--%>
<%--                                <img src="img/ro-sunhouse-sha88118k-10-loi-kg-210223-102600-600x600.jpg"--%>
<%--                                     alt="">--%>
<%--                            </div>--%>
<%--                            <p class="label-gia-re">--%>
<%--                                <img src="img/50x50-100x101-3.webp" alt="">--%>
<%--                                <span>GIÁ RẺ QUÁ</span>--%>
<%--                            </p>--%>
<%--                            <h3>Máy lọc nước RO Sunhouse SHA88118K</h3>--%>
<%--                            <div class="item-compare">--%>
<%--                                <span>Tủ đứng</span>--%>
<%--                                <span>Lắp đặt miễn phí</span>--%>
<%--                            </div>--%>
<%--                            <p class="item-online-gia-re">--%>
<%--                                <i class="fa-solid fa-coins" style="color: #db2663;"></i>--%>
<%--                                Online giá rẻ quá--%>
<%--                            </p>--%>
<%--                            <div class="gia-sale">--%>
<%--                                <p class="price-old">8.690.000 </p>--%>
<%--                                <span class="percent">-54%</span>--%>
<%--                            </div>--%>
<%--                            <strong class="price-sale">3.990.000₫</strong>--%>
<%--                            <div class="item-rating">--%>
<%--                                <p>--%>
<%--                                    <i class="fa-solid fa-star" style="color: #ea744d;"></i>--%>
<%--                                    <i class="fa-solid fa-star" style="color: #ea744d;"></i>--%>
<%--                                    <i class="fa-solid fa-star" style="color: #ea744d;"></i>--%>
<%--                                    <i class="fa-solid fa-star" style="color: #ea744d;"></i>--%>
<%--                                    <i class="fa-solid fa-star" style="color: #ededed;"></i>--%>
<%--                                </p>--%>
<%--                                <p class="item-rating-total">40</p>--%>
<%--                                <a href="" class="item-ss"><i class="fa-solid fa-code-compare"--%>
<%--                                                              style="color: #333333;"></i>--%>
<%--                                    So sánh</a>--%>
<%--                            </div>--%>
<%--                        </a>--%>
<%--                    </div>--%>
<%--                    <div class="content-may-loc-mini">--%>
<%--                        <a href="" class="deal-items">--%>
<%--                            <div class="item-label">--%>
<%--                                <span>Trả góp 0%</span>--%>
<%--                            </div>--%>
<%--                            <div class="item-img">--%>
<%--                                <img src="img/ro-sunhouse-sha88118k-10-loi-kg-210223-102600-600x600.jpg"--%>
<%--                                     alt="">--%>
<%--                            </div>--%>
<%--                            <p class="label-gia-re">--%>
<%--                                <img src="img/50x50-100x101-3.webp" alt="">--%>
<%--                                <span>GIÁ RẺ QUÁ</span>--%>
<%--                            </p>--%>
<%--                            <h3>Máy lọc nước RO Sunhouse SHA88118K</h3>--%>
<%--                            <div class="item-compare">--%>
<%--                                <span>Tủ đứng</span>--%>
<%--                                <span>Lắp đặt miễn phí</span>--%>
<%--                            </div>--%>
<%--                            <p class="item-online-gia-re">--%>
<%--                                <i class="fa-solid fa-coins" style="color: #db2663;"></i>--%>
<%--                                Online giá rẻ quá--%>
<%--                            </p>--%>
<%--                            <div class="gia-sale">--%>
<%--                                <p class="price-old">8.690.000 </p>--%>
<%--                                <span class="percent">-54%</span>--%>
<%--                            </div>--%>
<%--                            <strong class="price-sale">3.990.000₫</strong>--%>
<%--                            <div class="item-rating">--%>
<%--                                <p>--%>
<%--                                    <i class="fa-solid fa-star" style="color: #ea744d;"></i>--%>
<%--                                    <i class="fa-solid fa-star" style="color: #ea744d;"></i>--%>
<%--                                    <i class="fa-solid fa-star" style="color: #ea744d;"></i>--%>
<%--                                    <i class="fa-solid fa-star" style="color: #ea744d;"></i>--%>
<%--                                    <i class="fa-solid fa-star" style="color: #ededed;"></i>--%>
<%--                                </p>--%>
<%--                                <p class="item-rating-total">40</p>--%>
<%--                                <a href="" class="item-ss"><i class="fa-solid fa-code-compare"--%>
<%--                                                              style="color: #333333;"></i>--%>
<%--                                    So sánh</a>--%>
<%--                            </div>--%>
<%--                        </a>--%>
<%--                    </div>--%>
<%--                    <div class="content-may-loc-mini">--%>
<%--                        <a href="" class="deal-items">--%>
<%--                            <div class="item-label">--%>
<%--                                <span>Trả góp 0%</span>--%>
<%--                            </div>--%>
<%--                            <div class="item-img">--%>
<%--                                <img src="img/ro-sunhouse-sha88118k-10-loi-kg-210223-102600-600x600.jpg"--%>
<%--                                     alt="">--%>
<%--                            </div>--%>
<%--                            <p class="label-gia-re">--%>
<%--                                <img src="img/50x50-100x101-3.webp" alt="">--%>
<%--                                <span>GIÁ RẺ QUÁ</span>--%>
<%--                            </p>--%>
<%--                            <h3>Máy lọc nước RO Sunhouse SHA88118K</h3>--%>
<%--                            <div class="item-compare">--%>
<%--                                <span>Tủ đứng</span>--%>
<%--                                <span>Lắp đặt miễn phí</span>--%>
<%--                            </div>--%>
<%--                            <p class="item-online-gia-re">--%>
<%--                                <i class="fa-solid fa-coins" style="color: #db2663;"></i>--%>
<%--                                Online giá rẻ quá--%>
<%--                            </p>--%>
<%--                            <div class="gia-sale">--%>
<%--                                <p class="price-old">8.690.000 </p>--%>
<%--                                <span class="percent">-54%</span>--%>
<%--                            </div>--%>
<%--                            <strong class="price-sale">3.990.000₫</strong>--%>
<%--                            <div class="item-rating">--%>
<%--                                <p>--%>
<%--                                    <i class="fa-solid fa-star" style="color: #ea744d;"></i>--%>
<%--                                    <i class="fa-solid fa-star" style="color: #ea744d;"></i>--%>
<%--                                    <i class="fa-solid fa-star" style="color: #ea744d;"></i>--%>
<%--                                    <i class="fa-solid fa-star" style="color: #ea744d;"></i>--%>
<%--                                    <i class="fa-solid fa-star" style="color: #ededed;"></i>--%>
<%--                                </p>--%>
<%--                                <p class="item-rating-total">40</p>--%>
<%--                                <a href="" class="item-ss"><i class="fa-solid fa-code-compare"--%>
<%--                                                              style="color: #333333;"></i>--%>
<%--                                    So sánh</a>--%>
<%--                            </div>--%>
<%--                        </a>--%>
<%--                    </div>--%>
<%--                    <div class="content-may-loc-mini">--%>
<%--                        <a href="" class="deal-items">--%>
<%--                            <div class="item-label">--%>
<%--                                <span>Trả góp 0%</span>--%>
<%--                            </div>--%>
<%--                            <div class="item-img">--%>
<%--                                <img src="img/ro-sunhouse-sha88118k-10-loi-kg-210223-102600-600x600.jpg"--%>
<%--                                     alt="">--%>
<%--                            </div>--%>
<%--                            <p class="label-gia-re">--%>
<%--                                <img src="img/50x50-100x101-3.webp" alt="">--%>
<%--                                <span>GIÁ RẺ QUÁ</span>--%>
<%--                            </p>--%>
<%--                            <h3>Máy lọc nước RO Sunhouse SHA88118K</h3>--%>
<%--                            <div class="item-compare">--%>
<%--                                <span>Tủ đứng</span>--%>
<%--                                <span>Lắp đặt miễn phí</span>--%>
<%--                            </div>--%>
<%--                            <p class="item-online-gia-re">--%>
<%--                                <i class="fa-solid fa-coins" style="color: #db2663;"></i>--%>
<%--                                Online giá rẻ quá--%>
<%--                            </p>--%>
<%--                            <div class="gia-sale">--%>
<%--                                <p class="price-old">8.690.000 </p>--%>
<%--                                <span class="percent">-54%</span>--%>
<%--                            </div>--%>
<%--                            <strong class="price-sale">3.990.000₫</strong>--%>
<%--                            <div class="item-rating">--%>
<%--                                <p>--%>
<%--                                    <i class="fa-solid fa-star" style="color: #ea744d;"></i>--%>
<%--                                    <i class="fa-solid fa-star" style="color: #ea744d;"></i>--%>
<%--                                    <i class="fa-solid fa-star" style="color: #ea744d;"></i>--%>
<%--                                    <i class="fa-solid fa-star" style="color: #ea744d;"></i>--%>
<%--                                    <i class="fa-solid fa-star" style="color: #ededed;"></i>--%>
<%--                                </p>--%>
<%--                                <p class="item-rating-total">40</p>--%>
<%--                                <a href="" class="item-ss"><i class="fa-solid fa-code-compare"--%>
<%--                                                              style="color: #333333;"></i>--%>
<%--                                    So sánh</a>--%>
<%--                            </div>--%>
<%--                        </a>--%>
<%--                    </div>--%>
<%--                    <div class="content-may-loc-mini">--%>
<%--                        <a href="" class="deal-items">--%>
<%--                            <div class="item-label">--%>
<%--                                <span>Trả góp 0%</span>--%>
<%--                            </div>--%>
<%--                            <div class="item-img">--%>
<%--                                <img src="img/ro-sunhouse-sha88118k-10-loi-kg-210223-102600-600x600.jpg"--%>
<%--                                     alt="">--%>
<%--                            </div>--%>
<%--                            <p class="label-gia-re">--%>
<%--                                <img src="img/50x50-100x101-3.webp" alt="">--%>
<%--                                <span>GIÁ RẺ QUÁ</span>--%>
<%--                            </p>--%>
<%--                            <h3>Máy lọc nước RO Sunhouse SHA88118K</h3>--%>
<%--                            <div class="item-compare">--%>
<%--                                <span>Tủ đứng</span>--%>
<%--                                <span>Lắp đặt miễn phí</span>--%>
<%--                            </div>--%>
<%--                            <p class="item-online-gia-re">--%>
<%--                                <i class="fa-solid fa-coins" style="color: #db2663;"></i>--%>
<%--                                Online giá rẻ quá--%>
<%--                            </p>--%>
<%--                            <div class="gia-sale">--%>
<%--                                <p class="price-old">8.690.000 </p>--%>
<%--                                <span class="percent">-54%</span>--%>
<%--                            </div>--%>
<%--                            <strong class="price-sale">3.990.000₫</strong>--%>
<%--                            <div class="item-rating">--%>
<%--                                <p>--%>
<%--                                    <i class="fa-solid fa-star" style="color: #ea744d;"></i>--%>
<%--                                    <i class="fa-solid fa-star" style="color: #ea744d;"></i>--%>
<%--                                    <i class="fa-solid fa-star" style="color: #ea744d;"></i>--%>
<%--                                    <i class="fa-solid fa-star" style="color: #ea744d;"></i>--%>
<%--                                    <i class="fa-solid fa-star" style="color: #ededed;"></i>--%>
<%--                                </p>--%>
<%--                                <p class="item-rating-total">40</p>--%>
<%--                                <a href="" class="item-ss"><i class="fa-solid fa-code-compare"--%>
<%--                                                              style="color: #333333;"></i>--%>
<%--                                    So sánh</a>--%>
<%--                            </div>--%>
<%--                        </a>--%>
<%--                    </div>--%>
<%--                    <div class="content-may-loc-mini">--%>
<%--                        <a href="" class="deal-items">--%>
<%--                            <div class="item-label">--%>
<%--                                <span>Trả góp 0%</span>--%>
<%--                            </div>--%>
<%--                            <div class="item-img">--%>
<%--                                <img src="img/ro-sunhouse-sha88118k-10-loi-kg-210223-102600-600x600.jpg"--%>
<%--                                     alt="">--%>
<%--                            </div>--%>
<%--                            <p class="label-gia-re">--%>
<%--                                <img src="img/50x50-100x101-3.webp" alt="">--%>
<%--                                <span>GIÁ RẺ QUÁ</span>--%>
<%--                            </p>--%>
<%--                            <h3>Máy lọc nước RO Sunhouse SHA88118K</h3>--%>
<%--                            <div class="item-compare">--%>
<%--                                <span>Tủ đứng</span>--%>
<%--                                <span>Lắp đặt miễn phí</span>--%>
<%--                            </div>--%>
<%--                            <p class="item-online-gia-re">--%>
<%--                                <i class="fa-solid fa-coins" style="color: #db2663;"></i>--%>
<%--                                Online giá rẻ quá--%>
<%--                            </p>--%>
<%--                            <div class="gia-sale">--%>
<%--                                <p class="price-old">8.690.000 </p>--%>
<%--                                <span class="percent">-54%</span>--%>
<%--                            </div>--%>
<%--                            <strong class="price-sale">3.990.000₫</strong>--%>
<%--                            <div class="item-rating">--%>
<%--                                <p>--%>
<%--                                    <i class="fa-solid fa-star" style="color: #ea744d;"></i>--%>
<%--                                    <i class="fa-solid fa-star" style="color: #ea744d;"></i>--%>
<%--                                    <i class="fa-solid fa-star" style="color: #ea744d;"></i>--%>
<%--                                    <i class="fa-solid fa-star" style="color: #ea744d;"></i>--%>
<%--                                    <i class="fa-solid fa-star" style="color: #ededed;"></i>--%>
<%--                                </p>--%>
<%--                                <p class="item-rating-total">40</p>--%>
<%--                                <a href="" class="item-ss"><i class="fa-solid fa-code-compare"--%>
<%--                                                              style="color: #333333;"></i>--%>
<%--                                    So sánh</a>--%>
<%--                            </div>--%>
<%--                        </a>--%>
<%--                    </div>--%>
<%--                    <div class="content-may-loc-mini">--%>
<%--                        <a href="" class="deal-items">--%>
<%--                            <div class="item-label">--%>
<%--                                <span>Trả góp 0%</span>--%>
<%--                            </div>--%>
<%--                            <div class="item-img">--%>
<%--                                <img src="img/ro-sunhouse-sha88118k-10-loi-kg-210223-102600-600x600.jpg"--%>
<%--                                     alt="">--%>
<%--                            </div>--%>
<%--                            <p class="label-gia-re">--%>
<%--                                <img src="img/50x50-100x101-3.webp" alt="">--%>
<%--                                <span>GIÁ RẺ QUÁ</span>--%>
<%--                            </p>--%>
<%--                            <h3>Máy lọc nước RO Sunhouse SHA88118K</h3>--%>
<%--                            <div class="item-compare">--%>
<%--                                <span>Tủ đứng</span>--%>
<%--                                <span>Lắp đặt miễn phí</span>--%>
<%--                            </div>--%>
<%--                            <p class="item-online-gia-re">--%>
<%--                                <i class="fa-solid fa-coins" style="color: #db2663;"></i>--%>
<%--                                Online giá rẻ quá--%>
<%--                            </p>--%>
<%--                            <div class="gia-sale">--%>
<%--                                <p class="price-old">8.690.000 </p>--%>
<%--                                <span class="percent">-54%</span>--%>
<%--                            </div>--%>
<%--                            <strong class="price-sale">3.990.000₫</strong>--%>
<%--                            <div class="item-rating">--%>
<%--                                <p>--%>
<%--                                    <i class="fa-solid fa-star" style="color: #ea744d;"></i>--%>
<%--                                    <i class="fa-solid fa-star" style="color: #ea744d;"></i>--%>
<%--                                    <i class="fa-solid fa-star" style="color: #ea744d;"></i>--%>
<%--                                    <i class="fa-solid fa-star" style="color: #ea744d;"></i>--%>
<%--                                    <i class="fa-solid fa-star" style="color: #ededed;"></i>--%>
<%--                                </p>--%>
<%--                                <p class="item-rating-total">40</p>--%>
<%--                                <a href="" class="item-ss"><i class="fa-solid fa-code-compare"--%>
<%--                                                              style="color: #333333;"></i>--%>
<%--                                    So sánh</a>--%>
<%--                            </div>--%>
<%--                        </a>--%>
<%--                    </div>--%>
<%--                    <div class="content-may-loc-mini">--%>
<%--                        <a href="" class="deal-items">--%>
<%--                            <div class="item-label">--%>
<%--                                <span>Trả góp 0%</span>--%>
<%--                            </div>--%>
<%--                            <div class="item-img">--%>
<%--                                <img src="img/ro-sunhouse-sha88118k-10-loi-kg-210223-102600-600x600.jpg"--%>
<%--                                     alt="">--%>
<%--                            </div>--%>
<%--                            <p class="label-gia-re">--%>
<%--                                <img src="img/50x50-100x101-3.webp" alt="">--%>
<%--                                <span>GIÁ RẺ QUÁ</span>--%>
<%--                            </p>--%>
<%--                            <h3>Máy lọc nước RO Sunhouse SHA88118K</h3>--%>
<%--                            <div class="item-compare">--%>
<%--                                <span>Tủ đứng</span>--%>
<%--                                <span>Lắp đặt miễn phí</span>--%>
<%--                            </div>--%>
<%--                            <p class="item-online-gia-re">--%>
<%--                                <i class="fa-solid fa-coins" style="color: #db2663;"></i>--%>
<%--                                Online giá rẻ quá--%>
<%--                            </p>--%>
<%--                            <div class="gia-sale">--%>
<%--                                <p class="price-old">8.690.000 </p>--%>
<%--                                <span class="percent">-54%</span>--%>
<%--                            </div>--%>
<%--                            <strong class="price-sale">3.990.000₫</strong>--%>
<%--                            <div class="item-rating">--%>
<%--                                <p>--%>
<%--                                    <i class="fa-solid fa-star" style="color: #ea744d;"></i>--%>
<%--                                    <i class="fa-solid fa-star" style="color: #ea744d;"></i>--%>
<%--                                    <i class="fa-solid fa-star" style="color: #ea744d;"></i>--%>
<%--                                    <i class="fa-solid fa-star" style="color: #ea744d;"></i>--%>
<%--                                    <i class="fa-solid fa-star" style="color: #ededed;"></i>--%>
<%--                                </p>--%>
<%--                                <p class="item-rating-total">40</p>--%>
<%--                                <a href="" class="item-ss"><i class="fa-solid fa-code-compare"--%>
<%--                                                              style="color: #333333;"></i>--%>
<%--                                    So sánh</a>--%>
<%--                            </div>--%>
<%--                        </a>--%>
<%--                    </div>--%>
<%--                    <div class="content-may-loc-mini">--%>
<%--                        <a href="" class="deal-items">--%>
<%--                            <div class="item-label">--%>
<%--                                <span>Trả góp 0%</span>--%>
<%--                            </div>--%>
<%--                            <div class="item-img">--%>
<%--                                <img src="img/ro-sunhouse-sha88118k-10-loi-kg-210223-102600-600x600.jpg"--%>
<%--                                     alt="">--%>
<%--                            </div>--%>
<%--                            <p class="label-gia-re">--%>
<%--                                <img src="img/50x50-100x101-3.webp" alt="">--%>
<%--                                <span>GIÁ RẺ QUÁ</span>--%>
<%--                            </p>--%>
<%--                            <h3>Máy lọc nước RO Sunhouse SHA88118K</h3>--%>
<%--                            <div class="item-compare">--%>
<%--                                <span>Tủ đứng</span>--%>
<%--                                <span>Lắp đặt miễn phí</span>--%>
<%--                            </div>--%>
<%--                            <p class="item-online-gia-re">--%>
<%--                                <i class="fa-solid fa-coins" style="color: #db2663;"></i>--%>
<%--                                Online giá rẻ quá--%>
<%--                            </p>--%>
<%--                            <div class="gia-sale">--%>
<%--                                <p class="price-old">8.690.000 </p>--%>
<%--                                <span class="percent">-54%</span>--%>
<%--                            </div>--%>
<%--                            <strong class="price-sale">3.990.000₫</strong>--%>
<%--                            <div class="item-rating">--%>
<%--                                <p>--%>
<%--                                    <i class="fa-solid fa-star" style="color: #ea744d;"></i>--%>
<%--                                    <i class="fa-solid fa-star" style="color: #ea744d;"></i>--%>
<%--                                    <i class="fa-solid fa-star" style="color: #ea744d;"></i>--%>
<%--                                    <i class="fa-solid fa-star" style="color: #ea744d;"></i>--%>
<%--                                    <i class="fa-solid fa-star" style="color: #ededed;"></i>--%>
<%--                                </p>--%>
<%--                                <p class="item-rating-total">40</p>--%>
<%--                                <a href="" class="item-ss"><i class="fa-solid fa-code-compare"--%>
<%--                                                              style="color: #333333;"></i>--%>
<%--                                    So sánh</a>--%>
<%--                            </div>--%>
<%--                        </a>--%>
<%--                    </div>--%>
<%--                    <div class="content-may-loc-mini">--%>
<%--                        <a href="" class="deal-items">--%>
<%--                            <div class="item-label">--%>
<%--                                <span>Trả góp 0%</span>--%>
<%--                            </div>--%>
<%--                            <div class="item-img">--%>
<%--                                <img src="img/ro-sunhouse-sha88118k-10-loi-kg-210223-102600-600x600.jpg"--%>
<%--                                     alt="">--%>
<%--                            </div>--%>
<%--                            <p class="label-gia-re">--%>
<%--                                <img src="img/50x50-100x101-3.webp" alt="">--%>
<%--                                <span>GIÁ RẺ QUÁ</span>--%>
<%--                            </p>--%>
<%--                            <h3>Máy lọc nước RO Sunhouse SHA88118K</h3>--%>
<%--                            <div class="item-compare">--%>
<%--                                <span>Tủ đứng</span>--%>
<%--                                <span>Lắp đặt miễn phí</span>--%>
<%--                            </div>--%>
<%--                            <p class="item-online-gia-re">--%>
<%--                                <i class="fa-solid fa-coins" style="color: #db2663;"></i>--%>
<%--                                Online giá rẻ quá--%>
<%--                            </p>--%>
<%--                            <div class="gia-sale">--%>
<%--                                <p class="price-old">8.690.000 </p>--%>
<%--                                <span class="percent">-54%</span>--%>
<%--                            </div>--%>
<%--                            <strong class="price-sale">3.990.000₫</strong>--%>
<%--                            <div class="item-rating">--%>
<%--                                <p>--%>
<%--                                    <i class="fa-solid fa-star" style="color: #ea744d;"></i>--%>
<%--                                    <i class="fa-solid fa-star" style="color: #ea744d;"></i>--%>
<%--                                    <i class="fa-solid fa-star" style="color: #ea744d;"></i>--%>
<%--                                    <i class="fa-solid fa-star" style="color: #ea744d;"></i>--%>
<%--                                    <i class="fa-solid fa-star" style="color: #ededed;"></i>--%>
<%--                                </p>--%>
<%--                                <p class="item-rating-total">40</p>--%>
<%--                                <a href="" class="item-ss"><i class="fa-solid fa-code-compare"--%>
<%--                                                              style="color: #333333;"></i>--%>
<%--                                    So sánh</a>--%>
<%--                            </div>--%>
<%--                        </a>--%>
<%--                    </div>--%>
<%--                    <div class="content-may-loc-mini">--%>
<%--                        <a href="" class="deal-items">--%>
<%--                            <div class="item-label">--%>
<%--                                <span>Trả góp 0%</span>--%>
<%--                            </div>--%>
<%--                            <div class="item-img">--%>
<%--                                <img src="img/ro-sunhouse-sha88118k-10-loi-kg-210223-102600-600x600.jpg"--%>
<%--                                     alt="">--%>
<%--                            </div>--%>
<%--                            <p class="label-gia-re">--%>
<%--                                <img src="img/50x50-100x101-3.webp" alt="">--%>
<%--                                <span>GIÁ RẺ QUÁ</span>--%>
<%--                            </p>--%>
<%--                            <h3>Máy lọc nước RO Sunhouse SHA88118K</h3>--%>
<%--                            <div class="item-compare">--%>
<%--                                <span>Tủ đứng</span>--%>
<%--                                <span>Lắp đặt miễn phí</span>--%>
<%--                            </div>--%>
<%--                            <p class="item-online-gia-re">--%>
<%--                                <i class="fa-solid fa-coins" style="color: #db2663;"></i>--%>
<%--                                Online giá rẻ quá--%>
<%--                            </p>--%>
<%--                            <div class="gia-sale">--%>
<%--                                <p class="price-old">8.690.000 </p>--%>
<%--                                <span class="percent">-54%</span>--%>
<%--                            </div>--%>
<%--                            <strong class="price-sale">3.990.000₫</strong>--%>
<%--                            <div class="item-rating">--%>
<%--                                <p>--%>
<%--                                    <i class="fa-solid fa-star" style="color: #ea744d;"></i>--%>
<%--                                    <i class="fa-solid fa-star" style="color: #ea744d;"></i>--%>
<%--                                    <i class="fa-solid fa-star" style="color: #ea744d;"></i>--%>
<%--                                    <i class="fa-solid fa-star" style="color: #ea744d;"></i>--%>
<%--                                    <i class="fa-solid fa-star" style="color: #ededed;"></i>--%>
<%--                                </p>--%>
<%--                                <p class="item-rating-total">40</p>--%>
<%--                                <a href="" class="item-ss"><i class="fa-solid fa-code-compare"--%>
<%--                                                              style="color: #333333;"></i>--%>
<%--                                    So sánh</a>--%>
<%--                            </div>--%>
<%--                        </a>--%>
<%--                    </div>--%>
<%--                    <div class="content-may-loc-mini">--%>
<%--                        <a href="" class="deal-items">--%>
<%--                            <div class="item-label">--%>
<%--                                <span>Trả góp 0%</span>--%>
<%--                            </div>--%>
<%--                            <div class="item-img">--%>
<%--                                <img src="img/ro-sunhouse-sha88118k-10-loi-kg-210223-102600-600x600.jpg"--%>
<%--                                     alt="">--%>
<%--                            </div>--%>
<%--                            <p class="label-gia-re">--%>
<%--                                <img src="img/50x50-100x101-3.webp" alt="">--%>
<%--                                <span>GIÁ RẺ QUÁ</span>--%>
<%--                            </p>--%>
<%--                            <h3>Máy lọc nước RO Sunhouse SHA88118K</h3>--%>
<%--                            <div class="item-compare">--%>
<%--                                <span>Tủ đứng</span>--%>
<%--                                <span>Lắp đặt miễn phí</span>--%>
<%--                            </div>--%>
<%--                            <p class="item-online-gia-re">--%>
<%--                                <i class="fa-solid fa-coins" style="color: #db2663;"></i>--%>
<%--                                Online giá rẻ quá--%>
<%--                            </p>--%>
<%--                            <div class="gia-sale">--%>
<%--                                <p class="price-old">8.690.000 </p>--%>
<%--                                <span class="percent">-54%</span>--%>
<%--                            </div>--%>
<%--                            <strong class="price-sale">3.990.000₫</strong>--%>
<%--                            <div class="item-rating">--%>
<%--                                <p>--%>
<%--                                    <i class="fa-solid fa-star" style="color: #ea744d;"></i>--%>
<%--                                    <i class="fa-solid fa-star" style="color: #ea744d;"></i>--%>
<%--                                    <i class="fa-solid fa-star" style="color: #ea744d;"></i>--%>
<%--                                    <i class="fa-solid fa-star" style="color: #ea744d;"></i>--%>
<%--                                    <i class="fa-solid fa-star" style="color: #ededed;"></i>--%>
<%--                                </p>--%>
<%--                                <p class="item-rating-total">40</p>--%>
<%--                                <a href="" class="item-ss"><i class="fa-solid fa-code-compare"--%>
<%--                                                              style="color: #333333;"></i>--%>
<%--                                    So sánh</a>--%>
<%--                            </div>--%>
<%--                        </a>--%>
<%--                    </div>--%>
<%--                    <div class="content-may-loc-mini">--%>
<%--                        <a href="" class="deal-items">--%>
<%--                            <div class="item-label">--%>
<%--                                <span>Trả góp 0%</span>--%>
<%--                            </div>--%>
<%--                            <div class="item-img">--%>
<%--                                <img src="img/ro-sunhouse-sha88118k-10-loi-kg-210223-102600-600x600.jpg"--%>
<%--                                     alt="">--%>
<%--                            </div>--%>
<%--                            <p class="label-gia-re">--%>
<%--                                <img src="img/50x50-100x101-3.webp" alt="">--%>
<%--                                <span>GIÁ RẺ QUÁ</span>--%>
<%--                            </p>--%>
<%--                            <h3>Máy lọc nước RO Sunhouse SHA88118K</h3>--%>
<%--                            <div class="item-compare">--%>
<%--                                <span>Tủ đứng</span>--%>
<%--                                <span>Lắp đặt miễn phí</span>--%>
<%--                            </div>--%>
<%--                            <p class="item-online-gia-re">--%>
<%--                                <i class="fa-solid fa-coins" style="color: #db2663;"></i>--%>
<%--                                Online giá rẻ quá--%>
<%--                            </p>--%>
<%--                            <div class="gia-sale">--%>
<%--                                <p class="price-old">8.690.000 </p>--%>
<%--                                <span class="percent">-54%</span>--%>
<%--                            </div>--%>
<%--                            <strong class="price-sale">3.990.000₫</strong>--%>
<%--                            <div class="item-rating">--%>
<%--                                <p>--%>
<%--                                    <i class="fa-solid fa-star" style="color: #ea744d;"></i>--%>
<%--                                    <i class="fa-solid fa-star" style="color: #ea744d;"></i>--%>
<%--                                    <i class="fa-solid fa-star" style="color: #ea744d;"></i>--%>
<%--                                    <i class="fa-solid fa-star" style="color: #ea744d;"></i>--%>
<%--                                    <i class="fa-solid fa-star" style="color: #ededed;"></i>--%>
<%--                                </p>--%>
<%--                                <p class="item-rating-total">40</p>--%>
<%--                                <a href="" class="item-ss"><i class="fa-solid fa-code-compare"--%>
<%--                                                              style="color: #333333;"></i>--%>
<%--                                    So sánh</a>--%>
<%--                            </div>--%>
<%--                        </a>--%>
<%--                    </div>--%>
<%--                    <div class="content-may-loc-mini">--%>
<%--                        <a href="" class="deal-items">--%>
<%--                            <div class="item-label">--%>
<%--                                <span>Trả góp 0%</span>--%>
<%--                            </div>--%>
<%--                            <div class="item-img">--%>
<%--                                <img src="img/ro-sunhouse-sha88118k-10-loi-kg-210223-102600-600x600.jpg"--%>
<%--                                     alt="">--%>
<%--                            </div>--%>
<%--                            <p class="label-gia-re">--%>
<%--                                <img src="img/50x50-100x101-3.webp" alt="">--%>
<%--                                <span>GIÁ RẺ QUÁ</span>--%>
<%--                            </p>--%>
<%--                            <h3>Máy lọc nước RO Sunhouse SHA88118K</h3>--%>
<%--                            <div class="item-compare">--%>
<%--                                <span>Tủ đứng</span>--%>
<%--                                <span>Lắp đặt miễn phí</span>--%>
<%--                            </div>--%>
<%--                            <p class="item-online-gia-re">--%>
<%--                                <i class="fa-solid fa-coins" style="color: #db2663;"></i>--%>
<%--                                Online giá rẻ quá--%>
<%--                            </p>--%>
<%--                            <div class="gia-sale">--%>
<%--                                <p class="price-old">8.690.000 </p>--%>
<%--                                <span class="percent">-54%</span>--%>
<%--                            </div>--%>
<%--                            <strong class="price-sale">3.990.000₫</strong>--%>
<%--                            <div class="item-rating">--%>
<%--                                <p>--%>
<%--                                    <i class="fa-solid fa-star" style="color: #ea744d;"></i>--%>
<%--                                    <i class="fa-solid fa-star" style="color: #ea744d;"></i>--%>
<%--                                    <i class="fa-solid fa-star" style="color: #ea744d;"></i>--%>
<%--                                    <i class="fa-solid fa-star" style="color: #ea744d;"></i>--%>
<%--                                    <i class="fa-solid fa-star" style="color: #ededed;"></i>--%>
<%--                                </p>--%>
<%--                                <p class="item-rating-total">40</p>--%>
<%--                                <a href="" class="item-ss"><i class="fa-solid fa-code-compare"--%>
<%--                                                              style="color: #333333;"></i>--%>
<%--                                    So sánh</a>--%>
<%--                            </div>--%>
<%--                        </a>--%>
<%--                    </div>--%>
<%--                    <div class="content-may-loc-mini">--%>
<%--                        <a href="" class="deal-items">--%>
<%--                            <div class="item-label">--%>
<%--                                <span>Trả góp 0%</span>--%>
<%--                            </div>--%>
<%--                            <div class="item-img">--%>
<%--                                <img src="img/ro-sunhouse-sha88118k-10-loi-kg-210223-102600-600x600.jpg"--%>
<%--                                     alt="">--%>
<%--                            </div>--%>
<%--                            <p class="label-gia-re">--%>
<%--                                <img src="img/50x50-100x101-3.webp" alt="">--%>
<%--                                <span>GIÁ RẺ QUÁ</span>--%>
<%--                            </p>--%>
<%--                            <h3>Máy lọc nước RO Sunhouse SHA88118K</h3>--%>
<%--                            <div class="item-compare">--%>
<%--                                <span>Tủ đứng</span>--%>
<%--                                <span>Lắp đặt miễn phí</span>--%>
<%--                            </div>--%>
<%--                            <p class="item-online-gia-re">--%>
<%--                                <i class="fa-solid fa-coins" style="color: #db2663;"></i>--%>
<%--                                Online giá rẻ quá--%>
<%--                            </p>--%>
<%--                            <div class="gia-sale">--%>
<%--                                <p class="price-old">8.690.000 </p>--%>
<%--                                <span class="percent">-54%</span>--%>
<%--                            </div>--%>
<%--                            <strong class="price-sale">3.990.000₫</strong>--%>
<%--                            <div class="item-rating">--%>
<%--                                <p>--%>
<%--                                    <i class="fa-solid fa-star" style="color: #ea744d;"></i>--%>
<%--                                    <i class="fa-solid fa-star" style="color: #ea744d;"></i>--%>
<%--                                    <i class="fa-solid fa-star" style="color: #ea744d;"></i>--%>
<%--                                    <i class="fa-solid fa-star" style="color: #ea744d;"></i>--%>
<%--                                    <i class="fa-solid fa-star" style="color: #ededed;"></i>--%>
<%--                                </p>--%>
<%--                                <p class="item-rating-total">40</p>--%>
<%--                                <a href="" class="item-ss"><i class="fa-solid fa-code-compare"--%>
<%--                                                              style="color: #333333;"></i>--%>
<%--                                    So sánh</a>--%>
<%--                            </div>--%>
<%--                        </a>--%>
<%--                    </div>--%>
<%--                    <div class="content-may-loc-mini">--%>
<%--                        <a href="" class="deal-items">--%>
<%--                            <div class="item-label">--%>
<%--                                <span>Trả góp 0%</span>--%>
<%--                            </div>--%>
<%--                            <div class="item-img">--%>
<%--                                <img src="img/ro-sunhouse-sha88118k-10-loi-kg-210223-102600-600x600.jpg"--%>
<%--                                     alt="">--%>
<%--                            </div>--%>
<%--                            <p class="label-gia-re">--%>
<%--                                <img src="img/50x50-100x101-3.webp" alt="">--%>
<%--                                <span>GIÁ RẺ QUÁ</span>--%>
<%--                            </p>--%>
<%--                            <h3>Máy lọc nước RO Sunhouse SHA88118K</h3>--%>
<%--                            <div class="item-compare">--%>
<%--                                <span>Tủ đứng</span>--%>
<%--                                <span>Lắp đặt miễn phí</span>--%>
<%--                            </div>--%>
<%--                            <p class="item-online-gia-re">--%>
<%--                                <i class="fa-solid fa-coins" style="color: #db2663;"></i>--%>
<%--                                Online giá rẻ quá--%>
<%--                            </p>--%>
<%--                            <div class="gia-sale">--%>
<%--                                <p class="price-old">8.690.000 </p>--%>
<%--                                <span class="percent">-54%</span>--%>
<%--                            </div>--%>
<%--                            <strong class="price-sale">3.990.000₫</strong>--%>
<%--                            <div class="item-rating">--%>
<%--                                <p>--%>
<%--                                    <i class="fa-solid fa-star" style="color: #ea744d;"></i>--%>
<%--                                    <i class="fa-solid fa-star" style="color: #ea744d;"></i>--%>
<%--                                    <i class="fa-solid fa-star" style="color: #ea744d;"></i>--%>
<%--                                    <i class="fa-solid fa-star" style="color: #ea744d;"></i>--%>
<%--                                    <i class="fa-solid fa-star" style="color: #ededed;"></i>--%>
<%--                                </p>--%>
<%--                                <p class="item-rating-total">40</p>--%>
<%--                                <a href="" class="item-ss"><i class="fa-solid fa-code-compare"--%>
<%--                                                              style="color: #333333;"></i>--%>
<%--                                    So sánh</a>--%>
<%--                            </div>--%>
<%--                        </a>--%>
<%--                    </div>--%>
<%--                    <div class="content-may-loc-mini">--%>
<%--                        <a href="" class="deal-items">--%>
<%--                            <div class="item-label">--%>
<%--                                <span>Trả góp 0%</span>--%>
<%--                            </div>--%>
<%--                            <div class="item-img">--%>
<%--                                <img src="img/ro-sunhouse-sha88118k-10-loi-kg-210223-102600-600x600.jpg"--%>
<%--                                     alt="">--%>
<%--                            </div>--%>
<%--                            <p class="label-gia-re">--%>
<%--                                <img src="img/50x50-100x101-3.webp" alt="">--%>
<%--                                <span>GIÁ RẺ QUÁ</span>--%>
<%--                            </p>--%>
<%--                            <h3>Máy lọc nước RO Sunhouse SHA88118K</h3>--%>
<%--                            <div class="item-compare">--%>
<%--                                <span>Tủ đứng</span>--%>
<%--                                <span>Lắp đặt miễn phí</span>--%>
<%--                            </div>--%>
<%--                            <p class="item-online-gia-re">--%>
<%--                                <i class="fa-solid fa-coins" style="color: #db2663;"></i>--%>
<%--                                Online giá rẻ quá--%>
<%--                            </p>--%>
<%--                            <div class="gia-sale">--%>
<%--                                <p class="price-old">8.690.000 </p>--%>
<%--                                <span class="percent">-54%</span>--%>
<%--                            </div>--%>
<%--                            <strong class="price-sale">3.990.000₫</strong>--%>
<%--                            <div class="item-rating">--%>
<%--                                <p>--%>
<%--                                    <i class="fa-solid fa-star" style="color: #ea744d;"></i>--%>
<%--                                    <i class="fa-solid fa-star" style="color: #ea744d;"></i>--%>
<%--                                    <i class="fa-solid fa-star" style="color: #ea744d;"></i>--%>
<%--                                    <i class="fa-solid fa-star" style="color: #ea744d;"></i>--%>
<%--                                    <i class="fa-solid fa-star" style="color: #ededed;"></i>--%>
<%--                                </p>--%>
<%--                                <p class="item-rating-total">40</p>--%>
<%--                                <a href="" class="item-ss"><i class="fa-solid fa-code-compare"--%>
<%--                                                              style="color: #333333;"></i>--%>
<%--                                    So sánh</a>--%>
<%--                            </div>--%>
<%--                        </a>--%>
<%--                    </div>--%>
<%--                    <div class="content-may-loc-mini">--%>
<%--                        <a href="" class="deal-items">--%>
<%--                            <div class="item-label">--%>
<%--                                <span>Trả góp 0%</span>--%>
<%--                            </div>--%>
<%--                            <div class="item-img">--%>
<%--                                <img src="img/ro-sunhouse-sha88118k-10-loi-kg-210223-102600-600x600.jpg"--%>
<%--                                     alt="">--%>
<%--                            </div>--%>
<%--                            <p class="label-gia-re">--%>
<%--                                <img src="img/50x50-100x101-3.webp" alt="">--%>
<%--                                <span>GIÁ RẺ QUÁ</span>--%>
<%--                            </p>--%>
<%--                            <h3>Máy lọc nước RO Sunhouse SHA88118K</h3>--%>
<%--                            <div class="item-compare">--%>
<%--                                <span>Tủ đứng</span>--%>
<%--                                <span>Lắp đặt miễn phí</span>--%>
<%--                            </div>--%>
<%--                            <p class="item-online-gia-re">--%>
<%--                                <i class="fa-solid fa-coins" style="color: #db2663;"></i>--%>
<%--                                Online giá rẻ quá--%>
<%--                            </p>--%>
<%--                            <div class="gia-sale">--%>
<%--                                <p class="price-old">8.690.000 </p>--%>
<%--                                <span class="percent">-54%</span>--%>
<%--                            </div>--%>
<%--                            <strong class="price-sale">3.990.000₫</strong>--%>
<%--                            <div class="item-rating">--%>
<%--                                <p>--%>
<%--                                    <i class="fa-solid fa-star" style="color: #ea744d;"></i>--%>
<%--                                    <i class="fa-solid fa-star" style="color: #ea744d;"></i>--%>
<%--                                    <i class="fa-solid fa-star" style="color: #ea744d;"></i>--%>
<%--                                    <i class="fa-solid fa-star" style="color: #ea744d;"></i>--%>
<%--                                    <i class="fa-solid fa-star" style="color: #ededed;"></i>--%>
<%--                                </p>--%>
<%--                                <p class="item-rating-total">40</p>--%>
<%--                                <a href="" class="item-ss"><i class="fa-solid fa-code-compare"--%>
<%--                                                              style="color: #333333;"></i>--%>
<%--                                    So sánh</a>--%>
<%--                            </div>--%>
<%--                        </a>--%>
<%--                    </div>--%>
<%--                    <div class="content-may-loc-mini">--%>
<%--                        <a href="" class="deal-items">--%>
<%--                            <div class="item-label">--%>
<%--                                <span>Trả góp 0%</span>--%>
<%--                            </div>--%>
<%--                            <div class="item-img">--%>
<%--                                <img src="img/ro-sunhouse-sha88118k-10-loi-kg-210223-102600-600x600.jpg"--%>
<%--                                     alt="">--%>
<%--                            </div>--%>
<%--                            <p class="label-gia-re">--%>
<%--                                <img src="img/50x50-100x101-3.webp" alt="">--%>
<%--                                <span>GIÁ RẺ QUÁ</span>--%>
<%--                            </p>--%>
<%--                            <h3>Máy lọc nước RO Sunhouse SHA88118K</h3>--%>
<%--                            <div class="item-compare">--%>
<%--                                <span>Tủ đứng</span>--%>
<%--                                <span>Lắp đặt miễn phí</span>--%>
<%--                            </div>--%>
<%--                            <p class="item-online-gia-re">--%>
<%--                                <i class="fa-solid fa-coins" style="color: #db2663;"></i>--%>
<%--                                Online giá rẻ quá--%>
<%--                            </p>--%>
<%--                            <div class="gia-sale">--%>
<%--                                <p class="price-old">8.690.000 </p>--%>
<%--                                <span class="percent">-54%</span>--%>
<%--                            </div>--%>
<%--                            <strong class="price-sale">3.990.000₫</strong>--%>
<%--                            <div class="item-rating">--%>
<%--                                <p>--%>
<%--                                    <i class="fa-solid fa-star" style="color: #ea744d;"></i>--%>
<%--                                    <i class="fa-solid fa-star" style="color: #ea744d;"></i>--%>
<%--                                    <i class="fa-solid fa-star" style="color: #ea744d;"></i>--%>
<%--                                    <i class="fa-solid fa-star" style="color: #ea744d;"></i>--%>
<%--                                    <i class="fa-solid fa-star" style="color: #ededed;"></i>--%>
<%--                                </p>--%>
<%--                                <p class="item-rating-total">40</p>--%>
<%--                                <a href="" class="item-ss"><i class="fa-solid fa-code-compare"--%>
<%--                                                              style="color: #333333;"></i>--%>
<%--                                    So sánh</a>--%>
<%--                            </div>--%>
<%--                        </a>--%>
<%--                    </div>--%>
<%--                    <div class="content-may-loc-mini">--%>
<%--                        <a href="" class="deal-items">--%>
<%--                            <div class="item-label">--%>
<%--                                <span>Trả góp 0%</span>--%>
<%--                            </div>--%>
<%--                            <div class="item-img">--%>
<%--                                <img src="img/ro-sunhouse-sha88118k-10-loi-kg-210223-102600-600x600.jpg"--%>
<%--                                     alt="">--%>
<%--                            </div>--%>
<%--                            <p class="label-gia-re">--%>
<%--                                <img src="img/50x50-100x101-3.webp" alt="">--%>
<%--                                <span>GIÁ RẺ QUÁ</span>--%>
<%--                            </p>--%>
<%--                            <h3>Máy lọc nước RO Sunhouse SHA88118K</h3>--%>
<%--                            <div class="item-compare">--%>
<%--                                <span>Tủ đứng</span>--%>
<%--                                <span>Lắp đặt miễn phí</span>--%>
<%--                            </div>--%>
<%--                            <p class="item-online-gia-re">--%>
<%--                                <i class="fa-solid fa-coins" style="color: #db2663;"></i>--%>
<%--                                Online giá rẻ quá--%>
<%--                            </p>--%>
<%--                            <div class="gia-sale">--%>
<%--                                <p class="price-old">8.690.000 </p>--%>
<%--                                <span class="percent">-54%</span>--%>
<%--                            </div>--%>
<%--                            <strong class="price-sale">3.990.000₫</strong>--%>
<%--                            <div class="item-rating">--%>
<%--                                <p>--%>
<%--                                    <i class="fa-solid fa-star" style="color: #ea744d;"></i>--%>
<%--                                    <i class="fa-solid fa-star" style="color: #ea744d;"></i>--%>
<%--                                    <i class="fa-solid fa-star" style="color: #ea744d;"></i>--%>
<%--                                    <i class="fa-solid fa-star" style="color: #ea744d;"></i>--%>
<%--                                    <i class="fa-solid fa-star" style="color: #ededed;"></i>--%>
<%--                                </p>--%>
<%--                                <p class="item-rating-total">40</p>--%>
<%--                                <a href="" class="item-ss"><i class="fa-solid fa-code-compare"--%>
<%--                                                              style="color: #333333;"></i>--%>
<%--                                    So sánh</a>--%>
<%--                            </div>--%>
<%--                        </a>--%>
<%--                    </div>--%>
<%--                    <div class="content-may-loc-mini">--%>
<%--                        <a href="" class="deal-items">--%>
<%--                            <div class="item-label">--%>
<%--                                <span>Trả góp 0%</span>--%>
<%--                            </div>--%>
<%--                            <div class="item-img">--%>
<%--                                <img src="img/ro-sunhouse-sha88118k-10-loi-kg-210223-102600-600x600.jpg"--%>
<%--                                     alt="">--%>
<%--                            </div>--%>
<%--                            <p class="label-gia-re">--%>
<%--                                <img src="img/50x50-100x101-3.webp" alt="">--%>
<%--                                <span>GIÁ RẺ QUÁ</span>--%>
<%--                            </p>--%>
<%--                            <h3>Máy lọc nước RO Sunhouse SHA88118K</h3>--%>
<%--                            <div class="item-compare">--%>
<%--                                <span>Tủ đứng</span>--%>
<%--                                <span>Lắp đặt miễn phí</span>--%>
<%--                            </div>--%>
<%--                            <p class="item-online-gia-re">--%>
<%--                                <i class="fa-solid fa-coins" style="color: #db2663;"></i>--%>
<%--                                Online giá rẻ quá--%>
<%--                            </p>--%>
<%--                            <div class="gia-sale">--%>
<%--                                <p class="price-old">8.690.000 </p>--%>
<%--                                <span class="percent">-54%</span>--%>
<%--                            </div>--%>
<%--                            <strong class="price-sale">3.990.000₫</strong>--%>
<%--                            <div class="item-rating">--%>
<%--                                <p>--%>
<%--                                    <i class="fa-solid fa-star" style="color: #ea744d;"></i>--%>
<%--                                    <i class="fa-solid fa-star" style="color: #ea744d;"></i>--%>
<%--                                    <i class="fa-solid fa-star" style="color: #ea744d;"></i>--%>
<%--                                    <i class="fa-solid fa-star" style="color: #ea744d;"></i>--%>
<%--                                    <i class="fa-solid fa-star" style="color: #ededed;"></i>--%>
<%--                                </p>--%>
<%--                                <p class="item-rating-total">40</p>--%>
<%--                                <a href="" class="item-ss"><i class="fa-solid fa-code-compare"--%>
<%--                                                              style="color: #333333;"></i>--%>
<%--                                    So sánh</a>--%>
<%--                            </div>--%>
<%--                        </a>--%>
<%--                    </div>--%>
<%--                    <div class="content-may-loc-mini">--%>
<%--                        <a href="" class="deal-items">--%>
<%--                            <div class="item-label">--%>
<%--                                <span>Trả góp 0%</span>--%>
<%--                            </div>--%>
<%--                            <div class="item-img">--%>
<%--                                <img src="img/ro-sunhouse-sha88118k-10-loi-kg-210223-102600-600x600.jpg"--%>
<%--                                     alt="">--%>
<%--                            </div>--%>
<%--                            <p class="label-gia-re">--%>
<%--                                <img src="img/50x50-100x101-3.webp" alt="">--%>
<%--                                <span>GIÁ RẺ QUÁ</span>--%>
<%--                            </p>--%>
<%--                            <h3>Máy lọc nước RO Sunhouse SHA88118K</h3>--%>
<%--                            <div class="item-compare">--%>
<%--                                <span>Tủ đứng</span>--%>
<%--                                <span>Lắp đặt miễn phí</span>--%>
<%--                            </div>--%>
<%--                            <p class="item-online-gia-re">--%>
<%--                                <i class="fa-solid fa-coins" style="color: #db2663;"></i>--%>
<%--                                Online giá rẻ quá--%>
<%--                            </p>--%>
<%--                            <div class="gia-sale">--%>
<%--                                <p class="price-old">8.690.000 </p>--%>
<%--                                <span class="percent">-54%</span>--%>
<%--                            </div>--%>
<%--                            <strong class="price-sale">3.990.000₫</strong>--%>
<%--                            <div class="item-rating">--%>
<%--                                <p>--%>
<%--                                    <i class="fa-solid fa-star" style="color: #ea744d;"></i>--%>
<%--                                    <i class="fa-solid fa-star" style="color: #ea744d;"></i>--%>
<%--                                    <i class="fa-solid fa-star" style="color: #ea744d;"></i>--%>
<%--                                    <i class="fa-solid fa-star" style="color: #ea744d;"></i>--%>
<%--                                    <i class="fa-solid fa-star" style="color: #ededed;"></i>--%>
<%--                                </p>--%>
<%--                                <p class="item-rating-total">40</p>--%>
<%--                                <a href="" class="item-ss"><i class="fa-solid fa-code-compare"--%>
<%--                                                              style="color: #333333;"></i>--%>
<%--                                    So sánh</a>--%>
<%--                            </div>--%>
<%--                        </a>--%>
<%--                    </div>--%>
<%--                    <div class="content-may-loc-mini">--%>
<%--                        <a href="" class="deal-items">--%>
<%--                            <div class="item-label">--%>
<%--                                <span>Trả góp 0%</span>--%>
<%--                            </div>--%>
<%--                            <div class="item-img">--%>
<%--                                <img src="img/ro-sunhouse-sha88118k-10-loi-kg-210223-102600-600x600.jpg"--%>
<%--                                     alt="">--%>
<%--                            </div>--%>
<%--                            <p class="label-gia-re">--%>
<%--                                <img src="img/50x50-100x101-3.webp" alt="">--%>
<%--                                <span>GIÁ RẺ QUÁ</span>--%>
<%--                            </p>--%>
<%--                            <h3>Máy lọc nước RO Sunhouse SHA88118K</h3>--%>
<%--                            <div class="item-compare">--%>
<%--                                <span>Tủ đứng</span>--%>
<%--                                <span>Lắp đặt miễn phí</span>--%>
<%--                            </div>--%>
<%--                            <p class="item-online-gia-re">--%>
<%--                                <i class="fa-solid fa-coins" style="color: #db2663;"></i>--%>
<%--                                Online giá rẻ quá--%>
<%--                            </p>--%>
<%--                            <div class="gia-sale">--%>
<%--                                <p class="price-old">8.690.000 </p>--%>
<%--                                <span class="percent">-54%</span>--%>
<%--                            </div>--%>
<%--                            <strong class="price-sale">3.990.000₫</strong>--%>
<%--                            <div class="item-rating">--%>
<%--                                <p>--%>
<%--                                    <i class="fa-solid fa-star" style="color: #ea744d;"></i>--%>
<%--                                    <i class="fa-solid fa-star" style="color: #ea744d;"></i>--%>
<%--                                    <i class="fa-solid fa-star" style="color: #ea744d;"></i>--%>
<%--                                    <i class="fa-solid fa-star" style="color: #ea744d;"></i>--%>
<%--                                    <i class="fa-solid fa-star" style="color: #ededed;"></i>--%>
<%--                                </p>--%>
<%--                                <p class="item-rating-total">40</p>--%>
<%--                                <a href="" class="item-ss"><i class="fa-solid fa-code-compare"--%>
<%--                                                              style="color: #333333;"></i>--%>
<%--                                    So sánh</a>--%>
<%--                            </div>--%>
<%--                        </a>--%>
<%--                    </div>--%>
<%--                    <div class="content-may-loc-mini">--%>
<%--                        <a href="" class="deal-items">--%>
<%--                            <div class="item-label">--%>
<%--                                <span>Trả góp 0%</span>--%>
<%--                            </div>--%>
<%--                            <div class="item-img">--%>
<%--                                <img src="img/ro-sunhouse-sha88118k-10-loi-kg-210223-102600-600x600.jpg"--%>
<%--                                     alt="">--%>
<%--                            </div>--%>
<%--                            <p class="label-gia-re">--%>
<%--                                <img src="img/50x50-100x101-3.webp" alt="">--%>
<%--                                <span>GIÁ RẺ QUÁ</span>--%>
<%--                            </p>--%>
<%--                            <h3>Máy lọc nước RO Sunhouse SHA88118K</h3>--%>
<%--                            <div class="item-compare">--%>
<%--                                <span>Tủ đứng</span>--%>
<%--                                <span>Lắp đặt miễn phí</span>--%>
<%--                            </div>--%>
<%--                            <p class="item-online-gia-re">--%>
<%--                                <i class="fa-solid fa-coins" style="color: #db2663;"></i>--%>
<%--                                Online giá rẻ quá--%>
<%--                            </p>--%>
<%--                            <div class="gia-sale">--%>
<%--                                <p class="price-old">8.690.000 </p>--%>
<%--                                <span class="percent">-54%</span>--%>
<%--                            </div>--%>
<%--                            <strong class="price-sale">3.990.000₫</strong>--%>
<%--                            <div class="item-rating">--%>
<%--                                <p>--%>
<%--                                    <i class="fa-solid fa-star" style="color: #ea744d;"></i>--%>
<%--                                    <i class="fa-solid fa-star" style="color: #ea744d;"></i>--%>
<%--                                    <i class="fa-solid fa-star" style="color: #ea744d;"></i>--%>
<%--                                    <i class="fa-solid fa-star" style="color: #ea744d;"></i>--%>
<%--                                    <i class="fa-solid fa-star" style="color: #ededed;"></i>--%>
<%--                                </p>--%>
<%--                                <p class="item-rating-total">40</p>--%>
<%--                                <a href="" class="item-ss"><i class="fa-solid fa-code-compare"--%>
<%--                                                              style="color: #333333;"></i>--%>
<%--                                    So sánh</a>--%>
<%--                            </div>--%>
<%--                        </a>--%>
<%--                    </div>--%>
<%--                    <div class="content-may-loc-mini">--%>
<%--                        <a href="" class="deal-items">--%>
<%--                            <div class="item-label">--%>
<%--                                <span>Trả góp 0%</span>--%>
<%--                            </div>--%>
<%--                            <div class="item-img">--%>
<%--                                <img src="img/ro-sunhouse-sha88118k-10-loi-kg-210223-102600-600x600.jpg"--%>
<%--                                     alt="">--%>
<%--                            </div>--%>
<%--                            <p class="label-gia-re">--%>
<%--                                <img src="img/50x50-100x101-3.webp" alt="">--%>
<%--                                <span>GIÁ RẺ QUÁ</span>--%>
<%--                            </p>--%>
<%--                            <h3>Máy lọc nước RO Sunhouse SHA88118K</h3>--%>
<%--                            <div class="item-compare">--%>
<%--                                <span>Tủ đứng</span>--%>
<%--                                <span>Lắp đặt miễn phí</span>--%>
<%--                            </div>--%>
<%--                            <p class="item-online-gia-re">--%>
<%--                                <i class="fa-solid fa-coins" style="color: #db2663;"></i>--%>
<%--                                Online giá rẻ quá--%>
<%--                            </p>--%>
<%--                            <div class="gia-sale">--%>
<%--                                <p class="price-old">8.690.000 </p>--%>
<%--                                <span class="percent">-54%</span>--%>
<%--                            </div>--%>
<%--                            <strong class="price-sale">3.990.000₫</strong>--%>
<%--                            <div class="item-rating">--%>
<%--                                <p>--%>
<%--                                    <i class="fa-solid fa-star" style="color: #ea744d;"></i>--%>
<%--                                    <i class="fa-solid fa-star" style="color: #ea744d;"></i>--%>
<%--                                    <i class="fa-solid fa-star" style="color: #ea744d;"></i>--%>
<%--                                    <i class="fa-solid fa-star" style="color: #ea744d;"></i>--%>
<%--                                    <i class="fa-solid fa-star" style="color: #ededed;"></i>--%>
<%--                                </p>--%>
<%--                                <p class="item-rating-total">40</p>--%>
<%--                                <a href="" class="item-ss"><i class="fa-solid fa-code-compare"--%>
<%--                                                              style="color: #333333;"></i>--%>
<%--                                    So sánh</a>--%>
<%--                            </div>--%>
<%--                        </a>--%>
<%--                    </div>--%>
<%--                    <div class="content-may-loc-mini">--%>
<%--                        <a href="" class="deal-items">--%>
<%--                            <div class="item-label">--%>
<%--                                <span>Trả góp 0%</span>--%>
<%--                            </div>--%>
<%--                            <div class="item-img">--%>
<%--                                <img src="img/ro-sunhouse-sha88118k-10-loi-kg-210223-102600-600x600.jpg"--%>
<%--                                     alt="">--%>
<%--                            </div>--%>
<%--                            <p class="label-gia-re">--%>
<%--                                <img src="img/50x50-100x101-3.webp" alt="">--%>
<%--                                <span>GIÁ RẺ QUÁ</span>--%>
<%--                            </p>--%>
<%--                            <h3>Máy lọc nước RO Sunhouse SHA88118K</h3>--%>
<%--                            <div class="item-compare">--%>
<%--                                <span>Tủ đứng</span>--%>
<%--                                <span>Lắp đặt miễn phí</span>--%>
<%--                            </div>--%>
<%--                            <p class="item-online-gia-re">--%>
<%--                                <i class="fa-solid fa-coins" style="color: #db2663;"></i>--%>
<%--                                Online giá rẻ quá--%>
<%--                            </p>--%>
<%--                            <div class="gia-sale">--%>
<%--                                <p class="price-old">8.690.000 </p>--%>
<%--                                <span class="percent">-54%</span>--%>
<%--                            </div>--%>
<%--                            <strong class="price-sale">3.990.000₫</strong>--%>
<%--                            <div class="item-rating">--%>
<%--                                <p>--%>
<%--                                    <i class="fa-solid fa-star" style="color: #ea744d;"></i>--%>
<%--                                    <i class="fa-solid fa-star" style="color: #ea744d;"></i>--%>
<%--                                    <i class="fa-solid fa-star" style="color: #ea744d;"></i>--%>
<%--                                    <i class="fa-solid fa-star" style="color: #ea744d;"></i>--%>
<%--                                    <i class="fa-solid fa-star" style="color: #ededed;"></i>--%>
<%--                                </p>--%>
<%--                                <p class="item-rating-total">40</p>--%>
<%--                                <a href="" class="item-ss"><i class="fa-solid fa-code-compare"--%>
<%--                                                              style="color: #333333;"></i>--%>
<%--                                    So sánh</a>--%>
<%--                            </div>--%>
<%--                        </a>--%>
<%--                    </div>--%>
<%--                    <div class="content-may-loc-mini">--%>
<%--                        <a href="" class="deal-items">--%>
<%--                            <div class="item-label">--%>
<%--                                <span>Trả góp 0%</span>--%>
<%--                            </div>--%>
<%--                            <div class="item-img">--%>
<%--                                <img src="img/ro-sunhouse-sha88118k-10-loi-kg-210223-102600-600x600.jpg"--%>
<%--                                     alt="">--%>
<%--                            </div>--%>
<%--                            <p class="label-gia-re">--%>
<%--                                <img src="img/50x50-100x101-3.webp" alt="">--%>
<%--                                <span>GIÁ RẺ QUÁ</span>--%>
<%--                            </p>--%>
<%--                            <h3>Máy lọc nước RO Sunhouse SHA88118K</h3>--%>
<%--                            <div class="item-compare">--%>
<%--                                <span>Tủ đứng</span>--%>
<%--                                <span>Lắp đặt miễn phí</span>--%>
<%--                            </div>--%>
<%--                            <p class="item-online-gia-re">--%>
<%--                                <i class="fa-solid fa-coins" style="color: #db2663;"></i>--%>
<%--                                Online giá rẻ quá--%>
<%--                            </p>--%>
<%--                            <div class="gia-sale">--%>
<%--                                <p class="price-old">8.690.000 </p>--%>
<%--                                <span class="percent">-54%</span>--%>
<%--                            </div>--%>
<%--                            <strong class="price-sale">3.990.000₫</strong>--%>
<%--                            <div class="item-rating">--%>
<%--                                <p>--%>
<%--                                    <i class="fa-solid fa-star" style="color: #ea744d;"></i>--%>
<%--                                    <i class="fa-solid fa-star" style="color: #ea744d;"></i>--%>
<%--                                    <i class="fa-solid fa-star" style="color: #ea744d;"></i>--%>
<%--                                    <i class="fa-solid fa-star" style="color: #ea744d;"></i>--%>
<%--                                    <i class="fa-solid fa-star" style="color: #ededed;"></i>--%>
<%--                                </p>--%>
<%--                                <p class="item-rating-total">40</p>--%>
<%--                                <a href="" class="item-ss"><i class="fa-solid fa-code-compare"--%>
<%--                                                              style="color: #333333;"></i>--%>
<%--                                    So sánh</a>--%>
<%--                            </div>--%>
<%--                        </a>--%>
<%--                    </div>--%>
<%--                    <div class="content-may-loc-mini">--%>
<%--                        <a href="" class="deal-items">--%>
<%--                            <div class="item-label">--%>
<%--                                <span>Trả góp 0%</span>--%>
<%--                            </div>--%>
<%--                            <div class="item-img">--%>
<%--                                <img src="img/ro-sunhouse-sha88118k-10-loi-kg-210223-102600-600x600.jpg"--%>
<%--                                     alt="">--%>
<%--                            </div>--%>
<%--                            <p class="label-gia-re">--%>
<%--                                <img src="img/50x50-100x101-3.webp" alt="">--%>
<%--                                <span>GIÁ RẺ QUÁ</span>--%>
<%--                            </p>--%>
<%--                            <h3>Máy lọc nước RO Sunhouse SHA88118K</h3>--%>
<%--                            <div class="item-compare">--%>
<%--                                <span>Tủ đứng</span>--%>
<%--                                <span>Lắp đặt miễn phí</span>--%>
<%--                            </div>--%>
<%--                            <p class="item-online-gia-re">--%>
<%--                                <i class="fa-solid fa-coins" style="color: #db2663;"></i>--%>
<%--                                Online giá rẻ quá--%>
<%--                            </p>--%>
<%--                            <div class="gia-sale">--%>
<%--                                <p class="price-old">8.690.000 </p>--%>
<%--                                <span class="percent">-54%</span>--%>
<%--                            </div>--%>
<%--                            <strong class="price-sale">3.990.000₫</strong>--%>
<%--                            <div class="item-rating">--%>
<%--                                <p>--%>
<%--                                    <i class="fa-solid fa-star" style="color: #ea744d;"></i>--%>
<%--                                    <i class="fa-solid fa-star" style="color: #ea744d;"></i>--%>
<%--                                    <i class="fa-solid fa-star" style="color: #ea744d;"></i>--%>
<%--                                    <i class="fa-solid fa-star" style="color: #ea744d;"></i>--%>
<%--                                    <i class="fa-solid fa-star" style="color: #ededed;"></i>--%>
<%--                                </p>--%>
<%--                                <p class="item-rating-total">40</p>--%>
<%--                                <a href="" class="item-ss"><i class="fa-solid fa-code-compare"--%>
<%--                                                              style="color: #333333;"></i>--%>
<%--                                    So sánh</a>--%>
<%--                            </div>--%>
<%--                        </a>--%>
<%--                    </div>--%>
<%--                    <div class="content-may-loc-mini">--%>
<%--                        <a href="" class="deal-items">--%>
<%--                            <div class="item-label">--%>
<%--                                <span>Trả góp 0%</span>--%>
<%--                            </div>--%>
<%--                            <div class="item-img">--%>
<%--                                <img src="img/ro-sunhouse-sha88118k-10-loi-kg-210223-102600-600x600.jpg"--%>
<%--                                     alt="">--%>
<%--                            </div>--%>
<%--                            <p class="label-gia-re">--%>
<%--                                <img src="img/50x50-100x101-3.webp" alt="">--%>
<%--                                <span>GIÁ RẺ QUÁ</span>--%>
<%--                            </p>--%>
<%--                            <h3>Máy lọc nước RO Sunhouse SHA88118K</h3>--%>
<%--                            <div class="item-compare">--%>
<%--                                <span>Tủ đứng</span>--%>
<%--                                <span>Lắp đặt miễn phí</span>--%>
<%--                            </div>--%>
<%--                            <p class="item-online-gia-re">--%>
<%--                                <i class="fa-solid fa-coins" style="color: #db2663;"></i>--%>
<%--                                Online giá rẻ quá--%>
<%--                            </p>--%>
<%--                            <div class="gia-sale">--%>
<%--                                <p class="price-old">8.690.000 </p>--%>
<%--                                <span class="percent">-54%</span>--%>
<%--                            </div>--%>
<%--                            <strong class="price-sale">3.990.000₫</strong>--%>
<%--                            <div class="item-rating">--%>
<%--                                <p>--%>
<%--                                    <i class="fa-solid fa-star" style="color: #ea744d;"></i>--%>
<%--                                    <i class="fa-solid fa-star" style="color: #ea744d;"></i>--%>
<%--                                    <i class="fa-solid fa-star" style="color: #ea744d;"></i>--%>
<%--                                    <i class="fa-solid fa-star" style="color: #ea744d;"></i>--%>
<%--                                    <i class="fa-solid fa-star" style="color: #ededed;"></i>--%>
<%--                                </p>--%>
<%--                                <p class="item-rating-total">40</p>--%>
<%--                                <a href="" class="item-ss"><i class="fa-solid fa-code-compare"--%>
<%--                                                              style="color: #333333;"></i>--%>
<%--                                    So sánh</a>--%>
<%--                            </div>--%>
<%--                        </a>--%>
<%--                    </div>--%>
<%--                    <div class="content-may-loc-mini">--%>
<%--                        <a href="" class="deal-items">--%>
<%--                            <div class="item-label">--%>
<%--                                <span>Trả góp 0%</span>--%>
<%--                            </div>--%>
<%--                            <div class="item-img">--%>
<%--                                <img src="img/ro-sunhouse-sha88118k-10-loi-kg-210223-102600-600x600.jpg"--%>
<%--                                     alt="">--%>
<%--                            </div>--%>
<%--                            <p class="label-gia-re">--%>
<%--                                <img src="img/50x50-100x101-3.webp" alt="">--%>
<%--                                <span>GIÁ RẺ QUÁ</span>--%>
<%--                            </p>--%>
<%--                            <h3>Máy lọc nước RO Sunhouse SHA88118K</h3>--%>
<%--                            <div class="item-compare">--%>
<%--                                <span>Tủ đứng</span>--%>
<%--                                <span>Lắp đặt miễn phí</span>--%>
<%--                            </div>--%>
<%--                            <p class="item-online-gia-re">--%>
<%--                                <i class="fa-solid fa-coins" style="color: #db2663;"></i>--%>
<%--                                Online giá rẻ quá--%>
<%--                            </p>--%>
<%--                            <div class="gia-sale">--%>
<%--                                <p class="price-old">8.690.000 </p>--%>
<%--                                <span class="percent">-54%</span>--%>
<%--                            </div>--%>
<%--                            <strong class="price-sale">3.990.000₫</strong>--%>
<%--                            <div class="item-rating">--%>
<%--                                <p>--%>
<%--                                    <i class="fa-solid fa-star" style="color: #ea744d;"></i>--%>
<%--                                    <i class="fa-solid fa-star" style="color: #ea744d;"></i>--%>
<%--                                    <i class="fa-solid fa-star" style="color: #ea744d;"></i>--%>
<%--                                    <i class="fa-solid fa-star" style="color: #ea744d;"></i>--%>
<%--                                    <i class="fa-solid fa-star" style="color: #ededed;"></i>--%>
<%--                                </p>--%>
<%--                                <p class="item-rating-total">40</p>--%>
<%--                                <a href="" class="item-ss"><i class="fa-solid fa-code-compare"--%>
<%--                                                              style="color: #333333;"></i>--%>
<%--                                    So sánh</a>--%>
<%--                            </div>--%>
<%--                        </a>--%>
<%--                    </div>--%>
<%--                    <div class="content-may-loc-mini">--%>
<%--                        <a href="" class="deal-items">--%>
<%--                            <div class="item-label">--%>
<%--                                <span>Trả góp 0%</span>--%>
<%--                            </div>--%>
<%--                            <div class="item-img">--%>
<%--                                <img src="img/ro-sunhouse-sha88118k-10-loi-kg-210223-102600-600x600.jpg"--%>
<%--                                     alt="">--%>
<%--                            </div>--%>
<%--                            <p class="label-gia-re">--%>
<%--                                <img src="img/50x50-100x101-3.webp" alt="">--%>
<%--                                <span>GIÁ RẺ QUÁ</span>--%>
<%--                            </p>--%>
<%--                            <h3>Máy lọc nước RO Sunhouse SHA88118K</h3>--%>
<%--                            <div class="item-compare">--%>
<%--                                <span>Tủ đứng</span>--%>
<%--                                <span>Lắp đặt miễn phí</span>--%>
<%--                            </div>--%>
<%--                            <p class="item-online-gia-re">--%>
<%--                                <i class="fa-solid fa-coins" style="color: #db2663;"></i>--%>
<%--                                Online giá rẻ quá--%>
<%--                            </p>--%>
<%--                            <div class="gia-sale">--%>
<%--                                <p class="price-old">8.690.000 </p>--%>
<%--                                <span class="percent">-54%</span>--%>
<%--                            </div>--%>
<%--                            <strong class="price-sale">3.990.000₫</strong>--%>
<%--                            <div class="item-rating">--%>
<%--                                <p>--%>
<%--                                    <i class="fa-solid fa-star" style="color: #ea744d;"></i>--%>
<%--                                    <i class="fa-solid fa-star" style="color: #ea744d;"></i>--%>
<%--                                    <i class="fa-solid fa-star" style="color: #ea744d;"></i>--%>
<%--                                    <i class="fa-solid fa-star" style="color: #ea744d;"></i>--%>
<%--                                    <i class="fa-solid fa-star" style="color: #ededed;"></i>--%>
<%--                                </p>--%>
<%--                                <p class="item-rating-total">40</p>--%>
<%--                                <a href="" class="item-ss"><i class="fa-solid fa-code-compare"--%>
<%--                                                              style="color: #333333;"></i>--%>
<%--                                    So sánh</a>--%>
<%--                            </div>--%>
<%--                        </a>--%>
<%--                    </div>--%>
<%--                    <div class="content-may-loc-mini">--%>
<%--                        <a href="" class="deal-items">--%>
<%--                            <div class="item-label">--%>
<%--                                <span>Trả góp 0%</span>--%>
<%--                            </div>--%>
<%--                            <div class="item-img">--%>
<%--                                <img src="img/ro-sunhouse-sha88118k-10-loi-kg-210223-102600-600x600.jpg"--%>
<%--                                     alt="">--%>
<%--                            </div>--%>
<%--                            <p class="label-gia-re">--%>
<%--                                <img src="img/50x50-100x101-3.webp" alt="">--%>
<%--                                <span>GIÁ RẺ QUÁ</span>--%>
<%--                            </p>--%>
<%--                            <h3>Máy lọc nước RO Sunhouse SHA88118K</h3>--%>
<%--                            <div class="item-compare">--%>
<%--                                <span>Tủ đứng</span>--%>
<%--                                <span>Lắp đặt miễn phí</span>--%>
<%--                            </div>--%>
<%--                            <p class="item-online-gia-re">--%>
<%--                                <i class="fa-solid fa-coins" style="color: #db2663;"></i>--%>
<%--                                Online giá rẻ quá--%>
<%--                            </p>--%>
<%--                            <div class="gia-sale">--%>
<%--                                <p class="price-old">8.690.000 </p>--%>
<%--                                <span class="percent">-54%</span>--%>
<%--                            </div>--%>
<%--                            <strong class="price-sale">3.990.000₫</strong>--%>
<%--                            <div class="item-rating">--%>
<%--                                <p>--%>
<%--                                    <i class="fa-solid fa-star" style="color: #ea744d;"></i>--%>
<%--                                    <i class="fa-solid fa-star" style="color: #ea744d;"></i>--%>
<%--                                    <i class="fa-solid fa-star" style="color: #ea744d;"></i>--%>
<%--                                    <i class="fa-solid fa-star" style="color: #ea744d;"></i>--%>
<%--                                    <i class="fa-solid fa-star" style="color: #ededed;"></i>--%>
<%--                                </p>--%>
<%--                                <p class="item-rating-total">40</p>--%>
<%--                                <a href="" class="item-ss"><i class="fa-solid fa-code-compare"--%>
<%--                                                              style="color: #333333;"></i>--%>
<%--                                    So sánh</a>--%>
<%--                            </div>--%>
<%--                        </a>--%>
<%--                    </div>--%>
<%--                    <div class="content-may-loc-mini">--%>
<%--                        <a href="" class="deal-items">--%>
<%--                            <div class="item-label">--%>
<%--                                <span>Trả góp 0%</span>--%>
<%--                            </div>--%>
<%--                            <div class="item-img">--%>
<%--                                <img src="img/ro-sunhouse-sha88118k-10-loi-kg-210223-102600-600x600.jpg"--%>
<%--                                     alt="">--%>
<%--                            </div>--%>
<%--                            <p class="label-gia-re">--%>
<%--                                <img src="img/50x50-100x101-3.webp" alt="">--%>
<%--                                <span>GIÁ RẺ QUÁ</span>--%>
<%--                            </p>--%>
<%--                            <h3>Máy lọc nước RO Sunhouse SHA88118K</h3>--%>
<%--                            <div class="item-compare">--%>
<%--                                <span>Tủ đứng</span>--%>
<%--                                <span>Lắp đặt miễn phí</span>--%>
<%--                            </div>--%>
<%--                            <p class="item-online-gia-re">--%>
<%--                                <i class="fa-solid fa-coins" style="color: #db2663;"></i>--%>
<%--                                Online giá rẻ quá--%>
<%--                            </p>--%>
<%--                            <div class="gia-sale">--%>
<%--                                <p class="price-old">8.690.000 </p>--%>
<%--                                <span class="percent">-54%</span>--%>
<%--                            </div>--%>
<%--                            <strong class="price-sale">3.990.000₫</strong>--%>
<%--                            <div class="item-rating">--%>
<%--                                <p>--%>
<%--                                    <i class="fa-solid fa-star" style="color: #ea744d;"></i>--%>
<%--                                    <i class="fa-solid fa-star" style="color: #ea744d;"></i>--%>
<%--                                    <i class="fa-solid fa-star" style="color: #ea744d;"></i>--%>
<%--                                    <i class="fa-solid fa-star" style="color: #ea744d;"></i>--%>
<%--                                    <i class="fa-solid fa-star" style="color: #ededed;"></i>--%>
<%--                                </p>--%>
<%--                                <p class="item-rating-total">40</p>--%>
<%--                                <a href="" class="item-ss"><i class="fa-solid fa-code-compare"--%>
<%--                                                              style="color: #333333;"></i>--%>
<%--                                    So sánh</a>--%>
<%--                            </div>--%>
<%--                        </a>--%>
<%--                    </div>--%>
<%--                    <div class="content-may-loc-mini">--%>
<%--                        <a href="" class="deal-items">--%>
<%--                            <div class="item-label">--%>
<%--                                <span>Trả góp 0%</span>--%>
<%--                            </div>--%>
<%--                            <div class="item-img">--%>
<%--                                <img src="img/ro-sunhouse-sha88118k-10-loi-kg-210223-102600-600x600.jpg"--%>
<%--                                     alt="">--%>
<%--                            </div>--%>
<%--                            <p class="label-gia-re">--%>
<%--                                <img src="img/50x50-100x101-3.webp" alt="">--%>
<%--                                <span>GIÁ RẺ QUÁ</span>--%>
<%--                            </p>--%>
<%--                            <h3>Máy lọc nước RO Sunhouse SHA88118K</h3>--%>
<%--                            <div class="item-compare">--%>
<%--                                <span>Tủ đứng</span>--%>
<%--                                <span>Lắp đặt miễn phí</span>--%>
<%--                            </div>--%>
<%--                            <p class="item-online-gia-re">--%>
<%--                                <i class="fa-solid fa-coins" style="color: #db2663;"></i>--%>
<%--                                Online giá rẻ quá--%>
<%--                            </p>--%>
<%--                            <div class="gia-sale">--%>
<%--                                <p class="price-old">8.690.000 </p>--%>
<%--                                <span class="percent">-54%</span>--%>
<%--                            </div>--%>
<%--                            <strong class="price-sale">3.990.000₫</strong>--%>
<%--                            <div class="item-rating">--%>
<%--                                <p>--%>
<%--                                    <i class="fa-solid fa-star" style="color: #ea744d;"></i>--%>
<%--                                    <i class="fa-solid fa-star" style="color: #ea744d;"></i>--%>
<%--                                    <i class="fa-solid fa-star" style="color: #ea744d;"></i>--%>
<%--                                    <i class="fa-solid fa-star" style="color: #ea744d;"></i>--%>
<%--                                    <i class="fa-solid fa-star" style="color: #ededed;"></i>--%>
<%--                                </p>--%>
<%--                                <p class="item-rating-total">40</p>--%>
<%--                                <a href="" class="item-ss"><i class="fa-solid fa-code-compare"--%>
<%--                                                              style="color: #333333;"></i>--%>
<%--                                    So sánh</a>--%>
<%--                            </div>--%>
<%--                        </a>--%>
<%--                    </div>--%>
<%--                    <div class="content-may-loc-mini">--%>
<%--                        <a href="" class="deal-items">--%>
<%--                            <div class="item-label">--%>
<%--                                <span>Trả góp 0%</span>--%>
<%--                            </div>--%>
<%--                            <div class="item-img">--%>
<%--                                <img src="img/ro-sunhouse-sha88118k-10-loi-kg-210223-102600-600x600.jpg"--%>
<%--                                     alt="">--%>
<%--                            </div>--%>
<%--                            <p class="label-gia-re">--%>
<%--                                <img src="img/50x50-100x101-3.webp" alt="">--%>
<%--                                <span>GIÁ RẺ QUÁ</span>--%>
<%--                            </p>--%>
<%--                            <h3>Máy lọc nước RO Sunhouse SHA88118K</h3>--%>
<%--                            <div class="item-compare">--%>
<%--                                <span>Tủ đứng</span>--%>
<%--                                <span>Lắp đặt miễn phí</span>--%>
<%--                            </div>--%>
<%--                            <p class="item-online-gia-re">--%>
<%--                                <i class="fa-solid fa-coins" style="color: #db2663;"></i>--%>
<%--                                Online giá rẻ quá--%>
<%--                            </p>--%>
<%--                            <div class="gia-sale">--%>
<%--                                <p class="price-old">8.690.000 </p>--%>
<%--                                <span class="percent">-54%</span>--%>
<%--                            </div>--%>
<%--                            <strong class="price-sale">3.990.000₫</strong>--%>
<%--                            <div class="item-rating">--%>
<%--                                <p>--%>
<%--                                    <i class="fa-solid fa-star" style="color: #ea744d;"></i>--%>
<%--                                    <i class="fa-solid fa-star" style="color: #ea744d;"></i>--%>
<%--                                    <i class="fa-solid fa-star" style="color: #ea744d;"></i>--%>
<%--                                    <i class="fa-solid fa-star" style="color: #ea744d;"></i>--%>
<%--                                    <i class="fa-solid fa-star" style="color: #ededed;"></i>--%>
<%--                                </p>--%>
<%--                                <p class="item-rating-total">40</p>--%>
<%--                                <a href="" class="item-ss"><i class="fa-solid fa-code-compare"--%>
<%--                                                              style="color: #333333;"></i>--%>
<%--                                    So sánh</a>--%>
<%--                            </div>--%>
<%--                        </a>--%>
<%--                    </div>--%>
<%--                    <div class="content-may-loc-mini">--%>
<%--                        <a href="" class="deal-items">--%>
<%--                            <div class="item-label">--%>
<%--                                <span>Trả góp 0%</span>--%>
<%--                            </div>--%>
<%--                            <div class="item-img">--%>
<%--                                <img src="img/ro-sunhouse-sha88118k-10-loi-kg-210223-102600-600x600.jpg"--%>
<%--                                     alt="">--%>
<%--                            </div>--%>
<%--                            <p class="label-gia-re">--%>
<%--                                <img src="img/50x50-100x101-3.webp" alt="">--%>
<%--                                <span>GIÁ RẺ QUÁ</span>--%>
<%--                            </p>--%>
<%--                            <h3>Máy lọc nước RO Sunhouse SHA88118K</h3>--%>
<%--                            <div class="item-compare">--%>
<%--                                <span>Tủ đứng</span>--%>
<%--                                <span>Lắp đặt miễn phí</span>--%>
<%--                            </div>--%>
<%--                            <p class="item-online-gia-re">--%>
<%--                                <i class="fa-solid fa-coins" style="color: #db2663;"></i>--%>
<%--                                Online giá rẻ quá--%>
<%--                            </p>--%>
<%--                            <div class="gia-sale">--%>
<%--                                <p class="price-old">8.690.000 </p>--%>
<%--                                <span class="percent">-54%</span>--%>
<%--                            </div>--%>
<%--                            <strong class="price-sale">3.990.000₫</strong>--%>
<%--                            <div class="item-rating">--%>
<%--                                <p>--%>
<%--                                    <i class="fa-solid fa-star" style="color: #ea744d;"></i>--%>
<%--                                    <i class="fa-solid fa-star" style="color: #ea744d;"></i>--%>
<%--                                    <i class="fa-solid fa-star" style="color: #ea744d;"></i>--%>
<%--                                    <i class="fa-solid fa-star" style="color: #ea744d;"></i>--%>
<%--                                    <i class="fa-solid fa-star" style="color: #ededed;"></i>--%>
<%--                                </p>--%>
<%--                                <p class="item-rating-total">40</p>--%>
<%--                                <a href="" class="item-ss"><i class="fa-solid fa-code-compare"--%>
<%--                                                              style="color: #333333;"></i>--%>
<%--                                    So sánh</a>--%>
<%--                            </div>--%>
<%--                        </a>--%>
<%--                    </div>--%>
<%--                    <div class="content-may-loc-mini">--%>
<%--                        <a href="" class="deal-items">--%>
<%--                            <div class="item-label">--%>
<%--                                <span>Trả góp 0%</span>--%>
<%--                            </div>--%>
<%--                            <div class="item-img">--%>
<%--                                <img src="img/ro-sunhouse-sha88118k-10-loi-kg-210223-102600-600x600.jpg"--%>
<%--                                     alt="">--%>
<%--                            </div>--%>
<%--                            <p class="label-gia-re">--%>
<%--                                <img src="img/50x50-100x101-3.webp" alt="">--%>
<%--                                <span>GIÁ RẺ QUÁ</span>--%>
<%--                            </p>--%>
<%--                            <h3>Máy lọc nước RO Sunhouse SHA88118K</h3>--%>
<%--                            <div class="item-compare">--%>
<%--                                <span>Tủ đứng</span>--%>
<%--                                <span>Lắp đặt miễn phí</span>--%>
<%--                            </div>--%>
<%--                            <p class="item-online-gia-re">--%>
<%--                                <i class="fa-solid fa-coins" style="color: #db2663;"></i>--%>
<%--                                Online giá rẻ quá--%>
<%--                            </p>--%>
<%--                            <div class="gia-sale">--%>
<%--                                <p class="price-old">8.690.000 </p>--%>
<%--                                <span class="percent">-54%</span>--%>
<%--                            </div>--%>
<%--                            <strong class="price-sale">3.990.000₫</strong>--%>
<%--                            <div class="item-rating">--%>
<%--                                <p>--%>
<%--                                    <i class="fa-solid fa-star" style="color: #ea744d;"></i>--%>
<%--                                    <i class="fa-solid fa-star" style="color: #ea744d;"></i>--%>
<%--                                    <i class="fa-solid fa-star" style="color: #ea744d;"></i>--%>
<%--                                    <i class="fa-solid fa-star" style="color: #ea744d;"></i>--%>
<%--                                    <i class="fa-solid fa-star" style="color: #ededed;"></i>--%>
<%--                                </p>--%>
<%--                                <p class="item-rating-total">40</p>--%>
<%--                                <a href="" class="item-ss"><i class="fa-solid fa-code-compare"--%>
<%--                                                              style="color: #333333;"></i>--%>
<%--                                    So sánh</a>--%>
<%--                            </div>--%>
<%--                        </a>--%>
<%--                    </div>--%>
<%--                    <div class="content-may-loc-mini">--%>
<%--                        <a href="" class="deal-items">--%>
<%--                            <div class="item-label">--%>
<%--                                <span>Trả góp 0%</span>--%>
<%--                            </div>--%>
<%--                            <div class="item-img">--%>
<%--                                <img src="img/ro-sunhouse-sha88118k-10-loi-kg-210223-102600-600x600.jpg"--%>
<%--                                     alt="">--%>
<%--                            </div>--%>
<%--                            <p class="label-gia-re">--%>
<%--                                <img src="img/50x50-100x101-3.webp" alt="">--%>
<%--                                <span>GIÁ RẺ QUÁ</span>--%>
<%--                            </p>--%>
<%--                            <h3>Máy lọc nước RO Sunhouse SHA88118K</h3>--%>
<%--                            <div class="item-compare">--%>
<%--                                <span>Tủ đứng</span>--%>
<%--                                <span>Lắp đặt miễn phí</span>--%>
<%--                            </div>--%>
<%--                            <p class="item-online-gia-re">--%>
<%--                                <i class="fa-solid fa-coins" style="color: #db2663;"></i>--%>
<%--                                Online giá rẻ quá--%>
<%--                            </p>--%>
<%--                            <div class="gia-sale">--%>
<%--                                <p class="price-old">8.690.000 </p>--%>
<%--                                <span class="percent">-54%</span>--%>
<%--                            </div>--%>
<%--                            <strong class="price-sale">3.990.000₫</strong>--%>
<%--                            <div class="item-rating">--%>
<%--                                <p>--%>
<%--                                    <i class="fa-solid fa-star" style="color: #ea744d;"></i>--%>
<%--                                    <i class="fa-solid fa-star" style="color: #ea744d;"></i>--%>
<%--                                    <i class="fa-solid fa-star" style="color: #ea744d;"></i>--%>
<%--                                    <i class="fa-solid fa-star" style="color: #ea744d;"></i>--%>
<%--                                    <i class="fa-solid fa-star" style="color: #ededed;"></i>--%>
<%--                                </p>--%>
<%--                                <p class="item-rating-total">40</p>--%>
<%--                                <a href="" class="item-ss"><i class="fa-solid fa-code-compare"--%>
<%--                                                              style="color: #333333;"></i>--%>
<%--                                    So sánh</a>--%>
<%--                            </div>--%>
<%--                        </a>--%>
<%--                    </div>--%>
<%--                    <div class="content-may-loc-mini">--%>
<%--                        <a href="" class="deal-items">--%>
<%--                            <div class="item-label">--%>
<%--                                <span>Trả góp 0%</span>--%>
<%--                            </div>--%>
<%--                            <div class="item-img">--%>
<%--                                <img src="img/ro-sunhouse-sha88118k-10-loi-kg-210223-102600-600x600.jpg"--%>
<%--                                     alt="">--%>
<%--                            </div>--%>
<%--                            <p class="label-gia-re">--%>
<%--                                <img src="img/50x50-100x101-3.webp" alt="">--%>
<%--                                <span>GIÁ RẺ QUÁ</span>--%>
<%--                            </p>--%>
<%--                            <h3>Máy lọc nước RO Sunhouse SHA88118K</h3>--%>
<%--                            <div class="item-compare">--%>
<%--                                <span>Tủ đứng</span>--%>
<%--                                <span>Lắp đặt miễn phí</span>--%>
<%--                            </div>--%>
<%--                            <p class="item-online-gia-re">--%>
<%--                                <i class="fa-solid fa-coins" style="color: #db2663;"></i>--%>
<%--                                Online giá rẻ quá--%>
<%--                            </p>--%>
<%--                            <div class="gia-sale">--%>
<%--                                <p class="price-old">8.690.000 </p>--%>
<%--                                <span class="percent">-54%</span>--%>
<%--                            </div>--%>
<%--                            <strong class="price-sale">3.990.000₫</strong>--%>
<%--                            <div class="item-rating">--%>
<%--                                <p>--%>
<%--                                    <i class="fa-solid fa-star" style="color: #ea744d;"></i>--%>
<%--                                    <i class="fa-solid fa-star" style="color: #ea744d;"></i>--%>
<%--                                    <i class="fa-solid fa-star" style="color: #ea744d;"></i>--%>
<%--                                    <i class="fa-solid fa-star" style="color: #ea744d;"></i>--%>
<%--                                    <i class="fa-solid fa-star" style="color: #ededed;"></i>--%>
<%--                                </p>--%>
<%--                                <p class="item-rating-total">40</p>--%>
<%--                                <a href="" class="item-ss"><i class="fa-solid fa-code-compare"--%>
<%--                                                              style="color: #333333;"></i>--%>
<%--                                    So sánh</a>--%>
<%--                            </div>--%>
<%--                        </a>--%>
<%--                    </div>--%>
<%--                    <div class="content-may-loc-mini">--%>
<%--                        <a href="" class="deal-items">--%>
<%--                            <div class="item-label">--%>
<%--                                <span>Trả góp 0%</span>--%>
<%--                            </div>--%>
<%--                            <div class="item-img">--%>
<%--                                <img src="img/ro-sunhouse-sha88118k-10-loi-kg-210223-102600-600x600.jpg"--%>
<%--                                     alt="">--%>
<%--                            </div>--%>
<%--                            <p class="label-gia-re">--%>
<%--                                <img src="img/50x50-100x101-3.webp" alt="">--%>
<%--                                <span>GIÁ RẺ QUÁ</span>--%>
<%--                            </p>--%>
<%--                            <h3>Máy lọc nước RO Sunhouse SHA88118K</h3>--%>
<%--                            <div class="item-compare">--%>
<%--                                <span>Tủ đứng</span>--%>
<%--                                <span>Lắp đặt miễn phí</span>--%>
<%--                            </div>--%>
<%--                            <p class="item-online-gia-re">--%>
<%--                                <i class="fa-solid fa-coins" style="color: #db2663;"></i>--%>
<%--                                Online giá rẻ quá--%>
<%--                            </p>--%>
<%--                            <div class="gia-sale">--%>
<%--                                <p class="price-old">8.690.000 </p>--%>
<%--                                <span class="percent">-54%</span>--%>
<%--                            </div>--%>
<%--                            <strong class="price-sale">3.990.000₫</strong>--%>
<%--                            <div class="item-rating">--%>
<%--                                <p>--%>
<%--                                    <i class="fa-solid fa-star" style="color: #ea744d;"></i>--%>
<%--                                    <i class="fa-solid fa-star" style="color: #ea744d;"></i>--%>
<%--                                    <i class="fa-solid fa-star" style="color: #ea744d;"></i>--%>
<%--                                    <i class="fa-solid fa-star" style="color: #ea744d;"></i>--%>
<%--                                    <i class="fa-solid fa-star" style="color: #ededed;"></i>--%>
<%--                                </p>--%>
<%--                                <p class="item-rating-total">40</p>--%>
<%--                                <a href="" class="item-ss"><i class="fa-solid fa-code-compare"--%>
<%--                                                              style="color: #333333;"></i>--%>
<%--                                    So sánh</a>--%>
<%--                            </div>--%>
<%--                        </a>--%>
<%--                    </div>--%>
<%--                    <div class="content-may-loc-mini">--%>
<%--                        <a href="" class="deal-items">--%>
<%--                            <div class="item-label">--%>
<%--                                <span>Trả góp 0%</span>--%>
<%--                            </div>--%>
<%--                            <div class="item-img">--%>
<%--                                <img src="img/ro-sunhouse-sha88118k-10-loi-kg-210223-102600-600x600.jpg"--%>
<%--                                     alt="">--%>
<%--                            </div>--%>
<%--                            <p class="label-gia-re">--%>
<%--                                <img src="img/50x50-100x101-3.webp" alt="">--%>
<%--                                <span>GIÁ RẺ QUÁ</span>--%>
<%--                            </p>--%>
<%--                            <h3>Máy lọc nước RO Sunhouse SHA88118K</h3>--%>
<%--                            <div class="item-compare">--%>
<%--                                <span>Tủ đứng</span>--%>
<%--                                <span>Lắp đặt miễn phí</span>--%>
<%--                            </div>--%>
<%--                            <p class="item-online-gia-re">--%>
<%--                                <i class="fa-solid fa-coins" style="color: #db2663;"></i>--%>
<%--                                Online giá rẻ quá--%>
<%--                            </p>--%>
<%--                            <div class="gia-sale">--%>
<%--                                <p class="price-old">8.690.000 </p>--%>
<%--                                <span class="percent">-54%</span>--%>
<%--                            </div>--%>
<%--                            <strong class="price-sale">3.990.000₫</strong>--%>
<%--                            <div class="item-rating">--%>
<%--                                <p>--%>
<%--                                    <i class="fa-solid fa-star" style="color: #ea744d;"></i>--%>
<%--                                    <i class="fa-solid fa-star" style="color: #ea744d;"></i>--%>
<%--                                    <i class="fa-solid fa-star" style="color: #ea744d;"></i>--%>
<%--                                    <i class="fa-solid fa-star" style="color: #ea744d;"></i>--%>
<%--                                    <i class="fa-solid fa-star" style="color: #ededed;"></i>--%>
<%--                                </p>--%>
<%--                                <p class="item-rating-total">40</p>--%>
<%--                                <a href="" class="item-ss"><i class="fa-solid fa-code-compare"--%>
<%--                                                              style="color: #333333;"></i>--%>
<%--                                    So sánh</a>--%>
<%--                            </div>--%>
<%--                        </a>--%>
<%--                    </div>--%>
<%--                    <div class="content-may-loc-mini">--%>
<%--                        <a href="" class="deal-items">--%>
<%--                            <div class="item-label">--%>
<%--                                <span>Trả góp 0%</span>--%>
<%--                            </div>--%>
<%--                            <div class="item-img">--%>
<%--                                <img src="img/ro-sunhouse-sha88118k-10-loi-kg-210223-102600-600x600.jpg"--%>
<%--                                     alt="">--%>
<%--                            </div>--%>
<%--                            <p class="label-gia-re">--%>
<%--                                <img src="img/50x50-100x101-3.webp" alt="">--%>
<%--                                <span>GIÁ RẺ QUÁ</span>--%>
<%--                            </p>--%>
<%--                            <h3>Máy lọc nước RO Sunhouse SHA88118K</h3>--%>
<%--                            <div class="item-compare">--%>
<%--                                <span>Tủ đứng</span>--%>
<%--                                <span>Lắp đặt miễn phí</span>--%>
<%--                            </div>--%>
<%--                            <p class="item-online-gia-re">--%>
<%--                                <i class="fa-solid fa-coins" style="color: #db2663;"></i>--%>
<%--                                Online giá rẻ quá--%>
<%--                            </p>--%>
<%--                            <div class="gia-sale">--%>
<%--                                <p class="price-old">8.690.000 </p>--%>
<%--                                <span class="percent">-54%</span>--%>
<%--                            </div>--%>
<%--                            <strong class="price-sale">3.990.000₫</strong>--%>
<%--                            <div class="item-rating">--%>
<%--                                <p>--%>
<%--                                    <i class="fa-solid fa-star" style="color: #ea744d;"></i>--%>
<%--                                    <i class="fa-solid fa-star" style="color: #ea744d;"></i>--%>
<%--                                    <i class="fa-solid fa-star" style="color: #ea744d;"></i>--%>
<%--                                    <i class="fa-solid fa-star" style="color: #ea744d;"></i>--%>
<%--                                    <i class="fa-solid fa-star" style="color: #ededed;"></i>--%>
<%--                                </p>--%>
<%--                                <p class="item-rating-total">40</p>--%>
<%--                                <a href="" class="item-ss"><i class="fa-solid fa-code-compare"--%>
<%--                                                              style="color: #333333;"></i>--%>
<%--                                    So sánh</a>--%>
<%--                            </div>--%>
<%--                        </a>--%>
<%--                    </div>--%>
<%--                    <div class="content-may-loc-mini">--%>
<%--                        <a href="" class="deal-items">--%>
<%--                            <div class="item-label">--%>
<%--                                <span>Trả góp 0%</span>--%>
<%--                            </div>--%>
<%--                            <div class="item-img">--%>
<%--                                <img src="img/ro-sunhouse-sha88118k-10-loi-kg-210223-102600-600x600.jpg"--%>
<%--                                     alt="">--%>
<%--                            </div>--%>
<%--                            <p class="label-gia-re">--%>
<%--                                <img src="img/50x50-100x101-3.webp" alt="">--%>
<%--                                <span>GIÁ RẺ QUÁ</span>--%>
<%--                            </p>--%>
<%--                            <h3>Máy lọc nước RO Sunhouse SHA88118K</h3>--%>
<%--                            <div class="item-compare">--%>
<%--                                <span>Tủ đứng</span>--%>
<%--                                <span>Lắp đặt miễn phí</span>--%>
<%--                            </div>--%>
<%--                            <p class="item-online-gia-re">--%>
<%--                                <i class="fa-solid fa-coins" style="color: #db2663;"></i>--%>
<%--                                Online giá rẻ quá--%>
<%--                            </p>--%>
<%--                            <div class="gia-sale">--%>
<%--                                <p class="price-old">8.690.000 </p>--%>
<%--                                <span class="percent">-54%</span>--%>
<%--                            </div>--%>
<%--                            <strong class="price-sale">3.990.000₫</strong>--%>
<%--                            <div class="item-rating">--%>
<%--                                <p>--%>
<%--                                    <i class="fa-solid fa-star" style="color: #ea744d;"></i>--%>
<%--                                    <i class="fa-solid fa-star" style="color: #ea744d;"></i>--%>
<%--                                    <i class="fa-solid fa-star" style="color: #ea744d;"></i>--%>
<%--                                    <i class="fa-solid fa-star" style="color: #ea744d;"></i>--%>
<%--                                    <i class="fa-solid fa-star" style="color: #ededed;"></i>--%>
<%--                                </p>--%>
<%--                                <p class="item-rating-total">40</p>--%>
<%--                                <a href="" class="item-ss"><i class="fa-solid fa-code-compare"--%>
<%--                                                              style="color: #333333;"></i>--%>
<%--                                    So sánh</a>--%>
<%--                            </div>--%>
<%--                        </a>--%>
<%--                    </div>--%>
<%--                    <div class="content-may-loc-mini">--%>
<%--                        <a href="" class="deal-items">--%>
<%--                            <div class="item-label">--%>
<%--                                <span>Trả góp 0%</span>--%>
<%--                            </div>--%>
<%--                            <div class="item-img">--%>
<%--                                <img src="img/ro-sunhouse-sha88118k-10-loi-kg-210223-102600-600x600.jpg"--%>
<%--                                     alt="">--%>
<%--                            </div>--%>
<%--                            <p class="label-gia-re">--%>
<%--                                <img src="img/50x50-100x101-3.webp" alt="">--%>
<%--                                <span>GIÁ RẺ QUÁ</span>--%>
<%--                            </p>--%>
<%--                            <h3>Máy lọc nước RO Sunhouse SHA88118K</h3>--%>
<%--                            <div class="item-compare">--%>
<%--                                <span>Tủ đứng</span>--%>
<%--                                <span>Lắp đặt miễn phí</span>--%>
<%--                            </div>--%>
<%--                            <p class="item-online-gia-re">--%>
<%--                                <i class="fa-solid fa-coins" style="color: #db2663;"></i>--%>
<%--                                Online giá rẻ quá--%>
<%--                            </p>--%>
<%--                            <div class="gia-sale">--%>
<%--                                <p class="price-old">8.690.000 </p>--%>
<%--                                <span class="percent">-54%</span>--%>
<%--                            </div>--%>
<%--                            <strong class="price-sale">3.990.000₫</strong>--%>
<%--                            <div class="item-rating">--%>
<%--                                <p>--%>
<%--                                    <i class="fa-solid fa-star" style="color: #ea744d;"></i>--%>
<%--                                    <i class="fa-solid fa-star" style="color: #ea744d;"></i>--%>
<%--                                    <i class="fa-solid fa-star" style="color: #ea744d;"></i>--%>
<%--                                    <i class="fa-solid fa-star" style="color: #ea744d;"></i>--%>
<%--                                    <i class="fa-solid fa-star" style="color: #ededed;"></i>--%>
<%--                                </p>--%>
<%--                                <p class="item-rating-total">40</p>--%>
<%--                                <a href="" class="item-ss"><i class="fa-solid fa-code-compare"--%>
<%--                                                              style="color: #333333;"></i>--%>
<%--                                    So sánh</a>--%>
<%--                            </div>--%>
<%--                        </a>--%>
<%--                    </div>--%>
<%--                    <div class="content-may-loc-mini">--%>
<%--                        <a href="" class="deal-items">--%>
<%--                            <div class="item-label">--%>
<%--                                <span>Trả góp 0%</span>--%>
<%--                            </div>--%>
<%--                            <div class="item-img">--%>
<%--                                <img src="img/ro-sunhouse-sha88118k-10-loi-kg-210223-102600-600x600.jpg"--%>
<%--                                     alt="">--%>
<%--                            </div>--%>
<%--                            <p class="label-gia-re">--%>
<%--                                <img src="img/50x50-100x101-3.webp" alt="">--%>
<%--                                <span>GIÁ RẺ QUÁ</span>--%>
<%--                            </p>--%>
<%--                            <h3>Máy lọc nước RO Sunhouse SHA88118K</h3>--%>
<%--                            <div class="item-compare">--%>
<%--                                <span>Tủ đứng</span>--%>
<%--                                <span>Lắp đặt miễn phí</span>--%>
<%--                            </div>--%>
<%--                            <p class="item-online-gia-re">--%>
<%--                                <i class="fa-solid fa-coins" style="color: #db2663;"></i>--%>
<%--                                Online giá rẻ quá--%>
<%--                            </p>--%>
<%--                            <div class="gia-sale">--%>
<%--                                <p class="price-old">8.690.000 </p>--%>
<%--                                <span class="percent">-54%</span>--%>
<%--                            </div>--%>
<%--                            <strong class="price-sale">3.990.000₫</strong>--%>
<%--                            <div class="item-rating">--%>
<%--                                <p>--%>
<%--                                    <i class="fa-solid fa-star" style="color: #ea744d;"></i>--%>
<%--                                    <i class="fa-solid fa-star" style="color: #ea744d;"></i>--%>
<%--                                    <i class="fa-solid fa-star" style="color: #ea744d;"></i>--%>
<%--                                    <i class="fa-solid fa-star" style="color: #ea744d;"></i>--%>
<%--                                    <i class="fa-solid fa-star" style="color: #ededed;"></i>--%>
<%--                                </p>--%>
<%--                                <p class="item-rating-total">40</p>--%>
<%--                                <a href="" class="item-ss"><i class="fa-solid fa-code-compare"--%>
<%--                                                              style="color: #333333;"></i>--%>
<%--                                    So sánh</a>--%>
<%--                            </div>--%>
<%--                        </a>--%>
<%--                    </div>--%>
<%--                    <div class="content-may-loc-mini">--%>
<%--                        <a href="" class="deal-items">--%>
<%--                            <div class="item-label">--%>
<%--                                <span>Trả góp 0%</span>--%>
<%--                            </div>--%>
<%--                            <div class="item-img">--%>
<%--                                <img src="img/ro-sunhouse-sha88118k-10-loi-kg-210223-102600-600x600.jpg"--%>
<%--                                     alt="">--%>
<%--                            </div>--%>
<%--                            <p class="label-gia-re">--%>
<%--                                <img src="img/50x50-100x101-3.webp" alt="">--%>
<%--                                <span>GIÁ RẺ QUÁ</span>--%>
<%--                            </p>--%>
<%--                            <h3>Máy lọc nước RO Sunhouse SHA88118K</h3>--%>
<%--                            <div class="item-compare">--%>
<%--                                <span>Tủ đứng</span>--%>
<%--                                <span>Lắp đặt miễn phí</span>--%>
<%--                            </div>--%>
<%--                            <p class="item-online-gia-re">--%>
<%--                                <i class="fa-solid fa-coins" style="color: #db2663;"></i>--%>
<%--                                Online giá rẻ quá--%>
<%--                            </p>--%>
<%--                            <div class="gia-sale">--%>
<%--                                <p class="price-old">8.690.000 </p>--%>
<%--                                <span class="percent">-54%</span>--%>
<%--                            </div>--%>
<%--                            <strong class="price-sale">3.990.000₫</strong>--%>
<%--                            <div class="item-rating">--%>
<%--                                <p>--%>
<%--                                    <i class="fa-solid fa-star" style="color: #ea744d;"></i>--%>
<%--                                    <i class="fa-solid fa-star" style="color: #ea744d;"></i>--%>
<%--                                    <i class="fa-solid fa-star" style="color: #ea744d;"></i>--%>
<%--                                    <i class="fa-solid fa-star" style="color: #ea744d;"></i>--%>
<%--                                    <i class="fa-solid fa-star" style="color: #ededed;"></i>--%>
<%--                                </p>--%>
<%--                                <p class="item-rating-total">40</p>--%>
<%--                                <a href="" class="item-ss"><i class="fa-solid fa-code-compare"--%>
<%--                                                              style="color: #333333;"></i>--%>
<%--                                    So sánh</a>--%>
<%--                            </div>--%>
<%--                        </a>--%>
<%--                    </div>--%>
<%--                    <div class="content-may-loc-mini">--%>
<%--                        <a href="" class="deal-items">--%>
<%--                            <div class="item-label">--%>
<%--                                <span>Trả góp 0%</span>--%>
<%--                            </div>--%>
<%--                            <div class="item-img">--%>
<%--                                <img src="img/ro-sunhouse-sha88118k-10-loi-kg-210223-102600-600x600.jpg"--%>
<%--                                     alt="">--%>
<%--                            </div>--%>
<%--                            <p class="label-gia-re">--%>
<%--                                <img src="img/50x50-100x101-3.webp" alt="">--%>
<%--                                <span>GIÁ RẺ QUÁ</span>--%>
<%--                            </p>--%>
<%--                            <h3>Máy lọc nước RO Sunhouse SHA88118K</h3>--%>
<%--                            <div class="item-compare">--%>
<%--                                <span>Tủ đứng</span>--%>
<%--                                <span>Lắp đặt miễn phí</span>--%>
<%--                            </div>--%>
<%--                            <p class="item-online-gia-re">--%>
<%--                                <i class="fa-solid fa-coins" style="color: #db2663;"></i>--%>
<%--                                Online giá rẻ quá--%>
<%--                            </p>--%>
<%--                            <div class="gia-sale">--%>
<%--                                <p class="price-old">8.690.000 </p>--%>
<%--                                <span class="percent">-54%</span>--%>
<%--                            </div>--%>
<%--                            <strong class="price-sale">3.990.000₫</strong>--%>
<%--                            <div class="item-rating">--%>
<%--                                <p>--%>
<%--                                    <i class="fa-solid fa-star" style="color: #ea744d;"></i>--%>
<%--                                    <i class="fa-solid fa-star" style="color: #ea744d;"></i>--%>
<%--                                    <i class="fa-solid fa-star" style="color: #ea744d;"></i>--%>
<%--                                    <i class="fa-solid fa-star" style="color: #ea744d;"></i>--%>
<%--                                    <i class="fa-solid fa-star" style="color: #ededed;"></i>--%>
<%--                                </p>--%>
<%--                                <p class="item-rating-total">40</p>--%>
<%--                                <a href="" class="item-ss"><i class="fa-solid fa-code-compare"--%>
<%--                                                              style="color: #333333;"></i>--%>
<%--                                    So sánh</a>--%>
<%--                            </div>--%>
<%--                        </a>--%>
<%--                    </div>--%>
<%--                    <div class="content-may-loc-mini">--%>
<%--                        <a href="" class="deal-items">--%>
<%--                            <div class="item-label">--%>
<%--                                <span>Trả góp 0%</span>--%>
<%--                            </div>--%>
<%--                            <div class="item-img">--%>
<%--                                <img src="img/ro-sunhouse-sha88118k-10-loi-kg-210223-102600-600x600.jpg"--%>
<%--                                     alt="">--%>
<%--                            </div>--%>
<%--                            <p class="label-gia-re">--%>
<%--                                <img src="img/50x50-100x101-3.webp" alt="">--%>
<%--                                <span>GIÁ RẺ QUÁ</span>--%>
<%--                            </p>--%>
<%--                            <h3>Máy lọc nước RO Sunhouse SHA88118K</h3>--%>
<%--                            <div class="item-compare">--%>
<%--                                <span>Tủ đứng</span>--%>
<%--                                <span>Lắp đặt miễn phí</span>--%>
<%--                            </div>--%>
<%--                            <p class="item-online-gia-re">--%>
<%--                                <i class="fa-solid fa-coins" style="color: #db2663;"></i>--%>
<%--                                Online giá rẻ quá--%>
<%--                            </p>--%>
<%--                            <div class="gia-sale">--%>
<%--                                <p class="price-old">8.690.000 </p>--%>
<%--                                <span class="percent">-54%</span>--%>
<%--                            </div>--%>
<%--                            <strong class="price-sale">3.990.000₫</strong>--%>
<%--                            <div class="item-rating">--%>
<%--                                <p>--%>
<%--                                    <i class="fa-solid fa-star" style="color: #ea744d;"></i>--%>
<%--                                    <i class="fa-solid fa-star" style="color: #ea744d;"></i>--%>
<%--                                    <i class="fa-solid fa-star" style="color: #ea744d;"></i>--%>
<%--                                    <i class="fa-solid fa-star" style="color: #ea744d;"></i>--%>
<%--                                    <i class="fa-solid fa-star" style="color: #ededed;"></i>--%>
<%--                                </p>--%>
<%--                                <p class="item-rating-total">40</p>--%>
<%--                                <a href="" class="item-ss"><i class="fa-solid fa-code-compare"--%>
<%--                                                              style="color: #333333;"></i>--%>
<%--                                    So sánh</a>--%>
<%--                            </div>--%>
<%--                        </a>--%>
<%--                    </div>--%>
<%--                    <div class="content-may-loc-mini">--%>
<%--                        <a href="" class="deal-items">--%>
<%--                            <div class="item-label">--%>
<%--                                <span>Trả góp 0%</span>--%>
<%--                            </div>--%>
<%--                            <div class="item-img">--%>
<%--                                <img src="img/ro-sunhouse-sha88118k-10-loi-kg-210223-102600-600x600.jpg"--%>
<%--                                     alt="">--%>
<%--                            </div>--%>
<%--                            <p class="label-gia-re">--%>
<%--                                <img src="img/50x50-100x101-3.webp" alt="">--%>
<%--                                <span>GIÁ RẺ QUÁ</span>--%>
<%--                            </p>--%>
<%--                            <h3>Máy lọc nước RO Sunhouse SHA88118K</h3>--%>
<%--                            <div class="item-compare">--%>
<%--                                <span>Tủ đứng</span>--%>
<%--                                <span>Lắp đặt miễn phí</span>--%>
<%--                            </div>--%>
<%--                            <p class="item-online-gia-re">--%>
<%--                                <i class="fa-solid fa-coins" style="color: #db2663;"></i>--%>
<%--                                Online giá rẻ quá--%>
<%--                            </p>--%>
<%--                            <div class="gia-sale">--%>
<%--                                <p class="price-old">8.690.000 </p>--%>
<%--                                <span class="percent">-54%</span>--%>
<%--                            </div>--%>
<%--                            <strong class="price-sale">3.990.000₫</strong>--%>
<%--                            <div class="item-rating">--%>
<%--                                <p>--%>
<%--                                    <i class="fa-solid fa-star" style="color: #ea744d;"></i>--%>
<%--                                    <i class="fa-solid fa-star" style="color: #ea744d;"></i>--%>
<%--                                    <i class="fa-solid fa-star" style="color: #ea744d;"></i>--%>
<%--                                    <i class="fa-solid fa-star" style="color: #ea744d;"></i>--%>
<%--                                    <i class="fa-solid fa-star" style="color: #ededed;"></i>--%>
<%--                                </p>--%>
<%--                                <p class="item-rating-total">40</p>--%>
<%--                                <a href="" class="item-ss"><i class="fa-solid fa-code-compare"--%>
<%--                                                              style="color: #333333;"></i>--%>
<%--                                    So sánh</a>--%>
<%--                            </div>--%>
<%--                        </a>--%>
<%--                    </div>--%>
<%--                    <div class="content-may-loc-mini">--%>
<%--                        <a href="" class="deal-items">--%>
<%--                            <div class="item-label">--%>
<%--                                <span>Trả góp 0%</span>--%>
<%--                            </div>--%>
<%--                            <div class="item-img">--%>
<%--                                <img src="img/ro-sunhouse-sha88118k-10-loi-kg-210223-102600-600x600.jpg"--%>
<%--                                     alt="">--%>
<%--                            </div>--%>
<%--                            <p class="label-gia-re">--%>
<%--                                <img src="img/50x50-100x101-3.webp" alt="">--%>
<%--                                <span>GIÁ RẺ QUÁ</span>--%>
<%--                            </p>--%>
<%--                            <h3>Máy lọc nước RO Sunhouse SHA88118K</h3>--%>
<%--                            <div class="item-compare">--%>
<%--                                <span>Tủ đứng</span>--%>
<%--                                <span>Lắp đặt miễn phí</span>--%>
<%--                            </div>--%>
<%--                            <p class="item-online-gia-re">--%>
<%--                                <i class="fa-solid fa-coins" style="color: #db2663;"></i>--%>
<%--                                Online giá rẻ quá--%>
<%--                            </p>--%>
<%--                            <div class="gia-sale">--%>
<%--                                <p class="price-old">8.690.000 </p>--%>
<%--                                <span class="percent">-54%</span>--%>
<%--                            </div>--%>
<%--                            <strong class="price-sale">3.990.000₫</strong>--%>
<%--                            <div class="item-rating">--%>
<%--                                <p>--%>
<%--                                    <i class="fa-solid fa-star" style="color: #ea744d;"></i>--%>
<%--                                    <i class="fa-solid fa-star" style="color: #ea744d;"></i>--%>
<%--                                    <i class="fa-solid fa-star" style="color: #ea744d;"></i>--%>
<%--                                    <i class="fa-solid fa-star" style="color: #ea744d;"></i>--%>
<%--                                    <i class="fa-solid fa-star" style="color: #ededed;"></i>--%>
<%--                                </p>--%>
<%--                                <p class="item-rating-total">40</p>--%>
<%--                                <a href="" class="item-ss"><i class="fa-solid fa-code-compare"--%>
<%--                                                              style="color: #333333;"></i>--%>
<%--                                    So sánh</a>--%>
<%--                            </div>--%>
<%--                        </a>--%>
<%--                    </div>--%>
<%--                    <div class="content-may-loc-mini">--%>
<%--                        <a href="" class="deal-items">--%>
<%--                            <div class="item-label">--%>
<%--                                <span>Trả góp 0%</span>--%>
<%--                            </div>--%>
<%--                            <div class="item-img">--%>
<%--                                <img src="img/ro-sunhouse-sha88118k-10-loi-kg-210223-102600-600x600.jpg"--%>
<%--                                     alt="">--%>
<%--                            </div>--%>
<%--                            <p class="label-gia-re">--%>
<%--                                <img src="img/50x50-100x101-3.webp" alt="">--%>
<%--                                <span>GIÁ RẺ QUÁ</span>--%>
<%--                            </p>--%>
<%--                            <h3>Máy lọc nước RO Sunhouse SHA88118K</h3>--%>
<%--                            <div class="item-compare">--%>
<%--                                <span>Tủ đứng</span>--%>
<%--                                <span>Lắp đặt miễn phí</span>--%>
<%--                            </div>--%>
<%--                            <p class="item-online-gia-re">--%>
<%--                                <i class="fa-solid fa-coins" style="color: #db2663;"></i>--%>
<%--                                Online giá rẻ quá--%>
<%--                            </p>--%>
<%--                            <div class="gia-sale">--%>
<%--                                <p class="price-old">8.690.000 </p>--%>
<%--                                <span class="percent">-54%</span>--%>
<%--                            </div>--%>
<%--                            <strong class="price-sale">3.990.000₫</strong>--%>
<%--                            <div class="item-rating">--%>
<%--                                <p>--%>
<%--                                    <i class="fa-solid fa-star" style="color: #ea744d;"></i>--%>
<%--                                    <i class="fa-solid fa-star" style="color: #ea744d;"></i>--%>
<%--                                    <i class="fa-solid fa-star" style="color: #ea744d;"></i>--%>
<%--                                    <i class="fa-solid fa-star" style="color: #ea744d;"></i>--%>
<%--                                    <i class="fa-solid fa-star" style="color: #ededed;"></i>--%>
<%--                                </p>--%>
<%--                                <p class="item-rating-total">40</p>--%>
<%--                                <a href="" class="item-ss"><i class="fa-solid fa-code-compare"--%>
<%--                                                              style="color: #333333;"></i>--%>
<%--                                    So sánh</a>--%>
<%--                            </div>--%>
<%--                        </a>--%>
<%--                    </div>--%>
<%--                    <div class="content-may-loc-mini">--%>
<%--                        <a href="" class="deal-items">--%>
<%--                            <div class="item-label">--%>
<%--                                <span>Trả góp 0%</span>--%>
<%--                            </div>--%>
<%--                            <div class="item-img">--%>
<%--                                <img src="img/ro-sunhouse-sha88118k-10-loi-kg-210223-102600-600x600.jpg"--%>
<%--                                     alt="">--%>
<%--                            </div>--%>
<%--                            <p class="label-gia-re">--%>
<%--                                <img src="img/50x50-100x101-3.webp" alt="">--%>
<%--                                <span>GIÁ RẺ QUÁ</span>--%>
<%--                            </p>--%>
<%--                            <h3>Máy lọc nước RO Sunhouse SHA88118K</h3>--%>
<%--                            <div class="item-compare">--%>
<%--                                <span>Tủ đứng</span>--%>
<%--                                <span>Lắp đặt miễn phí</span>--%>
<%--                            </div>--%>
<%--                            <p class="item-online-gia-re">--%>
<%--                                <i class="fa-solid fa-coins" style="color: #db2663;"></i>--%>
<%--                                Online giá rẻ quá--%>
<%--                            </p>--%>
<%--                            <div class="gia-sale">--%>
<%--                                <p class="price-old">8.690.000 </p>--%>
<%--                                <span class="percent">-54%</span>--%>
<%--                            </div>--%>
<%--                            <strong class="price-sale">3.990.000₫</strong>--%>
<%--                            <div class="item-rating">--%>
<%--                                <p>--%>
<%--                                    <i class="fa-solid fa-star" style="color: #ea744d;"></i>--%>
<%--                                    <i class="fa-solid fa-star" style="color: #ea744d;"></i>--%>
<%--                                    <i class="fa-solid fa-star" style="color: #ea744d;"></i>--%>
<%--                                    <i class="fa-solid fa-star" style="color: #ea744d;"></i>--%>
<%--                                    <i class="fa-solid fa-star" style="color: #ededed;"></i>--%>
<%--                                </p>--%>
<%--                                <p class="item-rating-total">40</p>--%>
<%--                                <a href="" class="item-ss"><i class="fa-solid fa-code-compare"--%>
<%--                                                              style="color: #333333;"></i>--%>
<%--                                    So sánh</a>--%>
<%--                            </div>--%>
<%--                        </a>--%>
<%--                    </div>--%>
<%--                    <div class="content-may-loc-mini">--%>
<%--                        <a href="" class="deal-items">--%>
<%--                            <div class="item-label">--%>
<%--                                <span>Trả góp 0%</span>--%>
<%--                            </div>--%>
<%--                            <div class="item-img">--%>
<%--                                <img src="img/ro-sunhouse-sha88118k-10-loi-kg-210223-102600-600x600.jpg"--%>
<%--                                     alt="">--%>
<%--                            </div>--%>
<%--                            <p class="label-gia-re">--%>
<%--                                <img src="img/50x50-100x101-3.webp" alt="">--%>
<%--                                <span>GIÁ RẺ QUÁ</span>--%>
<%--                            </p>--%>
<%--                            <h3>Máy lọc nước RO Sunhouse SHA88118K</h3>--%>
<%--                            <div class="item-compare">--%>
<%--                                <span>Tủ đứng</span>--%>
<%--                                <span>Lắp đặt miễn phí</span>--%>
<%--                            </div>--%>
<%--                            <p class="item-online-gia-re">--%>
<%--                                <i class="fa-solid fa-coins" style="color: #db2663;"></i>--%>
<%--                                Online giá rẻ quá--%>
<%--                            </p>--%>
<%--                            <div class="gia-sale">--%>
<%--                                <p class="price-old">8.690.000 </p>--%>
<%--                                <span class="percent">-54%</span>--%>
<%--                            </div>--%>
<%--                            <strong class="price-sale">3.990.000₫</strong>--%>
<%--                            <div class="item-rating">--%>
<%--                                <p>--%>
<%--                                    <i class="fa-solid fa-star" style="color: #ea744d;"></i>--%>
<%--                                    <i class="fa-solid fa-star" style="color: #ea744d;"></i>--%>
<%--                                    <i class="fa-solid fa-star" style="color: #ea744d;"></i>--%>
<%--                                    <i class="fa-solid fa-star" style="color: #ea744d;"></i>--%>
<%--                                    <i class="fa-solid fa-star" style="color: #ededed;"></i>--%>
<%--                                </p>--%>
<%--                                <p class="item-rating-total">40</p>--%>
<%--                                <a href="" class="item-ss"><i class="fa-solid fa-code-compare"--%>
<%--                                                              style="color: #333333;"></i>--%>
<%--                                    So sánh</a>--%>
<%--                            </div>--%>
<%--                        </a>--%>
<%--                    </div>--%>
<%--                    <div class="content-may-loc-mini">--%>
<%--                        <a href="" class="deal-items">--%>
<%--                            <div class="item-label">--%>
<%--                                <span>Trả góp 0%</span>--%>
<%--                            </div>--%>
<%--                            <div class="item-img">--%>
<%--                                <img src="img/ro-sunhouse-sha88118k-10-loi-kg-210223-102600-600x600.jpg"--%>
<%--                                     alt="">--%>
<%--                            </div>--%>
<%--                            <p class="label-gia-re">--%>
<%--                                <img src="img/50x50-100x101-3.webp" alt="">--%>
<%--                                <span>GIÁ RẺ QUÁ</span>--%>
<%--                            </p>--%>
<%--                            <h3>Máy lọc nước RO Sunhouse SHA88118K</h3>--%>
<%--                            <div class="item-compare">--%>
<%--                                <span>Tủ đứng</span>--%>
<%--                                <span>Lắp đặt miễn phí</span>--%>
<%--                            </div>--%>
<%--                            <p class="item-online-gia-re">--%>
<%--                                <i class="fa-solid fa-coins" style="color: #db2663;"></i>--%>
<%--                                Online giá rẻ quá--%>
<%--                            </p>--%>
<%--                            <div class="gia-sale">--%>
<%--                                <p class="price-old">8.690.000 </p>--%>
<%--                                <span class="percent">-54%</span>--%>
<%--                            </div>--%>
<%--                            <strong class="price-sale">3.990.000₫</strong>--%>
<%--                            <div class="item-rating">--%>
<%--                                <p>--%>
<%--                                    <i class="fa-solid fa-star" style="color: #ea744d;"></i>--%>
<%--                                    <i class="fa-solid fa-star" style="color: #ea744d;"></i>--%>
<%--                                    <i class="fa-solid fa-star" style="color: #ea744d;"></i>--%>
<%--                                    <i class="fa-solid fa-star" style="color: #ea744d;"></i>--%>
<%--                                    <i class="fa-solid fa-star" style="color: #ededed;"></i>--%>
<%--                                </p>--%>
<%--                                <p class="item-rating-total">40</p>--%>
<%--                                <a href="" class="item-ss"><i class="fa-solid fa-code-compare"--%>
<%--                                                              style="color: #333333;"></i>--%>
<%--                                    So sánh</a>--%>
<%--                            </div>--%>
<%--                        </a>--%>
<%--                    </div>--%>
<%--                    <div class="content-may-loc-mini">--%>
<%--                        <a href="" class="deal-items">--%>
<%--                            <div class="item-label">--%>
<%--                                <span>Trả góp 0%</span>--%>
<%--                            </div>--%>
<%--                            <div class="item-img">--%>
<%--                                <img src="img/ro-sunhouse-sha88118k-10-loi-kg-210223-102600-600x600.jpg"--%>
<%--                                     alt="">--%>
<%--                            </div>--%>
<%--                            <p class="label-gia-re">--%>
<%--                                <img src="img/50x50-100x101-3.webp" alt="">--%>
<%--                                <span>GIÁ RẺ QUÁ</span>--%>
<%--                            </p>--%>
<%--                            <h3>Máy lọc nước RO Sunhouse SHA88118K</h3>--%>
<%--                            <div class="item-compare">--%>
<%--                                <span>Tủ đứng</span>--%>
<%--                                <span>Lắp đặt miễn phí</span>--%>
<%--                            </div>--%>
<%--                            <p class="item-online-gia-re">--%>
<%--                                <i class="fa-solid fa-coins" style="color: #db2663;"></i>--%>
<%--                                Online giá rẻ quá--%>
<%--                            </p>--%>
<%--                            <div class="gia-sale">--%>
<%--                                <p class="price-old">8.690.000 </p>--%>
<%--                                <span class="percent">-54%</span>--%>
<%--                            </div>--%>
<%--                            <strong class="price-sale">3.990.000₫</strong>--%>
<%--                            <div class="item-rating">--%>
<%--                                <p>--%>
<%--                                    <i class="fa-solid fa-star" style="color: #ea744d;"></i>--%>
<%--                                    <i class="fa-solid fa-star" style="color: #ea744d;"></i>--%>
<%--                                    <i class="fa-solid fa-star" style="color: #ea744d;"></i>--%>
<%--                                    <i class="fa-solid fa-star" style="color: #ea744d;"></i>--%>
<%--                                    <i class="fa-solid fa-star" style="color: #ededed;"></i>--%>
<%--                                </p>--%>
<%--                                <p class="item-rating-total">40</p>--%>
<%--                                <a href="" class="item-ss"><i class="fa-solid fa-code-compare"--%>
<%--                                                              style="color: #333333;"></i>--%>
<%--                                    So sánh</a>--%>
<%--                            </div>--%>
<%--                        </a>--%>
<%--                    </div>--%>
<%--                    <div class="content-may-loc-mini">--%>
<%--                        <a href="" class="deal-items">--%>
<%--                            <div class="item-label">--%>
<%--                                <span>Trả góp 0%</span>--%>
<%--                            </div>--%>
<%--                            <div class="item-img">--%>
<%--                                <img src="img/ro-sunhouse-sha88118k-10-loi-kg-210223-102600-600x600.jpg"--%>
<%--                                     alt="">--%>
<%--                            </div>--%>
<%--                            <p class="label-gia-re">--%>
<%--                                <img src="img/50x50-100x101-3.webp" alt="">--%>
<%--                                <span>GIÁ RẺ QUÁ</span>--%>
<%--                            </p>--%>
<%--                            <h3>Máy lọc nước RO Sunhouse SHA88118K</h3>--%>
<%--                            <div class="item-compare">--%>
<%--                                <span>Tủ đứng</span>--%>
<%--                                <span>Lắp đặt miễn phí</span>--%>
<%--                            </div>--%>
<%--                            <p class="item-online-gia-re">--%>
<%--                                <i class="fa-solid fa-coins" style="color: #db2663;"></i>--%>
<%--                                Online giá rẻ quá--%>
<%--                            </p>--%>
<%--                            <div class="gia-sale">--%>
<%--                                <p class="price-old">8.690.000 </p>--%>
<%--                                <span class="percent">-54%</span>--%>
<%--                            </div>--%>
<%--                            <strong class="price-sale">3.990.000₫</strong>--%>
<%--                            <div class="item-rating">--%>
<%--                                <p>--%>
<%--                                    <i class="fa-solid fa-star" style="color: #ea744d;"></i>--%>
<%--                                    <i class="fa-solid fa-star" style="color: #ea744d;"></i>--%>
<%--                                    <i class="fa-solid fa-star" style="color: #ea744d;"></i>--%>
<%--                                    <i class="fa-solid fa-star" style="color: #ea744d;"></i>--%>
<%--                                    <i class="fa-solid fa-star" style="color: #ededed;"></i>--%>
<%--                                </p>--%>
<%--                                <p class="item-rating-total">40</p>--%>
<%--                                <a href="" class="item-ss"><i class="fa-solid fa-code-compare"--%>
<%--                                                              style="color: #333333;"></i>--%>
<%--                                    So sánh</a>--%>
<%--                            </div>--%>
<%--                        </a>--%>
<%--                    </div>--%>
<%--                    <div class="content-may-loc-mini">--%>
<%--                        <a href="" class="deal-items">--%>
<%--                            <div class="item-label">--%>
<%--                                <span>Trả góp 0%</span>--%>
<%--                            </div>--%>
<%--                            <div class="item-img">--%>
<%--                                <img src="img/ro-sunhouse-sha88118k-10-loi-kg-210223-102600-600x600.jpg"--%>
<%--                                     alt="">--%>
<%--                            </div>--%>
<%--                            <p class="label-gia-re">--%>
<%--                                <img src="img/50x50-100x101-3.webp" alt="">--%>
<%--                                <span>GIÁ RẺ QUÁ</span>--%>
<%--                            </p>--%>
<%--                            <h3>Máy lọc nước RO Sunhouse SHA88118K</h3>--%>
<%--                            <div class="item-compare">--%>
<%--                                <span>Tủ đứng</span>--%>
<%--                                <span>Lắp đặt miễn phí</span>--%>
<%--                            </div>--%>
<%--                            <p class="item-online-gia-re">--%>
<%--                                <i class="fa-solid fa-coins" style="color: #db2663;"></i>--%>
<%--                                Online giá rẻ quá--%>
<%--                            </p>--%>
<%--                            <div class="gia-sale">--%>
<%--                                <p class="price-old">8.690.000 </p>--%>
<%--                                <span class="percent">-54%</span>--%>
<%--                            </div>--%>
<%--                            <strong class="price-sale">3.990.000₫</strong>--%>
<%--                            <div class="item-rating">--%>
<%--                                <p>--%>
<%--                                    <i class="fa-solid fa-star" style="color: #ea744d;"></i>--%>
<%--                                    <i class="fa-solid fa-star" style="color: #ea744d;"></i>--%>
<%--                                    <i class="fa-solid fa-star" style="color: #ea744d;"></i>--%>
<%--                                    <i class="fa-solid fa-star" style="color: #ea744d;"></i>--%>
<%--                                    <i class="fa-solid fa-star" style="color: #ededed;"></i>--%>
<%--                                </p>--%>
<%--                                <p class="item-rating-total">40</p>--%>
<%--                                <a href="" class="item-ss"><i class="fa-solid fa-code-compare"--%>
<%--                                                              style="color: #333333;"></i>--%>
<%--                                    So sánh</a>--%>
<%--                            </div>--%>
<%--                        </a>--%>
<%--                    </div>--%>
<%--                    <div class="content-may-loc-mini">--%>
<%--                        <a href="" class="deal-items">--%>
<%--                            <div class="item-label">--%>
<%--                                <span>Trả góp 0%</span>--%>
<%--                            </div>--%>
<%--                            <div class="item-img">--%>
<%--                                <img src="img/ro-sunhouse-sha88118k-10-loi-kg-210223-102600-600x600.jpg"--%>
<%--                                     alt="">--%>
<%--                            </div>--%>
<%--                            <p class="label-gia-re">--%>
<%--                                <img src="img/50x50-100x101-3.webp" alt="">--%>
<%--                                <span>GIÁ RẺ QUÁ</span>--%>
<%--                            </p>--%>
<%--                            <h3>Máy lọc nước RO Sunhouse SHA88118K</h3>--%>
<%--                            <div class="item-compare">--%>
<%--                                <span>Tủ đứng</span>--%>
<%--                                <span>Lắp đặt miễn phí</span>--%>
<%--                            </div>--%>
<%--                            <p class="item-online-gia-re">--%>
<%--                                <i class="fa-solid fa-coins" style="color: #db2663;"></i>--%>
<%--                                Online giá rẻ quá--%>
<%--                            </p>--%>
<%--                            <div class="gia-sale">--%>
<%--                                <p class="price-old">8.690.000 </p>--%>
<%--                                <span class="percent">-54%</span>--%>
<%--                            </div>--%>
<%--                            <strong class="price-sale">3.990.000₫</strong>--%>
<%--                            <div class="item-rating">--%>
<%--                                <p>--%>
<%--                                    <i class="fa-solid fa-star" style="color: #ea744d;"></i>--%>
<%--                                    <i class="fa-solid fa-star" style="color: #ea744d;"></i>--%>
<%--                                    <i class="fa-solid fa-star" style="color: #ea744d;"></i>--%>
<%--                                    <i class="fa-solid fa-star" style="color: #ea744d;"></i>--%>
<%--                                    <i class="fa-solid fa-star" style="color: #ededed;"></i>--%>
<%--                                </p>--%>
<%--                                <p class="item-rating-total">40</p>--%>
<%--                                <a href="" class="item-ss"><i class="fa-solid fa-code-compare"--%>
<%--                                                              style="color: #333333;"></i>--%>
<%--                                    So sánh</a>--%>
<%--                            </div>--%>
<%--                        </a>--%>
<%--                    </div>--%>
<%--                    <div class="content-may-loc-mini">--%>
<%--                        <a href="" class="deal-items">--%>
<%--                            <div class="item-label">--%>
<%--                                <span>Trả góp 0%</span>--%>
<%--                            </div>--%>
<%--                            <div class="item-img">--%>
<%--                                <img src="img/ro-sunhouse-sha88118k-10-loi-kg-210223-102600-600x600.jpg"--%>
<%--                                     alt="">--%>
<%--                            </div>--%>
<%--                            <p class="label-gia-re">--%>
<%--                                <img src="img/50x50-100x101-3.webp" alt="">--%>
<%--                                <span>GIÁ RẺ QUÁ</span>--%>
<%--                            </p>--%>
<%--                            <h3>Máy lọc nước RO Sunhouse SHA88118K</h3>--%>
<%--                            <div class="item-compare">--%>
<%--                                <span>Tủ đứng</span>--%>
<%--                                <span>Lắp đặt miễn phí</span>--%>
<%--                            </div>--%>
<%--                            <p class="item-online-gia-re">--%>
<%--                                <i class="fa-solid fa-coins" style="color: #db2663;"></i>--%>
<%--                                Online giá rẻ quá--%>
<%--                            </p>--%>
<%--                            <div class="gia-sale">--%>
<%--                                <p class="price-old">8.690.000 </p>--%>
<%--                                <span class="percent">-54%</span>--%>
<%--                            </div>--%>
<%--                            <strong class="price-sale">3.990.000₫</strong>--%>
<%--                            <div class="item-rating">--%>
<%--                                <p>--%>
<%--                                    <i class="fa-solid fa-star" style="color: #ea744d;"></i>--%>
<%--                                    <i class="fa-solid fa-star" style="color: #ea744d;"></i>--%>
<%--                                    <i class="fa-solid fa-star" style="color: #ea744d;"></i>--%>
<%--                                    <i class="fa-solid fa-star" style="color: #ea744d;"></i>--%>
<%--                                    <i class="fa-solid fa-star" style="color: #ededed;"></i>--%>
<%--                                </p>--%>
<%--                                <p class="item-rating-total">40</p>--%>
<%--                                <a href="" class="item-ss"><i class="fa-solid fa-code-compare"--%>
<%--                                                              style="color: #333333;"></i>--%>
<%--                                    So sánh</a>--%>
<%--                            </div>--%>
<%--                        </a>--%>
<%--                    </div>--%>
<%--                    <div class="content-may-loc-mini">--%>
<%--                        <a href="" class="deal-items">--%>
<%--                            <div class="item-label">--%>
<%--                                <span>Trả góp 0%</span>--%>
<%--                            </div>--%>
<%--                            <div class="item-img">--%>
<%--                                <img src="img/ro-sunhouse-sha88118k-10-loi-kg-210223-102600-600x600.jpg"--%>
<%--                                     alt="">--%>
<%--                            </div>--%>
<%--                            <p class="label-gia-re">--%>
<%--                                <img src="img/50x50-100x101-3.webp" alt="">--%>
<%--                                <span>GIÁ RẺ QUÁ</span>--%>
<%--                            </p>--%>
<%--                            <h3>Máy lọc nước RO Sunhouse SHA88118K</h3>--%>
<%--                            <div class="item-compare">--%>
<%--                                <span>Tủ đứng</span>--%>
<%--                                <span>Lắp đặt miễn phí</span>--%>
<%--                            </div>--%>
<%--                            <p class="item-online-gia-re">--%>
<%--                                <i class="fa-solid fa-coins" style="color: #db2663;"></i>--%>
<%--                                Online giá rẻ quá--%>
<%--                            </p>--%>
<%--                            <div class="gia-sale">--%>
<%--                                <p class="price-old">8.690.000 </p>--%>
<%--                                <span class="percent">-54%</span>--%>
<%--                            </div>--%>
<%--                            <strong class="price-sale">3.990.000₫</strong>--%>
<%--                            <div class="item-rating">--%>
<%--                                <p>--%>
<%--                                    <i class="fa-solid fa-star" style="color: #ea744d;"></i>--%>
<%--                                    <i class="fa-solid fa-star" style="color: #ea744d;"></i>--%>
<%--                                    <i class="fa-solid fa-star" style="color: #ea744d;"></i>--%>
<%--                                    <i class="fa-solid fa-star" style="color: #ea744d;"></i>--%>
<%--                                    <i class="fa-solid fa-star" style="color: #ededed;"></i>--%>
<%--                                </p>--%>
<%--                                <p class="item-rating-total">40</p>--%>
<%--                                <a href="" class="item-ss"><i class="fa-solid fa-code-compare"--%>
<%--                                                              style="color: #333333;"></i>--%>
<%--                                    So sánh</a>--%>
<%--                            </div>--%>
<%--                        </a>--%>
<%--                    </div>--%>
<%--                    <div class="content-may-loc-mini">--%>
<%--                        <a href="" class="deal-items">--%>
<%--                            <div class="item-label">--%>
<%--                                <span>Trả góp 0%</span>--%>
<%--                            </div>--%>
<%--                            <div class="item-img">--%>
<%--                                <img src="img/ro-sunhouse-sha88118k-10-loi-kg-210223-102600-600x600.jpg"--%>
<%--                                     alt="">--%>
<%--                            </div>--%>
<%--                            <p class="label-gia-re">--%>
<%--                                <img src="img/50x50-100x101-3.webp" alt="">--%>
<%--                                <span>GIÁ RẺ QUÁ</span>--%>
<%--                            </p>--%>
<%--                            <h3>Máy lọc nước RO Sunhouse SHA88118K</h3>--%>
<%--                            <div class="item-compare">--%>
<%--                                <span>Tủ đứng</span>--%>
<%--                                <span>Lắp đặt miễn phí</span>--%>
<%--                            </div>--%>
<%--                            <p class="item-online-gia-re">--%>
<%--                                <i class="fa-solid fa-coins" style="color: #db2663;"></i>--%>
<%--                                Online giá rẻ quá--%>
<%--                            </p>--%>
<%--                            <div class="gia-sale">--%>
<%--                                <p class="price-old">8.690.000 </p>--%>
<%--                                <span class="percent">-54%</span>--%>
<%--                            </div>--%>
<%--                            <strong class="price-sale">3.990.000₫</strong>--%>
<%--                            <div class="item-rating">--%>
<%--                                <p>--%>
<%--                                    <i class="fa-solid fa-star" style="color: #ea744d;"></i>--%>
<%--                                    <i class="fa-solid fa-star" style="color: #ea744d;"></i>--%>
<%--                                    <i class="fa-solid fa-star" style="color: #ea744d;"></i>--%>
<%--                                    <i class="fa-solid fa-star" style="color: #ea744d;"></i>--%>
<%--                                    <i class="fa-solid fa-star" style="color: #ededed;"></i>--%>
<%--                                </p>--%>
<%--                                <p class="item-rating-total">40</p>--%>
<%--                                <a href="" class="item-ss"><i class="fa-solid fa-code-compare"--%>
<%--                                                              style="color: #333333;"></i>--%>
<%--                                    So sánh</a>--%>
<%--                            </div>--%>
<%--                        </a>--%>
<%--                    </div>--%>
                </div>
            </div>
        </div>
    </div>
    <%@include file="footer.jsp" %>
</div>
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
</body>
</html>