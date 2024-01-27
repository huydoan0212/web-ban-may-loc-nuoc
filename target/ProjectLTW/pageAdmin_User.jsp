<%@ page contentType="text/html;charset=UTF-8" language="java" %>
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
<%@include file="headerAdmin.jsp" %>
<section class="home-section">
    <div class="home-content">
        <div class="manager-product">
            <div class="title">Danh Sách Tài Khoản</div>
            <div class="row">
                <div class="col-md-12">
                    <div class="row element-button">
                        <div class="col-sm-2">
                            <a class="btn btn-add btn-sm" href="../../../html/pageAdmin_addUser.html" title="Thêm">
                                <i class="fas fa-plus"></i>
                                Thêm tài khoản</a>
                        </div>

                    </div>
                    <table id="table-id" class="table table-hover table-bordered">
                        <thead>
                        <tr>
                            <th scope="col">Mã tài khoản</th>
                            <th scope="col">Tên người dùng</th>
                            <th scope="col">Email</th>

                            <th scope="col">Quyền</th>
                            <th scope="col">Chức năng</th>
                        </tr>
                        </thead>
                        <tbody>
                        <tr>
                            <th scope="row">21130360</th>
                            <td>Nguyễn Thanh Hoài</td>
                            <td>21130360@st.hcmuaf.edu.vn</td>

                            <td>Admin</td>
                            <td>
                                <a title="Xóa tài khoản" href="#" class="icon-link">
                                    <i class="icon-wrapper">
                                        <i class="fas fa-trash-alt"></i> <!-- Biểu tượng thùng rác -->
                                    </i>
                                </a>
                                <a title="Chỉnh sửa" href="#" class="icon-link">
                                    <i class="icon-wrapper">
                                        <i class="fas fa-pen"></i> <!-- Biểu tượng thùng rác -->
                                    </i>
                                </a>
                            </td>
                        </tr>
                        <tr>
                            <th scope="row">21130290</th>
                            <td>Nguyễn Quốc Bình</td>
                            <td>21130290@st.hcmuaf.edu.vn</td>

                            <td>User</td>
                            <td>
                                <a title="Xóa tài khoản" href="#" class="icon-link">
                                    <i class="icon-wrapper">
                                        <i class="fas fa-trash-alt"></i> <!-- Biểu tượng thùng rác -->
                                    </i>
                                </a>
                                <a title="Chỉnh sửa" href="#" class="icon-link">
                                    <i class="icon-wrapper">
                                        <i class="fas fa-pen"></i> <!-- Biểu tượng thùng rác -->
                                    </i>
                                </a>
                            </td>
                        </tr>
                        <tr>
                            <th scope="row">21130374</th>
                            <td>Đoàn Quốc Huy</td>
                            <td>21130374@st.hcmuaf.edu.vn</td>

                            <td>User</td>
                            <td>
                                <a title="Xóa tài khoản" href="#" class="icon-link">
                                    <i class="icon-wrapper">
                                        <i class="fas fa-trash-alt"></i> <!-- Biểu tượng thùng rác -->
                                    </i>
                                </a>
                                <a title="Chỉnh sửa" href="#" class="icon-link">
                                    <i class="icon-wrapper">
                                        <i class="fas fa-pen"></i> <!-- Biểu tượng thùng rác -->
                                    </i>
                                </a>
                            </td>
                        </tr>
                        </tbody>
                    </table>
                </div>
            </div>
        </div>
    </div>
</section>
<script src="../../../js/jquery.min.js"></script>
<script src="../../../js/jquery.dataTables.js"></script>
<script type="text/javascript" charset="utf8" src="../../../js/bootstrap.bundle.min.js"></script>
<script>$("#table-id").DataTable();
</script>
</body>
</html>
