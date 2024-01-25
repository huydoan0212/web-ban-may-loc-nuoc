<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<% String name2 = (String) request.getParameter("name"); %>
<% String username2 = (String) request.getParameter("username"); %>
<% String phone2 = (String) request.getParameter("phone"); %>
<% String email2 = (String) request.getParameter("email"); %>
<% String password2 = (String) request.getParameter("password"); %>
<% String error2 = (String) request.getAttribute("error");%>
<% String role2 = (String) request.getParameter("role"); %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>Quản lý - Thêm tài khoản</title>
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
            <a href="#">
                <i class="fa-solid fa-user"></i>
                <span class="links_name">Quản Lý Tài Khoản</span>
            </a>
        </li>

        <li class="log_out">
            <a href="#">
                <i class="fa-solid fa-right-from-bracket"></i>
                <span class="links_name">Đăng xuất</span>
            </a>
        </li>
    </ul>
</div>

<section class="home-section">
    <div class="home-content">
        <div class="manager-product">
            <div class="title">Thêm Tài Khoản</div>
            <form class="row" action="pageAdminAddUser" accept-charset="UTF-8" method="post">
                <div class="form-group col-md-4">
                    <label class="control-label">Họ và tên</label>
                    <input class="form-control" type="text" name="name">
                </div>
                <div class="form-group col-md-4">
                    <label class="control-label">Email</label>
                    <input class="form-control" type="email" name="email">
                </div>
                <div class="form-group col-md-4 ">
                    <label class="control-label">Số điện thoại</label>
                    <input class="form-control" type="text" name="phone">
                </div>
                <div class="form-group col-md-6 ">
                    <label class="control-label">Tên đăng nhập</label>
                    <input class="form-control" type="text" name="username">
                </div>
                <div class="form-group col-md-6">
                    <label class="control-label">Mật khẩu</label>
                    <input class="form-control" type="password" name="password">
                </div>
                <select class="form-control" style="width:30%; height: 100% ; margin-left:20px; margin-bottom: 20px">
                    <option>-- Chọn quyền --</option>
                    <option value="1" name="role">Admin</option>
                    <option value="2" name="role">User</option>
                </select>
                <button type="submit" class="btn">Đăng Ký</button>
            </form>
<%--            <a class="btn btn-cancel" href="pageAdminAddUser">Thêm tài khoản</a>--%>
            <span style="color: red; font-size: 14px;padding-left: 20px;"><%=(error != null && error != "") ? error : ""%></span>
        </div>
    </div>
</section>
<script src="./js/jquery.min.js"></script>
<script type="text/javascript" charset="utf8" src="./js/bootstrap.bundle.min.js"></script>
<script src="./js/pageAdmin_main.js"></script>
</body>
</html>
