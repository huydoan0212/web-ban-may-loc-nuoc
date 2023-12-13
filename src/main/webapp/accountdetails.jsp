<%@ page import="model.User" %>
<%@ page import="service.UserService" %>
<% String error = (String) request.getAttribute("error");%>
<% String success = (String) request.getAttribute("success");%>
<% String userName = (String) session.getAttribute("userName");
    User user = UserService.getUserByUserName(userName);
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
            <form action="./accountDetailsController" method="post">
                <div class="display">
                    <div class="toolbar">
                        <h4><span>Khách hàng </span><%=user.getFullName()!= null? user.getFullName():""%></h4>
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
                                <a href="logOutController" class="dang-xuat">Đăng xuất</a>
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
                                <span><%=user.getFullName()!= null? user.getFullName():""%></span>
                                <span><%=user.getPhoneNumber()!= null? user.getPhoneNumber():""%></span>
                                <span><%=user.getAddress()!= null? user.getAddress():""%></span>
                            </div>
                            <div class="select-infor">
                                <div class="sex">
                                    <input type="radio" name="sex" id="male" value="1">
                                    <span>Anh</span>
                                    <input type="radio" name="sex" id="female" value="2">
                                    <span>Chị</span>
                                    <input type="radio" name="sex" id="no" value="0">
                                    <span>Khác</span>
                                </div>
                                <div class="name-phone">
                                    <div class="name">
                                        <span class="ho-va-ten-label">Họ & tên:</span>
                                        <input type="text" id="ho-va-ten" name="fullName">
                                    </div>
                                    <div class="phone">
                                        <span class="so-dien-thoai-label">Số điện thoại:</span>
                                        <input type="text" id="so-dien-thoai" name="phoneNumber">
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
                                <span class="dia-chi-label">Địa chỉ:</span>
                                <input type="text" placeholder="Nhập địa chỉ" id="dia-chi" class="all" name="address">
                            </div>
                            <div class="btn-frame">
                                <a href="" class="cap-nhat">Cập nhật</a>
                            </div>
                        </div>
                        <span style="color: red; font-size: 18px; text-align: center;"><%=(error != null && error != "") ? error : ""%></span>
                        <span style="color: green; font-size: 18px; text-align: center;"><%=(success != null && success != "") ? success : ""%>
                    </div>
                </div>
            </form>
        </div>
    </div>
</div>
<%@include file="footer.jsp" %>
</body>
</html>