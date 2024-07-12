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
<%
    Object tempObj = session.getAttribute("countOrder");
    int countOrder = 0;
    if (tempObj != null) {
        if (tempObj instanceof Integer) {
            countOrder = (Integer) tempObj;
        } else if (tempObj instanceof String) {
            countOrder = Integer.valueOf((String) tempObj);
        }
    }

    Object tempObj2 = session.getAttribute("countProductOutStock");
    int countProductOutStock = 0;
    if (tempObj2 != null) {
        if (tempObj2 instanceof Integer) {
            countProductOutStock = (Integer) tempObj2;
        } else if (tempObj2 instanceof String) {
            countProductOutStock = Integer.valueOf((String) tempObj2);
        }
    }

    Object tempObj3 = session.getAttribute("totalMoney");
    int totalMoney = 0;
    if (tempObj3 != null) {
        if (tempObj3 instanceof Integer) {
            totalMoney = (Integer) tempObj3;
        } else if (tempObj3 instanceof String) {
            totalMoney = Integer.valueOf((String) tempObj3);
        }
    }


    Object tempObj4 = session.getAttribute("countOrderCancel");
    int countOrderCancel = 0;
    if (tempObj4 != null) {
        if (tempObj4 instanceof Integer) {
            countOrderCancel = (Integer) tempObj4;
        } else if (tempObj4 instanceof String) {
            countOrderCancel = Integer.valueOf((String) tempObj4);
        }
    }

    List<Product> listProductBestSeller = (List<Product>) session.getAttribute("listProductBestSeller");
    if (listProductBestSeller == null) listProductBestSeller = new ArrayList<Product>();

%>
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
            <script>
                document.addEventListener("DOMContentLoaded", function() {
                    // Xử lý sự kiện submit của form
                    var form = document.querySelector("form");
                    form.addEventListener("submit", function(event) {
                        event.preventDefault(); // Ngăn chặn hành động mặc định của form

                        // Lấy giá trị của start-date và end-date từ form
                        var startDate = document.getElementById("start-date").value;
                        var endDate = document.getElementById("end-date").value;

                        // Định dạng lại ngày tháng
                        var formattedStartDate = formatDate(startDate);
                        var formattedEndDate = formatDate(endDate);

                        // Cập nhật nội dung của các thẻ div có class là "title"
                        var titleDivs = document.querySelectorAll(".title");
                        titleDivs[0].textContent = "Thống kê từ ngày " + formattedStartDate + " đến ngày " + formattedEndDate;
                        titleDivs[1].textContent = "Đơn hàng từ ngày  " + formattedStartDate + " đến ngày " + formattedEndDate;
                        titleDivs[2].textContent = "Sản Phẩm Bán Chạy từ ngày  " + formattedStartDate + " đến ngày " + formattedEndDate;
                    });
                    function formatDate(dateString) {
                        var date = new Date(dateString);
                        var day = date.getDate();
                        var month = date.getMonth() + 1;
                        var year = date.getFullYear();
                        return day + '/' + month + '/' + year;
                    }
                });
            </script>
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
                            <h3><%=numberFormat.format(totalMoney)%> vnđ</h3>
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
                        <div class="box-topic">Đơn hàng bị huỷ</div>
                        <div class="number">
                            <h3><%=countOrderCancel%>
                            </h3>
                        </div>
                        <div>
                            <a href="" style="">Xem chi tiết</a>
                        </div>
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
                            <h3><%=countProductOutStock%>
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
        <div class="sales-boxes">
<%--            <div class="recent-sales box">--%>
<%--                <div class="title">Đơn Hàng Gần Đây</div>--%>
<%--                <div class="row">--%>
<%--                    <div class="col-md-12">--%>
<%--                        <table id="table-id" class="table table-hover table-bordered">--%>
<%--                            <thead>--%>
<%--                            <tr>--%>
<%--                                <th scope="col">Mã đơn hàng</th>--%>
<%--                                <th scope="col">Tên Khách Hàng</th>--%>
<%--                                <th scope="col">Địa chỉ</th>--%>
<%--                                <th scope="col">Ngày đặt</th>--%>
<%--                                <th scope="col">Số điện thoại</th>--%>
<%--                                <th scope="col">Trạng thái</th>--%>
<%--                                <th scope="col">Tổng tiền</th>--%>
<%--                            </tr>--%>
<%--                            </thead>--%>
<%--                            <tbody>--%>
<%--                            <%for (Order order : listOrderRecent) {%>--%>
<%--                            <tr>--%>
<%--                                <th scope="row"><%=order.getId()%>--%>
<%--                                </th>--%>
<%--                                <td><%=UserService.getFullNameById(order.getUser_id())%>--%>
<%--                                </td>--%>
<%--                                <td><%=order.getAddress()%>--%>
<%--                                </td>--%>
<%--                                <td><%=order.getOrder_date()%>--%>
<%--                                </td>--%>
<%--                                <td><%=order.getPhone()%>--%>
<%--                                </td>--%>
<%--                                <td><%=order.getStatus()%>--%>
<%--                                </td>--%>
<%--                                <td><%=numberFormat.format(order.getTotal_money())%></td>--%>
<%--                            </tr>--%>
<%--                            <%}%>--%>
<%--                            </tbody>--%>
<%--                        </table>--%>
<%--                    </div>--%>
<%--                </div>--%>
<%--            </div>--%>
<%--            <div class="top-sales box">--%>
<%--                <div class="title">Sản Phẩm Bán Chạy</div>--%>
<%--                <div class="row">--%>
<%--                    <div class="col-md-12">--%>
<%--                        <table id="table-id-2" class="table table-hover table-bordered">--%>
<%--                            <thead>--%>
<%--                            <tr>--%>
<%--                                <th scope="col">Mã sản phẩm</th>--%>
<%--                                <th scope="col">Tên sản phẩm</th>--%>
<%--                                <th scope="col">Giá</th>--%>
<%--                                <th scope="col">Số lượng đã bán</th>--%>
<%--                            </tr>--%>
<%--                            </thead>--%>
<%--                            <tbody>--%>
<%--                            <%--%>
<%--                                for (Product product:listProductBestSeller) {--%>
<%--                            %>--%>
<%--                            <tr>--%>
<%--                                <th scope="row"><%=product.getId()%>--%>
<%--                                </th>--%>
<%--                                <td><%=product.getTitle()%>--%>
<%--                                </td>--%>
<%--                                <td><%=product.getPrice()%>--%>
<%--                                </td>--%>
<%--                                <td><%=PageAdminService.countProductSoldQuantity(product.getId(), request.getParameter("start-date"), request.getParameter("end-date"))%>--%>
<%--                                </td>--%>
<%--                                <td><%=numberFormat.format(product.getPrice())%></td>--%>
<%--                            </tr>--%>
<%--                            <%}%>--%>
<%--                            </tbody>--%>
<%--                        </table>--%>
<%--                    </div>--%>
<%--                </div>--%>
<%--            </div>--%>
        </div>
    </div>
</section>
<script>
    new DataTable('#table-id', {

    });
</script>
</body>
</html>

