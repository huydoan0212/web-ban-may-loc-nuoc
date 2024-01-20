<%--
  Created by IntelliJ IDEA.
  User: admin
  Date: 20/01/2024
  Time: 10:50 AM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>Thông tin và địa chỉ</title>
    <link rel="stylesheet" href="./css/accountdetails.css">
    <script src="https://kit.fontawesome.com/3e135170bd.js" crossorigin="anonymous"></script>
</head>
<body>
<div id="main">
    <%@include file="header.jsp" %>
    <div id="content">
        <div class="container">
            <div class="display">
                <div class="toolbar">
                    <h4><span>Anh </span>ĐOÀN QUỐC HUY</h4>
                    <div class="mini-menu-toolbar">
                        <div class="order-frame">
                            <i class="fa-solid fa-rectangle-list" ></i>
                            <a href="ordered.html" class="order">Đơn hàng đã mua</a>
                        </div>
                        <div class="infor-frame">
                            <i class="fa-solid fa-address-card"></i>
                            <a href="" class="thong-tin-va-dia-chi">Thông tin và địa chỉ</a>
                        </div>
                        <div class="log-off">
                            <a href="" class="dang-xuat">Đăng xuất</a>
                        </div>
                    </div>
                </div>
                <div class="content-mini">
                    <div class="title">
                        <span class="title-ordered">Thông tin tài khoản</span>
                    </div>
                    <div class="infor-user">
                        <div class="thong-tin-ca-nhan">
                            <p>THÔNG TIN CÁ NHÂN</p>
                            <span>Anh ĐOÀN QUỐC HUY -  0586485990</span>
                        </div>
                        <div class="select-infor">
                            <div class="sex">
                                <input type="radio" id="male">
                                <span>Anh</span>
                                <input type="radio" id="female">
                                <span>Chị</span>
                            </div>
                            <div class="name-phone">
                                <div class="name">
                                    <span class="ho-va-ten-label">Họ & tên:</span>
                                    <input type="text" id="ho-va-ten">
                                </div>
                                <div class="phone">
                                    <span class="so-dien-thoai-label">Số điện thoại:</span>
                                    <input type="text" id="so-dien-thoai">
                                </div>
                            </div>
                            <div class="btn-cancel-save">
                                <a href="" class="cancel-btn">Hủy</a>
                                <a href="" class="save-btn">Lưu</a>
                            </div>
                        </div>
                    </div>
                    <div class="infor-address">
                        <div class="dia-chi-nhan-hang">
                            <p>ĐỊA CHỈ NHẬN HÀNG</p>
                        </div>
                        <div class="nhap-dia-chi">
                            <span class="tinh-label">Tỉnh:</span>
                            <select name="" class="all" id="tinh">
                                <option value="">Hồ Chí Minh</option>
                            </select>
                            <span class="dia-chi-label">Địa chỉ:</span>
                            <input type="text" placeholder="Nhập địa chỉ" id="dia-chi" class="all">
                        </div>
                        <div class="mac-dinh">
                            <input type="checkbox">
                            <span>Đặt làm địa chỉ mặc định</span>
                        </div>
                        <div class="btn-frame">
                            <a href="" class="cap-nhat">Cập nhật</a>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <%@include file="footer.jsp" %>
</div>
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
