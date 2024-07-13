<%@ page import="java.util.Locale" %>
<%@ page import="java.text.NumberFormat" %>
<%@ page import="model.Order" %>
<%@ page import="java.util.List" %>
<%@ page import="model.Product" %>
<%@ page import="java.util.ArrayList" %>
<%@ page import="dao.UserDAO" %>
<%@ page import="service.UserService" %>
<%@ page import="service.PageAdminService" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<% Locale locale = new Locale("vi", "VN");
    NumberFormat numberFormat = NumberFormat.getInstance(locale);
%>
<html lang="en">
<head>
    <title>Quản lý</title>
    <link rel="stylesheet" href="./css/bootstrap.min.css">
    <link rel="stylesheet" href="./css/all.min.css">
    <link rel="stylesheet" href="./css/style.css">
    <link rel="stylesheet" href="./css/home.css">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.0.0-beta3/css/all.min.css">
    <link href="DataTables/datatables.min.css" rel="stylesheet">
    <script src="DataTables/datatables.min.js"></script>
    <script src="https://code.jquery.com/jquery-3.7.1.js"
            integrity="sha256-eKhayi8LEQwp4NKxN+CfCh+3qOVUtJn3QNZ0TciWLP4=" crossorigin="anonymous"></script>
</head>
<body>
<%@include file="headerAdmin.jsp" %>
<section class="home-section">
    <div class="home-content">
        <div class="view-box">
            <div class="header-box">
                <div class="title">Thống kê</div>
                <div>
                    <div id="buttonGroup">
                        <a href="./pageAdminController" style="margin-right: 15px">Tất cả</a>
                        <a href="./pageAdminControllerToday" style="margin-right: 15px">Hôm nay</a>
                        <a href="./pageAdminControllerWeek" style="margin-right: 15px">Tuần này</a>
                        <a href="./pageAdminControllerMonth" style="margin-right: 15px">Tháng này</a>
                    </div>
                </div>
            </div>
            <div class="overview-boxes">
                <div class="box">
                    <div class="right-side">
                        <div class="box-topic">Doanh Thu</div>
                        <div class="number">
                        </div>
                    </div>
                    <i class="fa-solid fa-dollar-sign cart three"></i>
                </div>
                <div class="box">
                    <div class="right-side">
                            <a class="box-topic" href="./thongKeDonHang" style="">Đơn Hàng</a>
                    </div>
                    <i class="fa-solid fa-cart-plus cart"></i>
                </div>
                <div class="box">
                    <div class="right-side">
<%--                        <div class="box-topic">Đơn hàng bị huỷ</div>--%>
                             <a class="box-topic" href="./thongKeDonHang" style="">Đơn Hàng</a>
                    </div>
                    <i class="fa-solid fa-scroll cart four"></i>
                </div>
                <div class="box">
                    <div class="right-side">
                        <div class="box-topic">Sản phẩm bán chạy</div>
                        <div class="number">
                            <h3>1
                            </h3>
                        </div>
                        <div>
                            <a href="" style="">Xem chi tiết</a>
                        </div>
                    </div>
                    <i class="fa-solid fa-xmark cart two"></i>
                </div>
                <div class="box">
                    <div class="right-side">
                        <div class="box-topic">Sản phẩm không bán được</div>
                        <div class="number">
                            <h3>1
                            </h3>
                        </div>
                        <div>
                            <a href="" style="">Xem chi tiết</a>
                        </div>
                    </div>
                    <i class="fa-solid fa-xmark cart two"></i>
                </div>
                <div class="box">
                    <div class="right-side">
                        <div class="box-topic">Khách hàng mới</div>
                        <div class="number">
                            <h3>1
                            </h3>
                        </div>
                        <div>
                            <a href="" style="">Xem chi tiết</a>
                        </div>
                    </div>
                    <i class="fa-solid fa-xmark cart two"></i>
                </div>
                <div class="box">
                    <div class="right-side">
                        <div class="box-topic">Sản phẩm tồn kho</div>
                        <div class="number">
                            <h3>1
                            </h3>
                        </div>
                        <div>
                            <a href="" style="">Xem chi tiết</a>
                        </div>
                    </div>
                    <i class="fa-solid fa-xmark cart two"></i>
                </div>
                <div class="box">
                    <div class="right-side">
                        <div class="box-topic">Sản phẩm cần nhập kho</div>
                        <div class="number">
                            <h3>1
                            </h3>
                        </div>
                        <div>
                            <a href="" style="">Xem chi tiết</a>
                        </div>
                    </div>
                    <i class="fa-solid fa-xmark cart two"></i>
                </div>
                <div class="box">
                    <div class="right-side">
                        <div class="box-topic">Hết Hàng</div>
                        <div class="number">
                            </h3>
                        </div>
                        <div>
                            <a href="" style="">Xem chi tiết</a>
                        </div>
                    </div>
                    <i class="fa-solid fa-xmark cart two"></i>
                </div>
            </div>
        </div>
        </div>
    </div>
</section>
</body>
</html>

