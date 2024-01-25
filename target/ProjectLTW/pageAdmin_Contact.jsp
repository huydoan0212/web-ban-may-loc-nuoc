<%@ page import="model.Contact" %>
<%@ page import="java.util.List" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%List<Contact> contacts = (List<Contact>) request.getAttribute("contacts");%>
<% String contact_input = (String) request.getParameter("contact_input"); %>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>Quản lý Phản hồi</title>
    <link rel="stylesheet" href="./css/bootstrap.min.css">
    <link rel="stylesheet" href="./css/jquery.dataTables.min.css">
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
            <div class="title">Danh Sách Phản Hồi</div>
            <div class="row">
                <div class="col-md-12">
                    <div class="row element-button">
                    </div>
                    <table id="table-id" class="table table-hover table-bordered">
                        <thead>
                        <tr>
                            <th scope="col">Mã</th>
                            <th scope="col">Họ và tên</th>
                            <th scope="col">Email</th>
                            <th scope="col">Số điện thoại</th>
                            <th scope="col">Nội dung</th>
                            <th scope="col">Nhập Nội dung</th>
                            <th scope="col">Chức năng</th>
                        </tr>
                        </thead>
                        <tbody>
                        <%for (Contact contact : contacts) {%>
                        <tr>
                            <th scope="row"><%=contact.getId()%></th>
                            <td><%=contact.getName()%></td>
                            <td><%=contact.getEmail()%></td>
                            <td><%=contact.getPhone_number()%></td>
                            <td><%=contact.getContent()%></td>
                            <form action="pageContactSend?id=<%=contact.getId()%>" accept-charset="UTF-8" method="post" >
                            <td><input type="text" name="contact_input" placeholder="Nhập nội dung phản hồi"></td>
                            <td>
                                    <button class="btn btn-save" type="submit" style="margin-left: 60px">Phản hồi</button>
                                </a>
                            </td>
                            </form>
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
<script>$("#table-id").DataTable();
</script>
</body>
</html>
