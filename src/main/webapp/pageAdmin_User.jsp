<%@ page import="model.User" %>
<%@ page import="java.util.List" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%List<User> users = (List<User>) request.getAttribute("users");%>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>Quản lý tài khoản</title>
    <link rel="stylesheet" href="./css/bootstrap.min.css">
    <link rel="stylesheet" href="./css/all.min.css">
    <link rel="stylesheet" href="./css/style.css">
    <link rel="stylesheet" href="./css/pageAdmin_product.css">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.0.0-beta3/css/all.min.css">

    <style>
        .icon-wrapper {
            margin-top: 2px;
            background-color: #4a90e2;
            display: inline-block;
            margin-right: 10px;
            padding: 5px; /* Điều này tạo khoảng trắng xung quanh biểu tượng */
            border-radius: 50%; /* Để tạo biểu tượng hình tròn */
        }

        .icon-wrapper i {
            color: #ffffff; /* Màu trắng cho biểu tượng */
        }
    </style>

</head>
<body>
<div class="sidebar">
    <div class="logo-details">
        <a href="./html/pageAdmin_Index.html"><img src="https://th.bing.com/th/id/OIP.ZpscpAS7kf2k2s_W_YdeuQHaHa?pid=ImgDet&rs=1" width="240px" height="150px"></a>
    </div>
    <ul class="nav-links">
        <li>
            <a href="./html/pageAdmin_Index.html" class="active">
                <i class="fa-solid fa-border-all"></i>
                <span class="links_name">Trang chủ</span>
            </a>
        </li>
        <li>
            <a href="pageAdmin_Storage.jsp" class="active">
                <i class="fa-solid fa-box-open"></i>
                <span class="links_name">Quản lý kho</span>
            </a>
        </li>
        <li>
            <a href="./html/pageAdmin_Product.html">
                <i class="fa-solid fa-box-archive"></i>
                <span class="links_name">Quản Lý Sản Phẩm</span>
            </a>
        </li>
        <li>
            <a href="./html/pageAdmin_Checkout.html">
                <i class="fa-solid fa-note-sticky"></i>
                <span class="links_name">Quản Lý Đơn Hàng</span>
            </a>
        </li>
        <li>
            <a href="pageAdmin_User.html">
                <i class="fa-solid fa-user"></i>
                <span class="links_name">Quản Lý Tài Khoản</span>
            </a>
        </li>

        <li class="log_out">
            <a href="./html/pageAdmin_login.html">
                <i class="fa-solid fa-right-from-bracket"></i>
                <span class="links_name">Đăng xuất</span>
            </a>
        </li>
    </ul>
</div>
<section class="home-section">
    <div class="home-content">
        <div class="manager-product">
            <div class="title">Danh Sách Tài Khoản</div>
            <div class="row">
                <div class="col-md-12">
                    <div class="row element-button">
                        <div class="col-sm-2">
                            <a class="btn btn-add btn-sm" href="./pageAdmin_addUser.jsp" title="Thêm">
                                <i class="fas fa-plus"></i>
                                Thêm tài khoản</a>
                        </div>

                    </div>
                    <table id="table-id" class="table table-hover table-bordered">
                        <thead>
                        <tr>
                            <th scope="col">Mã tài khoản</th>
                            <th scope="col">Tên người dùng</th>
                            <th scope="col">Quyền</th>
                            <th scope="col">Trạng thái</th>
                            <th scope="col">Chức năng</th>
                        </tr>
                        </thead>
                        <tbody>
                        <%for (User user : users) {%>
                        <tr>
                                <div>
                                    <th scope="row"><%=user.getId()%></th>
                                    <td><%=user.getUserName()%></td>
                                    <td><%  int role = user.getRoleId();
                                        if (role == 1) {
                                        %>
                                        Admin
                                        <%
                                        } else {
                                        %>
                                        User
                                        <%
                                            }
                                        %>
                                    </td>
                                    <td>
                                        <%
                                            int status = user.getStatus();
                                            if (status == 1) {
                                        %>
                                        Hoạt động
                                        <%
                                        } else {
                                        %>
                                        Đã khóa
                                        <%
                                            }
                                        %>
                                    </td
                                </div>
                            <td>
                                <a title="Khóa tài khoản" href="editStatus?id=<%=user.getId()%>" class="icon-link">
                                    <i>Chỉnh sửa trạng thái</i>
                                    <i class="icon-wrapper">
                                        <i class="fa-solid fa-x"></i>
                                    </i>
                                </a>
                                <a title="Phân quyền" href="editRoleUser?id=<%=user.getId()%>" class="icon-link">
                                    <i>Phân quyền</i>
                                        <i class="icon-wrapper">
                                        <i class="fa-solid fa-up-down"></i>
                                    </i>
                                </a>
                                <a title="Chỉnh sửa" href="pageAdminUpdateUser?id=<%=user.getId()%>" class="icon-link">
                                    <i>Cập nhật </i>
                                    <i class="icon-wrapper">
                                        <i class="fas fa-pen"></i>
                                    </i>
                                </a>
                            </td>
                        </tr>
                        <%}%>
                        </tbody>
                    </table>
                </div>
            </div>
        </div>
    </div>
</section>
<script src="./js/jquery.min.js"></script>
<script src="./js/jquery.dataTables.js"></script>
<script type="text/javascript" charset="utf8" src="./js/bootstrap.bundle.min.js"></script>
<%--<script>$("#table-id").DataTable();--%>
</script>
</body>
</html>
