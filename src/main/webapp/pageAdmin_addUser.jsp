<%@ page contentType="text/html;charset=UTF-8" language="java" %>
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
<%@include file="headerAdmin.jsp" %>



<section class="home-section">
    <div class="home-content">
        <div class="manager-product">
            <div class="title">Thêm Tài Khoản</div>
            <form class="row">
                <div class="form-group col-md-4">
                    <label class="control-label">Mã tài khoản </label>
                    <input class="form-control" type="number" placeholder="">
                </div>
                <div class="form-group col-md-4">
                    <label class="control-label">Tên người dùng</label>
                    <input class="form-control" type="text">
                </div>
                <div class="form-group col-md-4 ">
                    <label class="control-label">Phân quyền</label>
                    <select class="form-control">
                        <option>-- Chọn quyền --</option>
                        <option>Admin</option>
                        <option>User</option>
                    </select>
                </div>
                <div class="form-group col-md-6 ">
                    <label class="control-label">Email</label>
                    <input class="form-control" type="email">
                </div>
                <div class="form-group col-md-6">
                    <label class="control-label">Mật khẩu</label>
                    <input class="form-control" type="text">
                </div>
            </form>
            <button class="btn btn-save" type="button">Lưu lại</button>
            <a class="btn btn-cancel" href="pageAdmin_User.jsp">Hủy bỏ</a>
        </div>
    </div>
</section>
<script src="../../../js/jquery.min.js"></script>
<script type="text/javascript" charset="utf8" src="../../../js/bootstrap.bundle.min.js"></script>
<script src="../../../js/pageAdmin_main.js"></script>
</body>
</html>
