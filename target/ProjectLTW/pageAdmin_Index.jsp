<%@ page import="java.util.Locale" %>
<%@ page import="java.text.NumberFormat" %>
<%@ page import="model.Order" %>
<%@ page import="java.util.List" %>
<%@ page import="model.Product" %>
<%@ page import="java.util.ArrayList" %>
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

    List<Order> listOrderRecent = (List<Order>) session.getAttribute("listOrderRecent");
    if (listOrderRecent == null) listOrderRecent = new ArrayList<Order>();
    System.out.println(listOrderRecent);
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

</head>
<body>
<%@include file="headerAdmin.jsp" %>
<section class="home-section">
    <div class="home-content">
        <div class="view-box">
           <div class="" style="margin-bottom: 20px">
            <form action="./pageAdminStartEnd" method="post">
                <label for="start-date">Ngày bắt đầu:</label>
                <input type="date" id="start-date" name="start-date" required>
                <br><br>
                <label for="end-date">Ngày kết thúc:</label>
                <input type="date" id="end-date" name="end-date" required>
                <br><br>
                <input type="submit" value="Thống kê">
            </form>
           </div>
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
                    // // Xử lý sự kiện click của các liên kết trong buttonGroup
                    // var buttonGroup = document.getElementById("buttonGroup");
                    // var links = buttonGroup.getElementsByTagName("a");
                    // for (var i = 0; i < links.length; i++) {
                    //     links[i].addEventListener("click", function(event) {
                    //         event.preventDefault(); // Ngăn chặn hành động mặc định của thẻ a
                    //
                    //         // Lấy nội dung của thẻ a được click
                    //         var linkText = this.textContent.trim();
                    //
                    //         // Cập nhật nội dung của div có class là "title"
                    //         var titleDivs = document.querySelectorAll(".title");
                    //         titleDivs[0].textContent = "Thống kê " + linkText;
                    //         titleDivs[1].textContent = "Đơn hàng " + linkText;
                    //         titleDivs[2].textContent = "Sản Phẩm Bán Chạy " + linkText;
                    //     });
                    // }
                    // Hàm định dạng ngày tháng
                    function formatDate(dateString) {
                        var date = new Date(dateString);
                        var day = date.getDate();
                        var month = date.getMonth() + 1; // Tháng trong JavaScript đếm từ 0
                        var year = date.getFullYear();
                        // Định dạng lại thành dạng "ngày/tháng/năm"
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
                        <div class="box-topic">Tổng Đơn Hàng</div>
                        <div class="number">
                            <h3><%=countOrder%>
                            </h3>
                        </div>
                    </div>
                    <i class="fa-solid fa-cart-plus cart"></i>
                </div>
                <div class="box">
                    <div class="right-side">
                        <div class="box-topic">Hết Hàng</div>
                        <div class="number">
                            <h3><%=countProductOutStock%>
                            </h3>
                        </div>
                    </div>
                    <i class="fa-solid fa-xmark cart two"></i>
                </div>
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
                        <div class="box-topic">Đơn Hàng Hủy</div>
                        <div class="number">
                            <h3><%=countOrderCancel%>
                            </h3>
                        </div>
                    </div>
                    <i class="fa-solid fa-scroll cart four"></i>
                </div>
            </div>
        </div>
        <div class="sales-boxes">
            <div class="recent-sales box">
                <div class="title">Đơn Hàng Gần Đây</div>
                <div class="sales-details">
                    <table class="table table-hover table-bordered">
                        <thead>
                        <tr>
                            <th scope="col">Mã đơn hàng</th>
                            <th scope="col">Địa chỉ</th>
                            <th scope="col">Ngày đặt</th>
                            <th scope="col">Số điện thoại</th>
                            <th scope="col">Tổng tiền</th>
                        </tr>
                        </thead>
                        <tbody>
                        <%for (Order order : listOrderRecent) {%>
                        <tr>
                            <th scope="row"><%=order.getId()%>
                            </th>
                            <td><%=order.getAddress()%>
                            </td>
                            <td><%=order.getOrder_date()%>
                            </td>
                            <td><%=order.getPhone()%>
                            </td>
                            <td><%=numberFormat.format(order.getTotal_money())%></td>
                        </tr>
                        <%}%>

                        </tbody>
                    </table>
                </div>
                <div class="button">
                    <a href="page-admin-checkout">Xem tất cả</a>
                </div>
            </div>
            <div class="top-sales box">
                <div class="title">Sản Phẩm Bán Chạy</div>
                <ul class="top-sales-details">
                    <%
                        for (Product product:listProductBestSeller
                        ) {

                    %>
                    <li>

                        <a href="#">

                            <span title="Máy lọc nước nóng lạnh Sanaky"
                                  class="product"><%=product.getTitle()%></span>
                        </a>
                        <span class="price"><%=product.getDiscount_price()%><sup>đ</sup></span>

                    </li>
                    <%}%>
                </ul>
            </div>
        </div>
    </div>
</section>
</body>
</html>

