<%@ page import="model.User" %>
<%@ page import="java.util.List" %>
<%@ page import="model.Comment" %>
<%@ page import="service.UserService" %>
<%@ page import="dao.UserDAO" %>
<%@ page import="service.ProductService" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%List<Comment> comments = (List<Comment>) request.getAttribute("comments");%>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>Quản lý bình luận</title>
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
            <div class="title">Danh Sách bình luận</div>
            <div class="row">
                <div class="col-md-12">
                    <div class="row element-button">
<%--                        <div class="col-sm-2">--%>
<%--                            <a class="btn btn-add btn-sm" href="#" title="Thêm">--%>
<%--                                <i class="fas fa-plus"></i>--%>
<%--                                Nhập hàng mới</a>--%>
<%--                        </div>--%>
                    </div>
                    <table id="table-id" class="table table-hover table-bordered">
                        <thead>
                        <tr>
                            <th scope="col">Mã bình luận</th>
                            <th scope="col">Tên người dùng</th>
                            <th scope="col">Tên sản phẩm</th>
                            <th scope="col">Nội dung</th>
                            <th scope="col">Số sao</th>
                            <th scope="col">Trạng thái</th>
                            <th scope="col">Ngày đánh giá</th>
                            <th scope="col">Chức năng</th>
                        </tr>
                        </thead>
                        <tbody>
                        <%for (Comment comment : comments) {%>
                        <tr>
                            <th scope="row"><%=comment.getId()%></th>
                            <td><%= UserService.getInstance().getFullNameById(comment.getUserId()) %></td>
                            <td><%= ProductService.getInstance().getNameById(comment.getProductId()) %></td>
                            <td><%=comment.getContents()%></td>
                            <td><span class="badge bg-success"><%=comment.getStar()%></span></td>
                            <td><%  int display = comment.getDisplay();
                                if ( display == 1) {
                            %>
                                Hiển thị
                                <%
                                } else {
                                %>
                                Ẩn
                                <%
                                    }
                                %>
                            </td>
                            <td><%=comment.getCreate_date()%></td>
                            <td>
                                <a title="Chỉnh sửa" href="editDisplay?id=<%=comment.getId()%>" class="icon-link">
                                    <i>Chỉnh sửa trạng thái</i>
                                    <i class="icon-wrapper">
                                        <i class="fa-solid fa-up-down"></i>
                                    </i>
                                </a>
                            </td>
                        </tr>
                        <%}%>
<%--                        <tr>--%>
<%--                            <th scope="row">102</th>--%>
<%--                            <td>Máy lọc nước không vỏ RO Karofi</td>--%>
<%--                            <td>10kg</td>--%>
<%--                            <td><img src="https://karofichinhhang.vn/Images/ImagesList/may-loc-nuoc-karofi-ksi80-2.png" style="max-width: 100px; max-height: 100px;"></td>--%>
<%--                            <td>40</td>--%>
<%--                            <td><span class="badge bg-success">Còn hàng</span></td>--%>
<%--                            <td>3.800.000<sup>đ</sup></td>--%>
<%--                            <td>0<span>%</span></td>--%>
<%--                            <td>Âm tủ, để bàn</td>--%>
<%--                            <td>--%>
<%--                                <a title="Xóa" href="#" class="icon-link">--%>
<%--                                    <i class="icon-wrapper">--%>
<%--                                        <i class="fas fa-trash-alt"></i> <!-- Biểu tượng thùng rác -->--%>
<%--                                    </i>--%>
<%--                                </a>--%>
<%--                                <a title="Chỉnh sửa" href="#" class="icon-link">--%>
<%--                                    <i class="icon-wrapper">--%>
<%--                                        <i class="fas fa-pen"></i> <!-- Biểu tượng thùng rác -->--%>
<%--                                    </i>--%>
<%--                                </a>--%>
<%--                                <a title="Chuyển hàng từ kho lên" href="#" class="icon-link">--%>
<%--                                    <i class="icon-wrapper">--%>
<%--                                        <i class="fas fa-arrow-up"></i> <!-- Biểu tượng thùng rác -->--%>
<%--                                    </i>--%>
<%--                                </a>--%>

<%--                            </td>--%>
<%--                        </tr>--%>
<%--                        <tr>--%>
<%--                            <th scope="row">103</th>--%>
<%--                            <td>Máy lọc nước RO Kangaroo</td>--%>
<%--                            <td>13kg</td>--%>
<%--                            <td><img src="https://kangaroo.vn/wp-content/uploads/may-loc-nuoc-ro-kg110avtu-1.jpg" style="max-width: 100px; max-height: 100px;"></td>--%>
<%--                            <td>42</td>--%>
<%--                            <td><span class="badge bg-success">Còn hàng</span></td>--%>
<%--                            <td>8.575.000<sup>đ</sup></td>--%>
<%--                            <td>0<span>%</span></td>--%>
<%--                            <td>M</td>--%>
<%--                            <td>--%>
<%--                                <a title="Xóa" href="#" class="icon-link">--%>
<%--                                    <i class="icon-wrapper">--%>
<%--                                        <i class="fas fa-trash-alt"></i> <!-- Biểu tượng thùng rác -->--%>
<%--                                    </i>--%>
<%--                                </a>--%>
<%--                                <a title="Chỉnh sửa" href="#" class="icon-link">--%>
<%--                                    <i class="icon-wrapper">--%>
<%--                                        <i class="fas fa-pen"></i> <!-- Biểu tượng thùng rác -->--%>
<%--                                    </i>--%>
<%--                                </a>--%>
<%--                                <a title="Chuyển hàng từ kho lên" href="#" class="icon-link">--%>
<%--                                    <i class="icon-wrapper">--%>
<%--                                        <i class="fas fa-arrow-up"></i> <!-- Biểu tượng thùng rác -->--%>
<%--                                    </i>--%>
<%--                                </a>--%>
<%--                            </td>--%>
<%--                        </tr>--%>
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
