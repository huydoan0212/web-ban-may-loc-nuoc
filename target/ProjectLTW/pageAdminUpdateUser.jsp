<%@ page import="model.User" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html lang="en">
<% User userEdit = (User) request.getAttribute("userEdit");%>
<% String tendangnhap = (String) request.getParameter("tendangnhap"); %>
<% String hovaten = (String) request.getParameter("hovaten"); %>
<% String sdt = (String) request.getParameter("sdt"); %>
<% String gmail = (String) request.getParameter("gmail"); %>
<% String pass = (String) request.getParameter("pass"); %>
<head>
    <meta charset="UTF-8">
    <title>Cập nhật tài khoản</title>
    <link rel="stylesheet" href="./css/bootstrap.min.css">
    <link rel="stylesheet" href="./css/all.min.css">
    <link rel="stylesheet" href="./css/style.css">
    <link rel="stylesheet" href="./css/pageAdmin_product.css">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.0.0-beta3/css/all.min.css">
</head>
<body>
<div class="sidebar">
    <div class="logo-details">
        <a href="#"><img src="https://th.bing.com/th/id/OIP.ZpscpAS7kf2k2s_W_YdeuQHaHa?pid=ImgDet&rs=1" width="240px" height="150px"></a>
    </div>
    <ul class="nav-links">
        <li>
            <a href="#" class="active">
                <i class="fa-solid fa-border-all"></i>
                <span class="links_name">Trang chủ</span>
            </a>
        </li>
        <li>
            <a href="#" class="active">
                <i class="fa-solid fa-box-open"></i>
                <span class="links_name">Quản lý kho</span>
            </a>
        </li>
        <li>
            <a href="#">
                <i class="fa-solid fa-box-archive"></i>
                <span class="links_name">Quản Lý Sản Phẩm</span>
            </a>
        </li>
        <li>
            <a href="#">
                <i class="fa-solid fa-note-sticky"></i>
                <span class="links_name">Quản Lý Đơn Hàng</span>
            </a>
        </li>
        <li>
            <a href="pageAdmin_User.jsp">
                <i class="fa-solid fa-user"></i>
                <span class="links_name">Quản Lý Tài Khoản</span>
            </a>
        </li>

        <li class="log_out">
            <a href=#">
                <i class="fa-solid fa-right-from-bracket"></i>
                <span class="links_name">Đăng xuất</span>
            </a>
        </li>
    </ul>
</div>
<section class="home-section">
    <div class="home-content">
        <div class="manager-product">
            <div class="title">Cập nhật tài khoản</div>
            <form class="row" action="adminEditUser?id=<%=userEdit.getId()%>" method="post">
                <div class="form-group col-md-4">
                    <label class="control-label">Tên tài khoản</label>
                    <input class="form-control" type="text" name="tendangnhap" value="<%=userEdit.getUserName()!=null?userEdit.getUserName():""%>" placeholder="">
                </div>
                <div class="form-group col-md-4">
                    <label class="control-label">Họ và tên</label>
                    <input class="form-control" type="text" name="hovaten" value="<%=userEdit.getFullName()!=null?userEdit.getFullName():""%>">
                </div>
                <div class="form-group col-md-4">
                    <label class="control-label">Số điện thoại</label>
                    <input class="form-control" type="text" name="sdt" value="<%=userEdit.getPhoneNumber()!=null?userEdit.getPhoneNumber():""%>">
                </div>
                <div class="form-group col-md-6 ">
                    <label class="control-label">Email</label>
                    <input class="form-control" type="email" name="gmail" value="<%=userEdit.getEmail()!=null?userEdit.getEmail():""%>">
                </div>
                <div class="form-group col-md-6">
                    <label class="control-label">Mật khẩu</label>
                    <input class="form-control" type="password" name="pass" value="<%=userEdit.getPassword()!=null?userEdit.getPassword():""%>">
                </div>
                <button class="btn btn-save" type="submit">Lưu lại</button>
            </form>
        </div>
    </div>
</section>
<script src="./js/jquery.min.js"></script>
<script type="text/javascript" charset="utf8" src=./js/bootstrap.bundle.min.js"></script>
<script src="./js/pageAdmin_main.js"></script>
</body>
</html>
