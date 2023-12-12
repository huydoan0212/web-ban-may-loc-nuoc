<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>Thông tin và địa chỉ</title>
    <link rel="stylesheet" href="css/accountdetails.css">
    <script src="https://kit.fontawesome.com/3e135170bd.js" crossorigin="anonymous"></script>
</head>
<body>
<%@include file="header.jsp" %>
<div id="main">
    <div id="content">
        <div class="container">
            <div class="display">
                <div class="toolbar">
                    <h4><span>Anh </span>ĐOÀN QUỐC HUY</h4>
                    <div class="mini-menu-toolbar">
                        <div class="order-frame">
                            <i class="fa-solid fa-rectangle-list" ></i>
                            <a href="" class="order">Đơn hàng đã mua</a>
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
</div>
<%@include file="footer.jsp" %>
</body>
</html>