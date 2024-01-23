<%@ page import="java.util.List" %>
<%@ page import="model.Product" %>
<%@ page import="java.util.ArrayList" %>
<%@ page import="java.text.NumberFormat" %>
<%@ page import="java.util.Locale" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<% List<Product> findproduct = (List<Product>) request.getAttribute("findproduct");
    if (findproduct == null) findproduct = new ArrayList<>();
%>
<% Locale locale = new Locale("vi", "VN");
    NumberFormat numberFormat = NumberFormat.getInstance(locale);
%>
<% String error = (String) request.getAttribute("error");%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>Trang tìm kiếm</title>
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
            <span style="color: red; font-size: 20px;padding-left: 20px;"><%=(error != null && error != "") ? error : ""%></span>
<%--            <span style="color: red; font-size: 20px;padding-left: 20px;">Rất tiếc không tìm thấy sản phẩm của bạn yêu cầu</span>--%>
            <!--            Kết thúc phần lọc sản phẩm-->
            <div class="product-content">
                <div class="content-may-loc">
                    <% for(Product p : findproduct) { %>
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
                                <a href="add-card?id=<%=p.getId()%>&page=2" class="item-ss"><i class="fa-solid fa-code-compare"
                                                              style="color: #333333;"></i>
                                    Thêm vào giỏ hàng </a>
                            </div>
                        </a>
                    </div>
                    <%}%>
                </div>
            </div>
        </div>
    </div>
    <%@include file="footer.jsp" %>
</div>
</body>
</html>